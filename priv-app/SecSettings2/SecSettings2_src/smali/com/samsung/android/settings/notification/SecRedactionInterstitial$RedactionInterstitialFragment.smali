.class public Lcom/samsung/android/settings/notification/SecRedactionInterstitial$RedactionInterstitialFragment;
.super Lcom/samsung/android/settings/SecSettingsPreferenceFragment;
.source "SecRedactionInterstitial.java"

# interfaces
.implements Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/notification/SecRedactionInterstitial;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RedactionInterstitialFragment"
.end annotation


# instance fields
.field private descTextView:Landroid/widget/TextView;

.field guideView:Landroid/view/View;

.field headerImgView:Landroid/widget/ImageView;

.field headerTextView:Landroid/widget/TextView;

.field private mDoneBtn:Landroid/widget/Button;

.field private mLockscreen:Lcom/android/settingslib/SecRestrictedSwitchPreference;

.field private mNotiIconsOnly:Landroid/preference/SwitchPreference;

.field private mSwitchBar:Lcom/android/settings/widget/SwitchBar;

.field view:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private addHeaderImgView()V
    .locals 3

    const-string/jumbo v1, "layout_inflater"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/notification/SecRedactionInterstitial$RedactionInterstitialFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f040178

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/notification/SecRedactionInterstitial$RedactionInterstitialFragment;->guideView:Landroid/view/View;

    iget-object v1, p0, Lcom/samsung/android/settings/notification/SecRedactionInterstitial$RedactionInterstitialFragment;->guideView:Landroid/view/View;

    const v2, 0x7f110479

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/samsung/android/settings/notification/SecRedactionInterstitial$RedactionInterstitialFragment;->headerImgView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/samsung/android/settings/notification/SecRedactionInterstitial$RedactionInterstitialFragment;->guideView:Landroid/view/View;

    const v2, 0x7f110478

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/settings/notification/SecRedactionInterstitial$RedactionInterstitialFragment;->headerTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/settings/notification/SecRedactionInterstitial$RedactionInterstitialFragment;->headerTextView:Landroid/widget/TextView;

    const v2, 0x7f0b1902

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SecRedactionInterstitial$RedactionInterstitialFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/notification/SecRedactionInterstitial$RedactionInterstitialFragment;->guideView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/samsung/android/settings/notification/SecRedactionInterstitial$RedactionInterstitialFragment;->updateHeaderImgView()V

    return-void
.end method

.method private loadFromSettings()V
    .locals 10

    const/16 v9, 0x8

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SecRedactionInterstitial$RedactionInterstitialFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "lock_screen_show_notifications"

    invoke-static {v7, v8, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-eqz v7, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SecRedactionInterstitial$RedactionInterstitialFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "lock_screen_allow_private_notifications"

    invoke-static {v7, v8, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-eqz v7, :cond_2

    const/4 v3, 0x1

    :goto_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SecRedactionInterstitial$RedactionInterstitialFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "lockscreen_minimizing_notification"

    invoke-static {v7, v8, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-eqz v7, :cond_3

    const/4 v2, 0x1

    :goto_2
    iget-object v7, p0, Lcom/samsung/android/settings/notification/SecRedactionInterstitial$RedactionInterstitialFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v7, v0}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    iget-object v7, p0, Lcom/samsung/android/settings/notification/SecRedactionInterstitial$RedactionInterstitialFragment;->mLockscreen:Lcom/android/settingslib/SecRestrictedSwitchPreference;

    if-eqz v3, :cond_0

    move v5, v6

    :cond_0
    invoke-virtual {v7, v5}, Lcom/android/settingslib/SecRestrictedSwitchPreference;->setChecked(Z)V

    iget-object v5, p0, Lcom/samsung/android/settings/notification/SecRedactionInterstitial$RedactionInterstitialFragment;->mNotiIconsOnly:Landroid/preference/SwitchPreference;

    invoke-virtual {v5, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SecRedactionInterstitial$RedactionInterstitialFragment;->getListView()Landroid/widget/ListView;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->setVisibility(I)V

    iget-object v5, p0, Lcom/samsung/android/settings/notification/SecRedactionInterstitial$RedactionInterstitialFragment;->descTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_3
    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SecRedactionInterstitial$RedactionInterstitialFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {}, Landroid/os/UserHandle;->semGetMyUserId()I

    move-result v6

    const/16 v7, 0xc

    invoke-static {v5, v7, v6}, Lcom/android/settingslib/RestrictedLockUtils;->checkIfKeyguardFeaturesDisabled(Landroid/content/Context;II)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/settings/notification/SecRedactionInterstitial$RedactionInterstitialFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v5, v4}, Lcom/android/settings/widget/SwitchBar;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SecRedactionInterstitial$RedactionInterstitialFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {}, Landroid/os/UserHandle;->semGetMyUserId()I

    move-result v6

    const/4 v7, 0x4

    invoke-static {v5, v7, v6}, Lcom/android/settingslib/RestrictedLockUtils;->checkIfKeyguardFeaturesDisabled(Landroid/content/Context;II)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v1

    iget-object v5, p0, Lcom/samsung/android/settings/notification/SecRedactionInterstitial$RedactionInterstitialFragment;->mLockscreen:Lcom/android/settingslib/SecRestrictedSwitchPreference;

    invoke-virtual {v5, v1}, Lcom/android/settingslib/SecRestrictedSwitchPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    goto :goto_2

    :cond_4
    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SecRedactionInterstitial$RedactionInterstitialFragment;->getListView()Landroid/widget/ListView;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/widget/ListView;->setVisibility(I)V

    iget-object v5, p0, Lcom/samsung/android/settings/notification/SecRedactionInterstitial$RedactionInterstitialFragment;->descTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3
.end method

.method private updateHeaderImgView()V
    .locals 5

    const/4 v0, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SecRedactionInterstitial$RedactionInterstitialFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "lock_screen_allow_private_notifications"

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SecRedactionInterstitial$RedactionInterstitialFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "lockscreen_minimizing_notification"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_1

    :goto_1
    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/samsung/android/settings/notification/SecRedactionInterstitial$RedactionInterstitialFragment;->headerImgView:Landroid/widget/ImageView;

    const v3, 0x7f020368

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_2
    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    if-eqz v1, :cond_3

    iget-object v2, p0, Lcom/samsung/android/settings/notification/SecRedactionInterstitial$RedactionInterstitialFragment;->headerImgView:Landroid/widget/ImageView;

    const v3, 0x7f020366

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    :cond_3
    iget-object v2, p0, Lcom/samsung/android/settings/notification/SecRedactionInterstitial$RedactionInterstitialFragment;->headerImgView:Landroid/widget/ImageView;

    const v3, 0x7f020367

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    const/16 v0, 0x4a

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SecRedactionInterstitial$RedactionInterstitialFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecRedactionInterstitial$RedactionInterstitialFragment;->mDoneBtn:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SecRedactionInterstitial$RedactionInterstitialFragment;->finish()V

    return-void

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0800cc

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/notification/SecRedactionInterstitial$RedactionInterstitialFragment;->addPreferencesFromResource(I)V

    const-string/jumbo v0, "set_visibility"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/notification/SecRedactionInterstitial$RedactionInterstitialFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/SecRestrictedSwitchPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/notification/SecRedactionInterstitial$RedactionInterstitialFragment;->mLockscreen:Lcom/android/settingslib/SecRestrictedSwitchPreference;

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecRedactionInterstitial$RedactionInterstitialFragment;->mLockscreen:Lcom/android/settingslib/SecRestrictedSwitchPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settingslib/SecRestrictedSwitchPreference;->setForceRecycleLayout(Z)V

    const-string/jumbo v0, "notification_icons_only"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/notification/SecRedactionInterstitial$RedactionInterstitialFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/notification/SecRedactionInterstitial$RedactionInterstitialFragment;->mNotiIconsOnly:Landroid/preference/SwitchPreference;

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecRedactionInterstitial$RedactionInterstitialFragment;->mLockscreen:Lcom/android/settingslib/SecRestrictedSwitchPreference;

    invoke-virtual {v0, p0}, Lcom/android/settingslib/SecRestrictedSwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecRedactionInterstitial$RedactionInterstitialFragment;->mNotiIconsOnly:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const v0, 0x7f040273

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/notification/SecRedactionInterstitial$RedactionInterstitialFragment;->view:Landroid/view/View;

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecRedactionInterstitial$RedactionInterstitialFragment;->view:Landroid/view/View;

    return-object v0
.end method

.method public onDestroyView()V
    .locals 1

    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onDestroyView()V

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecRedactionInterstitial$RedactionInterstitialFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecRedactionInterstitial$RedactionInterstitialFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecRedactionInterstitial$RedactionInterstitialFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->hide()V

    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object v3, p0, Lcom/samsung/android/settings/notification/SecRedactionInterstitial$RedactionInterstitialFragment;->mLockscreen:Lcom/android/settingslib/SecRestrictedSwitchPreference;

    if-ne p1, v3, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SecRedactionInterstitial$RedactionInterstitialFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "lock_screen_allow_private_notifications"

    if-nez v0, :cond_1

    :goto_0
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v1, p0, Lcom/samsung/android/settings/notification/SecRedactionInterstitial$RedactionInterstitialFragment;->mLockscreen:Lcom/android/settingslib/SecRestrictedSwitchPreference;

    invoke-virtual {v1, v0}, Lcom/android/settingslib/SecRestrictedSwitchPreference;->setChecked(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SecRedactionInterstitial$RedactionInterstitialFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SecRedactionInterstitial$RedactionInterstitialFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f1001ad

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-static {v1, v3}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    :cond_0
    :goto_1
    invoke-direct {p0}, Lcom/samsung/android/settings/notification/SecRedactionInterstitial$RedactionInterstitialFragment;->updateHeaderImgView()V

    return v2

    :cond_1
    move v1, v2

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/samsung/android/settings/notification/SecRedactionInterstitial$RedactionInterstitialFragment;->mNotiIconsOnly:Landroid/preference/SwitchPreference;

    if-ne p1, v3, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SecRedactionInterstitial$RedactionInterstitialFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "lockscreen_minimizing_notification"

    if-eqz v0, :cond_3

    :goto_2
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v1, p0, Lcom/samsung/android/settings/notification/SecRedactionInterstitial$RedactionInterstitialFragment;->mNotiIconsOnly:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SecRedactionInterstitial$RedactionInterstitialFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SecRedactionInterstitial$RedactionInterstitialFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f1001ae

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-static {v1, v3}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    goto :goto_1

    :cond_3
    move v1, v2

    goto :goto_2
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onResume()V

    invoke-direct {p0}, Lcom/samsung/android/settings/notification/SecRedactionInterstitial$RedactionInterstitialFragment;->loadFromSettings()V

    return-void
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 5

    const/16 v4, 0x8

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SecRedactionInterstitial$RedactionInterstitialFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "lock_screen_show_notifications"

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecRedactionInterstitial$RedactionInterstitialFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p2}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SecRedactionInterstitial$RedactionInterstitialFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecRedactionInterstitial$RedactionInterstitialFragment;->descTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SecRedactionInterstitial$RedactionInterstitialFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SecRedactionInterstitial$RedactionInterstitialFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1001ac

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    return-void

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SecRedactionInterstitial$RedactionInterstitialFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecRedactionInterstitial$RedactionInterstitialFragment;->descTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 7

    const v6, 0x7f1101ad

    const/4 v5, 0x0

    invoke-super {p0, p1, p2}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const v3, 0x7f110623

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/settings/widget/SwitchBar;

    iput-object v3, p0, Lcom/samsung/android/settings/notification/SecRedactionInterstitial$RedactionInterstitialFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    iget-object v3, p0, Lcom/samsung/android/settings/notification/SecRedactionInterstitial$RedactionInterstitialFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v3, p0}, Lcom/android/settings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    iget-object v3, p0, Lcom/samsung/android/settings/notification/SecRedactionInterstitial$RedactionInterstitialFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v3}, Lcom/android/settings/widget/SwitchBar;->show()V

    const v3, 0x7f1103b7

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/samsung/android/settings/notification/SecRedactionInterstitial$RedactionInterstitialFragment;->descTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/samsung/android/settings/notification/SecRedactionInterstitial$RedactionInterstitialFragment;->mDoneBtn:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SecRedactionInterstitial$RedactionInterstitialFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0718

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SecRedactionInterstitial$RedactionInterstitialFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0719

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    const-string/jumbo v3, "com.android.settings.SecSetupRedactionInterstitial$SetupEncryptionInterstitialFragment"

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SecRedactionInterstitial$RedactionInterstitialFragment;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/samsung/android/settings/notification/SecRedactionInterstitial$RedactionInterstitialFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v3, v1, v2}, Lcom/android/settings/widget/SwitchBar;->setSwitchBarMargin(II)V

    :cond_0
    const/4 v3, 0x0

    invoke-static {v3}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz v0, :cond_3

    :cond_1
    :goto_0
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SecRedactionInterstitial$RedactionInterstitialFragment;->getListView()Landroid/widget/ListView;

    move-result-object v3

    const/16 v4, 0xc

    invoke-virtual {v3, v4, v5, v5, v5}, Landroid/widget/ListView;->setPadding(IIII)V

    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/settings/notification/SecRedactionInterstitial$RedactionInterstitialFragment;->addHeaderImgView()V

    return-void

    :cond_3
    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/samsung/android/settings/notification/SecRedactionInterstitial$RedactionInterstitialFragment;->mDoneBtn:Landroid/widget/Button;

    iget-object v3, p0, Lcom/samsung/android/settings/notification/SecRedactionInterstitial$RedactionInterstitialFragment;->mDoneBtn:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method
