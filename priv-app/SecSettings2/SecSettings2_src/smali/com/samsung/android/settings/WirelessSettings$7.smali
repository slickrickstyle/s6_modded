.class Lcom/samsung/android/settings/WirelessSettings$7;
.super Ljava/lang/Object;
.source "WirelessSettings.java"

# interfaces
.implements Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/WirelessSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/WirelessSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/WirelessSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/WirelessSettings$7;->this$0:Lcom/samsung/android/settings/WirelessSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateReceived()V
    .locals 9

    const/4 v6, 0x0

    iget-object v5, p0, Lcom/samsung/android/settings/WirelessSettings$7;->this$0:Lcom/samsung/android/settings/WirelessSettings;

    iget-object v5, v5, Lcom/samsung/android/settings/WirelessSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "NearbyDeviceScanning"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/samsung/android/settings/WirelessSettings$7;->this$0:Lcom/samsung/android/settings/WirelessSettings;

    const-string/jumbo v6, "nearby_scanning_setting_category"

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/settings/WirelessSettings$7;->this$0:Lcom/samsung/android/settings/WirelessSettings;

    invoke-virtual {v6}, Lcom/samsung/android/settings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->performClick(Landroid/preference/PreferenceScreen;)V

    iget-object v5, p0, Lcom/samsung/android/settings/WirelessSettings$7;->this$0:Lcom/samsung/android/settings/WirelessSettings;

    iget-object v5, v5, Lcom/samsung/android/settings/WirelessSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/samsung/android/settings/WirelessSettings$7;->this$0:Lcom/samsung/android/settings/WirelessSettings;

    iget-object v5, v5, Lcom/samsung/android/settings/WirelessSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v5, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_0
    iget-object v5, p0, Lcom/samsung/android/settings/WirelessSettings$7;->this$0:Lcom/samsung/android/settings/WirelessSettings;

    iget-object v5, v5, Lcom/samsung/android/settings/WirelessSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string/jumbo v5, "Printing"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/samsung/android/settings/WirelessSettings$7;->this$0:Lcom/samsung/android/settings/WirelessSettings;

    const-string/jumbo v6, "print_settings"

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/settings/WirelessSettings$7;->this$0:Lcom/samsung/android/settings/WirelessSettings;

    invoke-virtual {v6}, Lcom/samsung/android/settings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->performClick(Landroid/preference/PreferenceScreen;)V

    iget-object v5, p0, Lcom/samsung/android/settings/WirelessSettings$7;->this$0:Lcom/samsung/android/settings/WirelessSettings;

    iget-object v5, v5, Lcom/samsung/android/settings/WirelessSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/samsung/android/settings/WirelessSettings$7;->this$0:Lcom/samsung/android/settings/WirelessSettings;

    iget-object v5, v5, Lcom/samsung/android/settings/WirelessSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v5, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_3
    iget-object v5, p0, Lcom/samsung/android/settings/WirelessSettings$7;->this$0:Lcom/samsung/android/settings/WirelessSettings;

    iget-object v5, v5, Lcom/samsung/android/settings/WirelessSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto :goto_0

    :cond_4
    const-string/jumbo v5, "MirrorLinkSetting"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/samsung/android/settings/WirelessSettings$7;->this$0:Lcom/samsung/android/settings/WirelessSettings;

    const-string/jumbo v6, "mirror_link_settings"

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/settings/WirelessSettings$7;->this$0:Lcom/samsung/android/settings/WirelessSettings;

    invoke-virtual {v6}, Lcom/samsung/android/settings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->performClick(Landroid/preference/PreferenceScreen;)V

    iget-object v5, p0, Lcom/samsung/android/settings/WirelessSettings$7;->this$0:Lcom/samsung/android/settings/WirelessSettings;

    iget-object v5, v5, Lcom/samsung/android/settings/WirelessSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto :goto_0

    :cond_5
    const-string/jumbo v5, "DownloadBooster"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/samsung/android/settings/WirelessSettings$7;->this$0:Lcom/samsung/android/settings/WirelessSettings;

    const-string/jumbo v6, "smart_bonding_settings"

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/settings/WirelessSettings$7;->this$0:Lcom/samsung/android/settings/WirelessSettings;

    invoke-virtual {v6}, Lcom/samsung/android/settings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->performClick(Landroid/preference/PreferenceScreen;)V

    iget-object v5, p0, Lcom/samsung/android/settings/WirelessSettings$7;->this$0:Lcom/samsung/android/settings/WirelessSettings;

    iget-object v5, v5, Lcom/samsung/android/settings/WirelessSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v5

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/samsung/android/settings/WirelessSettings$7;->this$0:Lcom/samsung/android/settings/WirelessSettings;

    iget-object v5, v5, Lcom/samsung/android/settings/WirelessSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v5, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_6
    iget-object v5, p0, Lcom/samsung/android/settings/WirelessSettings$7;->this$0:Lcom/samsung/android/settings/WirelessSettings;

    iget-object v5, v5, Lcom/samsung/android/settings/WirelessSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    :cond_7
    const-string/jumbo v5, "VPN"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    iget-object v5, p0, Lcom/samsung/android/settings/WirelessSettings$7;->this$0:Lcom/samsung/android/settings/WirelessSettings;

    const-string/jumbo v6, "vpn_settings"

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/settings/WirelessSettings$7;->this$0:Lcom/samsung/android/settings/WirelessSettings;

    invoke-virtual {v6}, Lcom/samsung/android/settings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->performClick(Landroid/preference/PreferenceScreen;)V

    iget-object v5, p0, Lcom/samsung/android/settings/WirelessSettings$7;->this$0:Lcom/samsung/android/settings/WirelessSettings;

    iget-object v5, v5, Lcom/samsung/android/settings/WirelessSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v5

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/samsung/android/settings/WirelessSettings$7;->this$0:Lcom/samsung/android/settings/WirelessSettings;

    iget-object v5, v5, Lcom/samsung/android/settings/WirelessSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v5, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_8
    iget-object v5, p0, Lcom/samsung/android/settings/WirelessSettings$7;->this$0:Lcom/samsung/android/settings/WirelessSettings;

    iget-object v5, v5, Lcom/samsung/android/settings/WirelessSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    :cond_9
    const-string/jumbo v5, "HDMIMode"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/samsung/android/settings/WirelessSettings$7;->this$0:Lcom/samsung/android/settings/WirelessSettings;

    iget-object v5, v5, Lcom/samsung/android/settings/WirelessSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamsSize()I

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/samsung/android/settings/WirelessSettings$7;->this$0:Lcom/samsung/android/settings/WirelessSettings;

    iget-object v5, v5, Lcom/samsung/android/settings/WirelessSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, -0x1

    const/4 v1, 0x0

    :goto_1
    iget-object v5, p0, Lcom/samsung/android/settings/WirelessSettings$7;->this$0:Lcom/samsung/android/settings/WirelessSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/WirelessSettings;->-get2(Lcom/samsung/android/settings/WirelessSettings;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_a

    iget-object v5, p0, Lcom/samsung/android/settings/WirelessSettings$7;->this$0:Lcom/samsung/android/settings/WirelessSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/WirelessSettings;->-get2(Lcom/samsung/android/settings/WirelessSettings;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b

    move v4, v1

    :cond_a
    if-gez v4, :cond_c

    iget-object v5, p0, Lcom/samsung/android/settings/WirelessSettings$7;->this$0:Lcom/samsung/android/settings/WirelessSettings;

    iget-object v5, v5, Lcom/samsung/android/settings/WirelessSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v6, "HDMIMode"

    const-string/jumbo v7, "Exist"

    const-string/jumbo v8, "No"

    invoke-virtual {v5, v6, v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/samsung/android/settings/WirelessSettings$7;->this$0:Lcom/samsung/android/settings/WirelessSettings;

    iget-object v5, v5, Lcom/samsung/android/settings/WirelessSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v6, "MoreConnectionSettings"

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/samsung/android/settings/WirelessSettings$7;->this$0:Lcom/samsung/android/settings/WirelessSettings;

    iget-object v5, v5, Lcom/samsung/android/settings/WirelessSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_c
    const-string/jumbo v5, "persist.service.dex.hdmi"

    const-string/jumbo v6, "0"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v4, :cond_d

    iget-object v5, p0, Lcom/samsung/android/settings/WirelessSettings$7;->this$0:Lcom/samsung/android/settings/WirelessSettings;

    iget-object v5, v5, Lcom/samsung/android/settings/WirelessSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v6, "HDMIMode"

    const-string/jumbo v7, "AlreadyApplied"

    const-string/jumbo v8, "Yes"

    invoke-virtual {v5, v6, v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/samsung/android/settings/WirelessSettings$7;->this$0:Lcom/samsung/android/settings/WirelessSettings;

    iget-object v5, v5, Lcom/samsung/android/settings/WirelessSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v6, "HDMIMode"

    invoke-virtual {v5, v6, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgResultParam(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/samsung/android/settings/WirelessSettings$7;->this$0:Lcom/samsung/android/settings/WirelessSettings;

    iget-object v5, v5, Lcom/samsung/android/settings/WirelessSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v5, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/samsung/android/settings/WirelessSettings$7;->this$0:Lcom/samsung/android/settings/WirelessSettings;

    iget-object v5, v5, Lcom/samsung/android/settings/WirelessSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    :cond_d
    const-string/jumbo v5, "persist.service.dex.hdmi"

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/samsung/android/settings/WirelessSettings$7;->this$0:Lcom/samsung/android/settings/WirelessSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/WirelessSettings;->-get3(Lcom/samsung/android/settings/WirelessSettings;)Lcom/android/settings/SecDropDownPreference;

    move-result-object v5

    if-eqz v5, :cond_e

    iget-object v5, p0, Lcom/samsung/android/settings/WirelessSettings$7;->this$0:Lcom/samsung/android/settings/WirelessSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/WirelessSettings;->-get3(Lcom/samsung/android/settings/WirelessSettings;)Lcom/android/settings/SecDropDownPreference;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/settings/SecDropDownPreference;->setValue(Ljava/lang/String;)V

    :cond_e
    iget-object v5, p0, Lcom/samsung/android/settings/WirelessSettings$7;->this$0:Lcom/samsung/android/settings/WirelessSettings;

    iget-object v5, v5, Lcom/samsung/android/settings/WirelessSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v6, "HDMIMode"

    const-string/jumbo v7, "AlreadyApplied"

    const-string/jumbo v8, "No"

    invoke-virtual {v5, v6, v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/samsung/android/settings/WirelessSettings$7;->this$0:Lcom/samsung/android/settings/WirelessSettings;

    iget-object v5, v5, Lcom/samsung/android/settings/WirelessSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v6, "HDMIMode"

    invoke-virtual {v5, v6, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgResultParam(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/samsung/android/settings/WirelessSettings$7;->this$0:Lcom/samsung/android/settings/WirelessSettings;

    iget-object v5, v5, Lcom/samsung/android/settings/WirelessSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v5, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/samsung/android/settings/WirelessSettings$7;->this$0:Lcom/samsung/android/settings/WirelessSettings;

    iget-object v5, v5, Lcom/samsung/android/settings/WirelessSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0
.end method
