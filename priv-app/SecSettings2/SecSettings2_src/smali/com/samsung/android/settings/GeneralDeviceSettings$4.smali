.class Lcom/samsung/android/settings/GeneralDeviceSettings$4;
.super Ljava/lang/Object;
.source "GeneralDeviceSettings.java"

# interfaces
.implements Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/GeneralDeviceSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/GeneralDeviceSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/GeneralDeviceSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/GeneralDeviceSettings$4;->this$0:Lcom/samsung/android/settings/GeneralDeviceSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateReceived()V
    .locals 11

    iget-object v7, p0, Lcom/samsung/android/settings/GeneralDeviceSettings$4;->this$0:Lcom/samsung/android/settings/GeneralDeviceSettings;

    iget-object v7, v7, Lcom/samsung/android/settings/GeneralDeviceSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "LanguageAndInput"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/samsung/android/settings/GeneralDeviceSettings$4;->this$0:Lcom/samsung/android/settings/GeneralDeviceSettings;

    const-string/jumbo v8, "device_info_language_settings"

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/GeneralDeviceSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceScreen;

    iget-object v7, p0, Lcom/samsung/android/settings/GeneralDeviceSettings$4;->this$0:Lcom/samsung/android/settings/GeneralDeviceSettings;

    invoke-virtual {v7}, Lcom/samsung/android/settings/GeneralDeviceSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/preference/PreferenceScreen;->performClick(Landroid/preference/PreferenceScreen;)V

    iget-object v7, p0, Lcom/samsung/android/settings/GeneralDeviceSettings$4;->this$0:Lcom/samsung/android/settings/GeneralDeviceSettings;

    iget-object v7, v7, Lcom/samsung/android/settings/GeneralDeviceSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v8, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v7, "DateAndTime"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/samsung/android/settings/GeneralDeviceSettings$4;->this$0:Lcom/samsung/android/settings/GeneralDeviceSettings;

    const-string/jumbo v8, "device_info_date_time_settings"

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/GeneralDeviceSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    iget-object v7, p0, Lcom/samsung/android/settings/GeneralDeviceSettings$4;->this$0:Lcom/samsung/android/settings/GeneralDeviceSettings;

    invoke-virtual {v7}, Lcom/samsung/android/settings/GeneralDeviceSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/preference/PreferenceScreen;->performClick(Landroid/preference/PreferenceScreen;)V

    iget-object v7, p0, Lcom/samsung/android/settings/GeneralDeviceSettings$4;->this$0:Lcom/samsung/android/settings/GeneralDeviceSettings;

    iget-object v7, v7, Lcom/samsung/android/settings/GeneralDeviceSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/samsung/android/settings/GeneralDeviceSettings$4;->this$0:Lcom/samsung/android/settings/GeneralDeviceSettings;

    iget-object v7, v7, Lcom/samsung/android/settings/GeneralDeviceSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v7, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_2
    iget-object v7, p0, Lcom/samsung/android/settings/GeneralDeviceSettings$4;->this$0:Lcom/samsung/android/settings/GeneralDeviceSettings;

    iget-object v7, v7, Lcom/samsung/android/settings/GeneralDeviceSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v8, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto :goto_0

    :cond_3
    const-string/jumbo v7, "ReportDiagnosticInfoOn"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    const-string/jumbo v7, "ReportDiagnosticInfoOff"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    :cond_4
    iget-object v7, p0, Lcom/samsung/android/settings/GeneralDeviceSettings$4;->this$0:Lcom/samsung/android/settings/GeneralDeviceSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/GeneralDeviceSettings;->-get0(Lcom/samsung/android/settings/GeneralDeviceSettings;)Landroid/preference/SwitchPreference;

    move-result-object v7

    invoke-virtual {v7}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v2

    const-string/jumbo v7, "ReportDiagnosticInfoOn"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    if-eqz v2, :cond_5

    iget-object v7, p0, Lcom/samsung/android/settings/GeneralDeviceSettings$4;->this$0:Lcom/samsung/android/settings/GeneralDeviceSettings;

    iget-object v7, v7, Lcom/samsung/android/settings/GeneralDeviceSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v8, "ReportDiagnosticInfo"

    const-string/jumbo v9, "AlreadyON"

    const-string/jumbo v10, "YES"

    invoke-virtual {v7, v8, v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/samsung/android/settings/GeneralDeviceSettings$4;->this$0:Lcom/samsung/android/settings/GeneralDeviceSettings;

    iget-object v7, v7, Lcom/samsung/android/settings/GeneralDeviceSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v8, "GeneralManagement"

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/samsung/android/settings/GeneralDeviceSettings$4;->this$0:Lcom/samsung/android/settings/GeneralDeviceSettings;

    iget-object v7, v7, Lcom/samsung/android/settings/GeneralDeviceSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v8, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    :cond_5
    iget-object v7, p0, Lcom/samsung/android/settings/GeneralDeviceSettings$4;->this$0:Lcom/samsung/android/settings/GeneralDeviceSettings;

    iget-object v7, v7, Lcom/samsung/android/settings/GeneralDeviceSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v7

    if-eqz v7, :cond_6

    iget-object v7, p0, Lcom/samsung/android/settings/GeneralDeviceSettings$4;->this$0:Lcom/samsung/android/settings/GeneralDeviceSettings;

    iget-object v7, v7, Lcom/samsung/android/settings/GeneralDeviceSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v8, "ReportDiagnosticInfo"

    const-string/jumbo v9, "AlreadyON"

    const-string/jumbo v10, "NO"

    invoke-virtual {v7, v8, v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/samsung/android/settings/GeneralDeviceSettings$4;->this$0:Lcom/samsung/android/settings/GeneralDeviceSettings;

    iget-object v7, v7, Lcom/samsung/android/settings/GeneralDeviceSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v8, "GeneralManagement"

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_6
    iget-object v7, p0, Lcom/samsung/android/settings/GeneralDeviceSettings$4;->this$0:Lcom/samsung/android/settings/GeneralDeviceSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/GeneralDeviceSettings;->-get0(Lcom/samsung/android/settings/GeneralDeviceSettings;)Landroid/preference/SwitchPreference;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/android/settings/GeneralDeviceSettings$4;->this$0:Lcom/samsung/android/settings/GeneralDeviceSettings;

    invoke-virtual {v8}, Lcom/samsung/android/settings/GeneralDeviceSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    iget-object v7, p0, Lcom/samsung/android/settings/GeneralDeviceSettings$4;->this$0:Lcom/samsung/android/settings/GeneralDeviceSettings;

    iget-object v7, v7, Lcom/samsung/android/settings/GeneralDeviceSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v8, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    :cond_7
    if-eqz v2, :cond_9

    iget-object v7, p0, Lcom/samsung/android/settings/GeneralDeviceSettings$4;->this$0:Lcom/samsung/android/settings/GeneralDeviceSettings;

    iget-object v7, v7, Lcom/samsung/android/settings/GeneralDeviceSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v7

    if-eqz v7, :cond_8

    iget-object v7, p0, Lcom/samsung/android/settings/GeneralDeviceSettings$4;->this$0:Lcom/samsung/android/settings/GeneralDeviceSettings;

    iget-object v7, v7, Lcom/samsung/android/settings/GeneralDeviceSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v8, "ReportDiagnosticInfo"

    const-string/jumbo v9, "AlreadyOFF"

    const-string/jumbo v10, "NO"

    invoke-virtual {v7, v8, v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/samsung/android/settings/GeneralDeviceSettings$4;->this$0:Lcom/samsung/android/settings/GeneralDeviceSettings;

    iget-object v7, v7, Lcom/samsung/android/settings/GeneralDeviceSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v8, "GeneralManagement"

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_8
    iget-object v7, p0, Lcom/samsung/android/settings/GeneralDeviceSettings$4;->this$0:Lcom/samsung/android/settings/GeneralDeviceSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/GeneralDeviceSettings;->-get0(Lcom/samsung/android/settings/GeneralDeviceSettings;)Landroid/preference/SwitchPreference;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/android/settings/GeneralDeviceSettings$4;->this$0:Lcom/samsung/android/settings/GeneralDeviceSettings;

    invoke-virtual {v8}, Lcom/samsung/android/settings/GeneralDeviceSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    iget-object v7, p0, Lcom/samsung/android/settings/GeneralDeviceSettings$4;->this$0:Lcom/samsung/android/settings/GeneralDeviceSettings;

    iget-object v7, v7, Lcom/samsung/android/settings/GeneralDeviceSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v8, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    :cond_9
    iget-object v7, p0, Lcom/samsung/android/settings/GeneralDeviceSettings$4;->this$0:Lcom/samsung/android/settings/GeneralDeviceSettings;

    iget-object v7, v7, Lcom/samsung/android/settings/GeneralDeviceSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v8, "ReportDiagnosticInfo"

    const-string/jumbo v9, "AlreadyOFF"

    const-string/jumbo v10, "YES"

    invoke-virtual {v7, v8, v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/samsung/android/settings/GeneralDeviceSettings$4;->this$0:Lcom/samsung/android/settings/GeneralDeviceSettings;

    iget-object v7, v7, Lcom/samsung/android/settings/GeneralDeviceSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v8, "GeneralManagement"

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/samsung/android/settings/GeneralDeviceSettings$4;->this$0:Lcom/samsung/android/settings/GeneralDeviceSettings;

    iget-object v7, v7, Lcom/samsung/android/settings/GeneralDeviceSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v8, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    :cond_a
    const-string/jumbo v7, "MarketingInformation"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v7

    const-string/jumbo v8, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_SAMSUNG_MARKETING_INFO"

    invoke-virtual {v7, v8}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_b

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v7

    const-string/jumbo v8, "CscFeature_Common_ConfigMarketInfoVariation"

    invoke-virtual {v7, v8}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "Disable"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_c

    :cond_b
    iget-object v7, p0, Lcom/samsung/android/settings/GeneralDeviceSettings$4;->this$0:Lcom/samsung/android/settings/GeneralDeviceSettings;

    iget-object v7, v7, Lcom/samsung/android/settings/GeneralDeviceSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v8, "MarketingInfo"

    const-string/jumbo v9, "Available"

    const-string/jumbo v10, "no"

    invoke-virtual {v7, v8, v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/samsung/android/settings/GeneralDeviceSettings$4;->this$0:Lcom/samsung/android/settings/GeneralDeviceSettings;

    iget-object v7, v7, Lcom/samsung/android/settings/GeneralDeviceSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v8, "GeneralManagement"

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/samsung/android/settings/GeneralDeviceSettings$4;->this$0:Lcom/samsung/android/settings/GeneralDeviceSettings;

    iget-object v7, v7, Lcom/samsung/android/settings/GeneralDeviceSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v8, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    :cond_c
    iget-object v7, p0, Lcom/samsung/android/settings/GeneralDeviceSettings$4;->this$0:Lcom/samsung/android/settings/GeneralDeviceSettings;

    const-string/jumbo v8, "marketing_information"

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/GeneralDeviceSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceScreen;

    iget-object v7, p0, Lcom/samsung/android/settings/GeneralDeviceSettings$4;->this$0:Lcom/samsung/android/settings/GeneralDeviceSettings;

    invoke-virtual {v7}, Lcom/samsung/android/settings/GeneralDeviceSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/preference/PreferenceScreen;->performClick(Landroid/preference/PreferenceScreen;)V

    iget-object v7, p0, Lcom/samsung/android/settings/GeneralDeviceSettings$4;->this$0:Lcom/samsung/android/settings/GeneralDeviceSettings;

    iget-object v7, v7, Lcom/samsung/android/settings/GeneralDeviceSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v7

    if-eqz v7, :cond_d

    iget-object v7, p0, Lcom/samsung/android/settings/GeneralDeviceSettings$4;->this$0:Lcom/samsung/android/settings/GeneralDeviceSettings;

    iget-object v7, v7, Lcom/samsung/android/settings/GeneralDeviceSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v8, "MarketingInfo"

    const-string/jumbo v9, "Available"

    const-string/jumbo v10, "yes"

    invoke-virtual {v7, v8, v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/samsung/android/settings/GeneralDeviceSettings$4;->this$0:Lcom/samsung/android/settings/GeneralDeviceSettings;

    iget-object v7, v7, Lcom/samsung/android/settings/GeneralDeviceSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v7, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_d
    iget-object v7, p0, Lcom/samsung/android/settings/GeneralDeviceSettings$4;->this$0:Lcom/samsung/android/settings/GeneralDeviceSettings;

    iget-object v7, v7, Lcom/samsung/android/settings/GeneralDeviceSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v8, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    :cond_e
    const-string/jumbo v7, "Reset"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_12

    iget-object v7, p0, Lcom/samsung/android/settings/GeneralDeviceSettings$4;->this$0:Lcom/samsung/android/settings/GeneralDeviceSettings;

    iget-object v7, v7, Lcom/samsung/android/settings/GeneralDeviceSettings;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/settings/Utils;->isShopDemo(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_f

    invoke-static {}, Lcom/android/settings/Utils;->isLDUModel()Z

    move-result v7

    if-eqz v7, :cond_10

    :cond_f
    iget-object v7, p0, Lcom/samsung/android/settings/GeneralDeviceSettings$4;->this$0:Lcom/samsung/android/settings/GeneralDeviceSettings;

    iget-object v7, v7, Lcom/samsung/android/settings/GeneralDeviceSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v8, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    :cond_10
    iget-object v7, p0, Lcom/samsung/android/settings/GeneralDeviceSettings$4;->this$0:Lcom/samsung/android/settings/GeneralDeviceSettings;

    const-string/jumbo v8, "reset_preference"

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/GeneralDeviceSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/PreferenceScreen;

    iget-object v7, p0, Lcom/samsung/android/settings/GeneralDeviceSettings$4;->this$0:Lcom/samsung/android/settings/GeneralDeviceSettings;

    invoke-virtual {v7}, Lcom/samsung/android/settings/GeneralDeviceSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/preference/PreferenceScreen;->performClick(Landroid/preference/PreferenceScreen;)V

    iget-object v7, p0, Lcom/samsung/android/settings/GeneralDeviceSettings$4;->this$0:Lcom/samsung/android/settings/GeneralDeviceSettings;

    iget-object v7, v7, Lcom/samsung/android/settings/GeneralDeviceSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v7

    if-eqz v7, :cond_11

    iget-object v7, p0, Lcom/samsung/android/settings/GeneralDeviceSettings$4;->this$0:Lcom/samsung/android/settings/GeneralDeviceSettings;

    iget-object v7, v7, Lcom/samsung/android/settings/GeneralDeviceSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v7, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_11
    iget-object v7, p0, Lcom/samsung/android/settings/GeneralDeviceSettings$4;->this$0:Lcom/samsung/android/settings/GeneralDeviceSettings;

    iget-object v7, v7, Lcom/samsung/android/settings/GeneralDeviceSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v8, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    :cond_12
    const-string/jumbo v7, "SamsungAdvertisingID"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/samsung/android/settings/GeneralDeviceSettings$4;->this$0:Lcom/samsung/android/settings/GeneralDeviceSettings;

    const-string/jumbo v8, "samsung_ad_id"

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/GeneralDeviceSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iget-object v7, p0, Lcom/samsung/android/settings/GeneralDeviceSettings$4;->this$0:Lcom/samsung/android/settings/GeneralDeviceSettings;

    invoke-virtual {v7}, Lcom/samsung/android/settings/GeneralDeviceSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/preference/PreferenceScreen;->performClick(Landroid/preference/PreferenceScreen;)V

    iget-object v7, p0, Lcom/samsung/android/settings/GeneralDeviceSettings$4;->this$0:Lcom/samsung/android/settings/GeneralDeviceSettings;

    iget-object v7, v7, Lcom/samsung/android/settings/GeneralDeviceSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v7

    if-eqz v7, :cond_13

    iget-object v7, p0, Lcom/samsung/android/settings/GeneralDeviceSettings$4;->this$0:Lcom/samsung/android/settings/GeneralDeviceSettings;

    iget-object v7, v7, Lcom/samsung/android/settings/GeneralDeviceSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v7, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_13
    iget-object v7, p0, Lcom/samsung/android/settings/GeneralDeviceSettings$4;->this$0:Lcom/samsung/android/settings/GeneralDeviceSettings;

    iget-object v7, v7, Lcom/samsung/android/settings/GeneralDeviceSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v8, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0
.end method
