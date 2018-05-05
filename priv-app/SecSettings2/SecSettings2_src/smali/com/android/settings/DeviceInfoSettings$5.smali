.class Lcom/android/settings/DeviceInfoSettings$5;
.super Ljava/lang/Object;
.source "DeviceInfoSettings.java"

# interfaces
.implements Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/DeviceInfoSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/DeviceInfoSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/DeviceInfoSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/DeviceInfoSettings$5;->this$0:Lcom/android/settings/DeviceInfoSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateReceived()V
    .locals 7

    const/4 v6, 0x0

    iget-object v3, p0, Lcom/android/settings/DeviceInfoSettings$5;->this$0:Lcom/android/settings/DeviceInfoSettings;

    invoke-static {v3}, Lcom/android/settings/DeviceInfoSettings;->-get1(Lcom/android/settings/DeviceInfoSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "AboutStatus"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/settings/DeviceInfoSettings$5;->this$0:Lcom/android/settings/DeviceInfoSettings;

    invoke-static {v3}, Lcom/android/settings/DeviceInfoSettings;->-get1(Lcom/android/settings/DeviceInfoSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v3, "Status"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/settings/DeviceInfoSettings$5;->this$0:Lcom/android/settings/DeviceInfoSettings;

    invoke-static {v3}, Lcom/android/settings/DeviceInfoSettings;->-get1(Lcom/android/settings/DeviceInfoSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto :goto_0

    :cond_2
    const-string/jumbo v3, "SIMCardStatus"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/settings/DeviceInfoSettings$5;->this$0:Lcom/android/settings/DeviceInfoSettings;

    const-string/jumbo v4, "status_info"

    invoke-virtual {v3, v4}, Lcom/android/settings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/DeviceInfoSettings$5;->this$0:Lcom/android/settings/DeviceInfoSettings;

    invoke-virtual {v4}, Lcom/android/settings/DeviceInfoSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->performClick(Landroid/preference/PreferenceScreen;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v3, "com.android.settings"

    const-string/jumbo v4, "com.android.settings.Settings$SimStatusActivity"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/settings/DeviceInfoSettings$5;->this$0:Lcom/android/settings/DeviceInfoSettings;

    invoke-virtual {v3, v0}, Lcom/android/settings/DeviceInfoSettings;->startActivity(Landroid/content/Intent;)V

    iget-object v3, p0, Lcom/android/settings/DeviceInfoSettings$5;->this$0:Lcom/android/settings/DeviceInfoSettings;

    invoke-static {v3}, Lcom/android/settings/DeviceInfoSettings;->-get1(Lcom/android/settings/DeviceInfoSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/settings/DeviceInfoSettings$5;->this$0:Lcom/android/settings/DeviceInfoSettings;

    invoke-static {v3}, Lcom/android/settings/DeviceInfoSettings;->-get1(Lcom/android/settings/DeviceInfoSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "Status"

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_3
    iget-object v3, p0, Lcom/android/settings/DeviceInfoSettings$5;->this$0:Lcom/android/settings/DeviceInfoSettings;

    invoke-static {v3}, Lcom/android/settings/DeviceInfoSettings;->-get1(Lcom/android/settings/DeviceInfoSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto :goto_0

    :cond_4
    const-string/jumbo v3, "IMEIInformation"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/android/settings/DeviceInfoSettings$5;->this$0:Lcom/android/settings/DeviceInfoSettings;

    const-string/jumbo v4, "status_info"

    invoke-virtual {v3, v4}, Lcom/android/settings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/DeviceInfoSettings$5;->this$0:Lcom/android/settings/DeviceInfoSettings;

    invoke-virtual {v4}, Lcom/android/settings/DeviceInfoSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->performClick(Landroid/preference/PreferenceScreen;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v3, "com.android.settings"

    const-string/jumbo v4, "com.android.settings.Settings$ImeiInformationActivity"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/settings/DeviceInfoSettings$5;->this$0:Lcom/android/settings/DeviceInfoSettings;

    invoke-virtual {v3, v0}, Lcom/android/settings/DeviceInfoSettings;->startActivity(Landroid/content/Intent;)V

    iget-object v3, p0, Lcom/android/settings/DeviceInfoSettings$5;->this$0:Lcom/android/settings/DeviceInfoSettings;

    invoke-static {v3}, Lcom/android/settings/DeviceInfoSettings;->-get1(Lcom/android/settings/DeviceInfoSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/settings/DeviceInfoSettings$5;->this$0:Lcom/android/settings/DeviceInfoSettings;

    invoke-static {v3}, Lcom/android/settings/DeviceInfoSettings;->-get1(Lcom/android/settings/DeviceInfoSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "IMEIInformation"

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_5
    iget-object v3, p0, Lcom/android/settings/DeviceInfoSettings$5;->this$0:Lcom/android/settings/DeviceInfoSettings;

    invoke-static {v3}, Lcom/android/settings/DeviceInfoSettings;->-get1(Lcom/android/settings/DeviceInfoSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    :cond_6
    const-string/jumbo v3, "LegalInformation"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/android/settings/DeviceInfoSettings$5;->this$0:Lcom/android/settings/DeviceInfoSettings;

    const-string/jumbo v4, "container"

    invoke-virtual {v3, v4}, Lcom/android/settings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/DeviceInfoSettings$5;->this$0:Lcom/android/settings/DeviceInfoSettings;

    invoke-virtual {v4}, Lcom/android/settings/DeviceInfoSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->performClick(Landroid/preference/PreferenceScreen;)V

    iget-object v3, p0, Lcom/android/settings/DeviceInfoSettings$5;->this$0:Lcom/android/settings/DeviceInfoSettings;

    invoke-static {v3}, Lcom/android/settings/DeviceInfoSettings;->-get1(Lcom/android/settings/DeviceInfoSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/android/settings/DeviceInfoSettings$5;->this$0:Lcom/android/settings/DeviceInfoSettings;

    invoke-static {v3}, Lcom/android/settings/DeviceInfoSettings;->-get1(Lcom/android/settings/DeviceInfoSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_7
    iget-object v3, p0, Lcom/android/settings/DeviceInfoSettings$5;->this$0:Lcom/android/settings/DeviceInfoSettings;

    invoke-static {v3}, Lcom/android/settings/DeviceInfoSettings;->-get1(Lcom/android/settings/DeviceInfoSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    :cond_8
    const-string/jumbo v3, "DeviceName"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    iget-object v3, p0, Lcom/android/settings/DeviceInfoSettings$5;->this$0:Lcom/android/settings/DeviceInfoSettings;

    invoke-static {v3}, Lcom/android/settings/DeviceInfoSettings;->-get1(Lcom/android/settings/DeviceInfoSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v3

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/android/settings/DeviceInfoSettings$5;->this$0:Lcom/android/settings/DeviceInfoSettings;

    const-string/jumbo v4, "device_name"

    invoke-virtual {v3, v4}, Lcom/android/settings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/DeviceInfoSettings$5;->this$0:Lcom/android/settings/DeviceInfoSettings;

    invoke-virtual {v4}, Lcom/android/settings/DeviceInfoSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->performClick(Landroid/preference/PreferenceScreen;)V

    iget-object v3, p0, Lcom/android/settings/DeviceInfoSettings$5;->this$0:Lcom/android/settings/DeviceInfoSettings;

    invoke-static {v3}, Lcom/android/settings/DeviceInfoSettings;->-get1(Lcom/android/settings/DeviceInfoSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_9
    iget-object v3, p0, Lcom/android/settings/DeviceInfoSettings$5;->this$0:Lcom/android/settings/DeviceInfoSettings;

    invoke-static {v3}, Lcom/android/settings/DeviceInfoSettings;->-get1(Lcom/android/settings/DeviceInfoSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    :cond_a
    const-string/jumbo v3, "DeviceNameChange"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    iget-object v3, p0, Lcom/android/settings/DeviceInfoSettings$5;->this$0:Lcom/android/settings/DeviceInfoSettings;

    invoke-static {v3}, Lcom/android/settings/DeviceInfoSettings;->-get0(Lcom/android/settings/DeviceInfoSettings;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v6, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-object v3, p0, Lcom/android/settings/DeviceInfoSettings$5;->this$0:Lcom/android/settings/DeviceInfoSettings;

    invoke-static {v3}, Lcom/android/settings/DeviceInfoSettings;->-get0(Lcom/android/settings/DeviceInfoSettings;)Landroid/os/Handler;

    move-result-object v3

    const-wide/16 v4, 0x3e8

    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    :cond_b
    const-string/jumbo v3, "ModelNumber"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    iget-object v3, p0, Lcom/android/settings/DeviceInfoSettings$5;->this$0:Lcom/android/settings/DeviceInfoSettings;

    invoke-virtual {v3}, Lcom/android/settings/DeviceInfoSettings;->getListView()Landroid/widget/ListView;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/DeviceInfoSettings$5;->this$0:Lcom/android/settings/DeviceInfoSettings;

    const-string/jumbo v5, "device_model"

    invoke-virtual {v4, v5}, Lcom/android/settings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    invoke-virtual {v4}, Landroid/preference/Preference;->getOrder()I

    move-result v4

    invoke-virtual {v3, v4, v6}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    iget-object v3, p0, Lcom/android/settings/DeviceInfoSettings$5;->this$0:Lcom/android/settings/DeviceInfoSettings;

    invoke-static {v3}, Lcom/android/settings/DeviceInfoSettings;->-get1(Lcom/android/settings/DeviceInfoSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v3

    if-eqz v3, :cond_c

    iget-object v3, p0, Lcom/android/settings/DeviceInfoSettings$5;->this$0:Lcom/android/settings/DeviceInfoSettings;

    invoke-static {v3}, Lcom/android/settings/DeviceInfoSettings;->-get1(Lcom/android/settings/DeviceInfoSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_c
    iget-object v3, p0, Lcom/android/settings/DeviceInfoSettings$5;->this$0:Lcom/android/settings/DeviceInfoSettings;

    invoke-static {v3}, Lcom/android/settings/DeviceInfoSettings;->-get1(Lcom/android/settings/DeviceInfoSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    :cond_d
    const-string/jumbo v3, "SoftwareInfo"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    iget-object v3, p0, Lcom/android/settings/DeviceInfoSettings$5;->this$0:Lcom/android/settings/DeviceInfoSettings;

    const-string/jumbo v4, "software_info"

    invoke-virtual {v3, v4}, Lcom/android/settings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    if-eqz v3, :cond_f

    iget-object v3, p0, Lcom/android/settings/DeviceInfoSettings$5;->this$0:Lcom/android/settings/DeviceInfoSettings;

    const-string/jumbo v4, "software_info"

    invoke-virtual {v3, v4}, Lcom/android/settings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/DeviceInfoSettings$5;->this$0:Lcom/android/settings/DeviceInfoSettings;

    invoke-virtual {v4}, Lcom/android/settings/DeviceInfoSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->performClick(Landroid/preference/PreferenceScreen;)V

    iget-object v3, p0, Lcom/android/settings/DeviceInfoSettings$5;->this$0:Lcom/android/settings/DeviceInfoSettings;

    invoke-static {v3}, Lcom/android/settings/DeviceInfoSettings;->-get1(Lcom/android/settings/DeviceInfoSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v3

    if-eqz v3, :cond_e

    iget-object v3, p0, Lcom/android/settings/DeviceInfoSettings$5;->this$0:Lcom/android/settings/DeviceInfoSettings;

    invoke-static {v3}, Lcom/android/settings/DeviceInfoSettings;->-get1(Lcom/android/settings/DeviceInfoSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_e
    iget-object v3, p0, Lcom/android/settings/DeviceInfoSettings$5;->this$0:Lcom/android/settings/DeviceInfoSettings;

    invoke-static {v3}, Lcom/android/settings/DeviceInfoSettings;->-get1(Lcom/android/settings/DeviceInfoSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    :cond_f
    iget-object v3, p0, Lcom/android/settings/DeviceInfoSettings$5;->this$0:Lcom/android/settings/DeviceInfoSettings;

    invoke-static {v3}, Lcom/android/settings/DeviceInfoSettings;->-get1(Lcom/android/settings/DeviceInfoSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    :cond_10
    const-string/jumbo v3, "BatteryInfo"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    iget-object v3, p0, Lcom/android/settings/DeviceInfoSettings$5;->this$0:Lcom/android/settings/DeviceInfoSettings;

    const-string/jumbo v4, "battery_info"

    invoke-virtual {v3, v4}, Lcom/android/settings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    if-eqz v3, :cond_12

    iget-object v3, p0, Lcom/android/settings/DeviceInfoSettings$5;->this$0:Lcom/android/settings/DeviceInfoSettings;

    const-string/jumbo v4, "battery_info"

    invoke-virtual {v3, v4}, Lcom/android/settings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/DeviceInfoSettings$5;->this$0:Lcom/android/settings/DeviceInfoSettings;

    invoke-virtual {v4}, Lcom/android/settings/DeviceInfoSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->performClick(Landroid/preference/PreferenceScreen;)V

    iget-object v3, p0, Lcom/android/settings/DeviceInfoSettings$5;->this$0:Lcom/android/settings/DeviceInfoSettings;

    invoke-static {v3}, Lcom/android/settings/DeviceInfoSettings;->-get1(Lcom/android/settings/DeviceInfoSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v3

    if-eqz v3, :cond_11

    iget-object v3, p0, Lcom/android/settings/DeviceInfoSettings$5;->this$0:Lcom/android/settings/DeviceInfoSettings;

    invoke-static {v3}, Lcom/android/settings/DeviceInfoSettings;->-get1(Lcom/android/settings/DeviceInfoSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_11
    iget-object v3, p0, Lcom/android/settings/DeviceInfoSettings$5;->this$0:Lcom/android/settings/DeviceInfoSettings;

    invoke-static {v3}, Lcom/android/settings/DeviceInfoSettings;->-get1(Lcom/android/settings/DeviceInfoSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    :cond_12
    iget-object v3, p0, Lcom/android/settings/DeviceInfoSettings$5;->this$0:Lcom/android/settings/DeviceInfoSettings;

    invoke-static {v3}, Lcom/android/settings/DeviceInfoSettings;->-get1(Lcom/android/settings/DeviceInfoSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    :cond_13
    const-string/jumbo v3, "MyPhoneNumber"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    iget-object v3, p0, Lcom/android/settings/DeviceInfoSettings$5;->this$0:Lcom/android/settings/DeviceInfoSettings;

    invoke-virtual {v3}, Lcom/android/settings/DeviceInfoSettings;->getListView()Landroid/widget/ListView;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/DeviceInfoSettings$5;->this$0:Lcom/android/settings/DeviceInfoSettings;

    const-string/jumbo v5, "my_phone_number"

    invoke-virtual {v4, v5}, Lcom/android/settings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    invoke-virtual {v4}, Landroid/preference/Preference;->getOrder()I

    move-result v4

    invoke-virtual {v3, v4, v6}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    iget-object v3, p0, Lcom/android/settings/DeviceInfoSettings$5;->this$0:Lcom/android/settings/DeviceInfoSettings;

    invoke-static {v3}, Lcom/android/settings/DeviceInfoSettings;->-get1(Lcom/android/settings/DeviceInfoSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v3

    if-eqz v3, :cond_14

    iget-object v3, p0, Lcom/android/settings/DeviceInfoSettings$5;->this$0:Lcom/android/settings/DeviceInfoSettings;

    invoke-static {v3}, Lcom/android/settings/DeviceInfoSettings;->-get1(Lcom/android/settings/DeviceInfoSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_14
    iget-object v3, p0, Lcom/android/settings/DeviceInfoSettings$5;->this$0:Lcom/android/settings/DeviceInfoSettings;

    invoke-static {v3}, Lcom/android/settings/DeviceInfoSettings;->-get1(Lcom/android/settings/DeviceInfoSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    :cond_15
    const-string/jumbo v3, "AboutStatusFocus"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_16

    const-string/jumbo v3, "AboutStatusFocusIPAddress"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_16

    const-string/jumbo v3, "AboutStatusFocusWiFiMACAddress"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_16

    const-string/jumbo v3, "AboutStatusFocusBluetoothAddress"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_16

    const-string/jumbo v3, "AboutStatusFocusSerialNumber"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_16

    const-string/jumbo v3, "AboutStatusFocusUptime"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_16

    const-string/jumbo v3, "AboutStatusFocusDeviceStatusValue"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_16

    const-string/jumbo v3, "AboutStatusBatteryStatus"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_16

    const-string/jumbo v3, "AboutStatusBatteryLevel"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_16

    const-string/jumbo v3, "FactoryDataReset"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_16

    const-string/jumbo v3, "AboutStatusNetwork"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_16

    const-string/jumbo v3, "AboutStatusSignalStrength"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_16

    const-string/jumbo v3, "AboutStatusMobileNetworkType"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_16

    const-string/jumbo v3, "AboutStatusServiceState"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_16

    const-string/jumbo v3, "AboutStatusRoaming"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_16

    const-string/jumbo v3, "AboutStatusMobileNetworkState"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_16

    const-string/jumbo v3, "AboutStatusERIversion"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_16

    const-string/jumbo v3, "AboutStatusIMEI"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_16

    const-string/jumbo v3, "AboutStatusIMEISV"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_16

    const-string/jumbo v3, "AboutStatusICCID"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_16

    const-string/jumbo v3, "AboutStatusIMSRegistration"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    :cond_16
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-static {}, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoUtils;->isStatusLOSmenutree()Z

    move-result v3

    if-eqz v3, :cond_18

    const-string/jumbo v3, "com.android.settings"

    const-string/jumbo v4, "com.android.settings.Settings$StatusVZWActivity"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_1
    const-string/jumbo v3, "fromBixby"

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v3, "stateId"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/settings/DeviceInfoSettings$5;->this$0:Lcom/android/settings/DeviceInfoSettings;

    invoke-virtual {v3, v0}, Lcom/android/settings/DeviceInfoSettings;->startActivity(Landroid/content/Intent;)V

    iget-object v3, p0, Lcom/android/settings/DeviceInfoSettings$5;->this$0:Lcom/android/settings/DeviceInfoSettings;

    invoke-static {v3}, Lcom/android/settings/DeviceInfoSettings;->-get1(Lcom/android/settings/DeviceInfoSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v3

    if-eqz v3, :cond_17

    iget-object v3, p0, Lcom/android/settings/DeviceInfoSettings$5;->this$0:Lcom/android/settings/DeviceInfoSettings;

    invoke-static {v3}, Lcom/android/settings/DeviceInfoSettings;->-get1(Lcom/android/settings/DeviceInfoSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "AboutStatus"

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_17
    iget-object v3, p0, Lcom/android/settings/DeviceInfoSettings$5;->this$0:Lcom/android/settings/DeviceInfoSettings;

    invoke-static {v3}, Lcom/android/settings/DeviceInfoSettings;->-get1(Lcom/android/settings/DeviceInfoSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    :cond_18
    const-string/jumbo v3, "com.android.settings"

    const-string/jumbo v4, "com.android.settings.Settings$StatusActivity"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    :cond_19
    const-string/jumbo v3, "IconGlossary"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1c

    iget-object v3, p0, Lcom/android/settings/DeviceInfoSettings$5;->this$0:Lcom/android/settings/DeviceInfoSettings;

    const-string/jumbo v4, "icon_glossary"

    invoke-virtual {v3, v4}, Lcom/android/settings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    if-eqz v3, :cond_1b

    iget-object v3, p0, Lcom/android/settings/DeviceInfoSettings$5;->this$0:Lcom/android/settings/DeviceInfoSettings;

    invoke-virtual {v3}, Lcom/android/settings/DeviceInfoSettings;->getListView()Landroid/widget/ListView;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/DeviceInfoSettings$5;->this$0:Lcom/android/settings/DeviceInfoSettings;

    const-string/jumbo v5, "my_phone_number"

    invoke-virtual {v4, v5}, Lcom/android/settings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    invoke-virtual {v4}, Landroid/preference/Preference;->getOrder()I

    move-result v4

    invoke-virtual {v3, v4, v6}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    iget-object v3, p0, Lcom/android/settings/DeviceInfoSettings$5;->this$0:Lcom/android/settings/DeviceInfoSettings;

    invoke-static {v3}, Lcom/android/settings/DeviceInfoSettings;->-get1(Lcom/android/settings/DeviceInfoSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v3

    if-eqz v3, :cond_1a

    iget-object v3, p0, Lcom/android/settings/DeviceInfoSettings$5;->this$0:Lcom/android/settings/DeviceInfoSettings;

    invoke-static {v3}, Lcom/android/settings/DeviceInfoSettings;->-get1(Lcom/android/settings/DeviceInfoSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_1a
    iget-object v3, p0, Lcom/android/settings/DeviceInfoSettings$5;->this$0:Lcom/android/settings/DeviceInfoSettings;

    invoke-static {v3}, Lcom/android/settings/DeviceInfoSettings;->-get1(Lcom/android/settings/DeviceInfoSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    :cond_1b
    iget-object v3, p0, Lcom/android/settings/DeviceInfoSettings$5;->this$0:Lcom/android/settings/DeviceInfoSettings;

    invoke-static {v3}, Lcom/android/settings/DeviceInfoSettings;->-get1(Lcom/android/settings/DeviceInfoSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    :cond_1c
    const-string/jumbo v3, "AndroidVersion"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e

    iget-object v3, p0, Lcom/android/settings/DeviceInfoSettings$5;->this$0:Lcom/android/settings/DeviceInfoSettings;

    invoke-virtual {v3}, Lcom/android/settings/DeviceInfoSettings;->getListView()Landroid/widget/ListView;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/DeviceInfoSettings$5;->this$0:Lcom/android/settings/DeviceInfoSettings;

    const-string/jumbo v5, "firmware_version"

    invoke-virtual {v4, v5}, Lcom/android/settings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    invoke-virtual {v4}, Landroid/preference/Preference;->getOrder()I

    move-result v4

    invoke-virtual {v3, v4, v6}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    iget-object v3, p0, Lcom/android/settings/DeviceInfoSettings$5;->this$0:Lcom/android/settings/DeviceInfoSettings;

    invoke-static {v3}, Lcom/android/settings/DeviceInfoSettings;->-get1(Lcom/android/settings/DeviceInfoSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v3

    if-eqz v3, :cond_1d

    iget-object v3, p0, Lcom/android/settings/DeviceInfoSettings$5;->this$0:Lcom/android/settings/DeviceInfoSettings;

    invoke-static {v3}, Lcom/android/settings/DeviceInfoSettings;->-get1(Lcom/android/settings/DeviceInfoSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_1d
    iget-object v3, p0, Lcom/android/settings/DeviceInfoSettings$5;->this$0:Lcom/android/settings/DeviceInfoSettings;

    invoke-static {v3}, Lcom/android/settings/DeviceInfoSettings;->-get1(Lcom/android/settings/DeviceInfoSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    :cond_1e
    const-string/jumbo v3, "SamsungExperienceVersion"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_20

    iget-object v3, p0, Lcom/android/settings/DeviceInfoSettings$5;->this$0:Lcom/android/settings/DeviceInfoSettings;

    invoke-virtual {v3}, Lcom/android/settings/DeviceInfoSettings;->getListView()Landroid/widget/ListView;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/DeviceInfoSettings$5;->this$0:Lcom/android/settings/DeviceInfoSettings;

    const-string/jumbo v5, "samsung_experience_version"

    invoke-virtual {v4, v5}, Lcom/android/settings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    invoke-virtual {v4}, Landroid/preference/Preference;->getOrder()I

    move-result v4

    invoke-virtual {v3, v4, v6}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    iget-object v3, p0, Lcom/android/settings/DeviceInfoSettings$5;->this$0:Lcom/android/settings/DeviceInfoSettings;

    invoke-static {v3}, Lcom/android/settings/DeviceInfoSettings;->-get1(Lcom/android/settings/DeviceInfoSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v3

    if-eqz v3, :cond_1f

    iget-object v3, p0, Lcom/android/settings/DeviceInfoSettings$5;->this$0:Lcom/android/settings/DeviceInfoSettings;

    invoke-static {v3}, Lcom/android/settings/DeviceInfoSettings;->-get1(Lcom/android/settings/DeviceInfoSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_1f
    iget-object v3, p0, Lcom/android/settings/DeviceInfoSettings$5;->this$0:Lcom/android/settings/DeviceInfoSettings;

    invoke-static {v3}, Lcom/android/settings/DeviceInfoSettings;->-get1(Lcom/android/settings/DeviceInfoSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    :cond_20
    const-string/jumbo v3, "AndroidSecurityPatchLevel"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_22

    iget-object v3, p0, Lcom/android/settings/DeviceInfoSettings$5;->this$0:Lcom/android/settings/DeviceInfoSettings;

    invoke-virtual {v3}, Lcom/android/settings/DeviceInfoSettings;->getListView()Landroid/widget/ListView;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/DeviceInfoSettings$5;->this$0:Lcom/android/settings/DeviceInfoSettings;

    const-string/jumbo v5, "security_patch"

    invoke-virtual {v4, v5}, Lcom/android/settings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    invoke-virtual {v4}, Landroid/preference/Preference;->getOrder()I

    move-result v4

    invoke-virtual {v3, v4, v6}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    iget-object v3, p0, Lcom/android/settings/DeviceInfoSettings$5;->this$0:Lcom/android/settings/DeviceInfoSettings;

    invoke-static {v3}, Lcom/android/settings/DeviceInfoSettings;->-get1(Lcom/android/settings/DeviceInfoSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v3

    if-eqz v3, :cond_21

    iget-object v3, p0, Lcom/android/settings/DeviceInfoSettings$5;->this$0:Lcom/android/settings/DeviceInfoSettings;

    invoke-static {v3}, Lcom/android/settings/DeviceInfoSettings;->-get1(Lcom/android/settings/DeviceInfoSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_21
    iget-object v3, p0, Lcom/android/settings/DeviceInfoSettings$5;->this$0:Lcom/android/settings/DeviceInfoSettings;

    invoke-static {v3}, Lcom/android/settings/DeviceInfoSettings;->-get1(Lcom/android/settings/DeviceInfoSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    :cond_22
    const-string/jumbo v3, "BasebandVersion"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_24

    iget-object v3, p0, Lcom/android/settings/DeviceInfoSettings$5;->this$0:Lcom/android/settings/DeviceInfoSettings;

    invoke-virtual {v3}, Lcom/android/settings/DeviceInfoSettings;->getListView()Landroid/widget/ListView;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/DeviceInfoSettings$5;->this$0:Lcom/android/settings/DeviceInfoSettings;

    const-string/jumbo v5, "baseband_version"

    invoke-virtual {v4, v5}, Lcom/android/settings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    invoke-virtual {v4}, Landroid/preference/Preference;->getOrder()I

    move-result v4

    invoke-virtual {v3, v4, v6}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    iget-object v3, p0, Lcom/android/settings/DeviceInfoSettings$5;->this$0:Lcom/android/settings/DeviceInfoSettings;

    invoke-static {v3}, Lcom/android/settings/DeviceInfoSettings;->-get1(Lcom/android/settings/DeviceInfoSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v3

    if-eqz v3, :cond_23

    iget-object v3, p0, Lcom/android/settings/DeviceInfoSettings$5;->this$0:Lcom/android/settings/DeviceInfoSettings;

    invoke-static {v3}, Lcom/android/settings/DeviceInfoSettings;->-get1(Lcom/android/settings/DeviceInfoSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_23
    iget-object v3, p0, Lcom/android/settings/DeviceInfoSettings$5;->this$0:Lcom/android/settings/DeviceInfoSettings;

    invoke-static {v3}, Lcom/android/settings/DeviceInfoSettings;->-get1(Lcom/android/settings/DeviceInfoSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    :cond_24
    const-string/jumbo v3, "KernelVersion"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_26

    iget-object v3, p0, Lcom/android/settings/DeviceInfoSettings$5;->this$0:Lcom/android/settings/DeviceInfoSettings;

    invoke-virtual {v3}, Lcom/android/settings/DeviceInfoSettings;->getListView()Landroid/widget/ListView;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/DeviceInfoSettings$5;->this$0:Lcom/android/settings/DeviceInfoSettings;

    const-string/jumbo v5, "kernel_version"

    invoke-virtual {v4, v5}, Lcom/android/settings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    invoke-virtual {v4}, Landroid/preference/Preference;->getOrder()I

    move-result v4

    invoke-virtual {v3, v4, v6}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    iget-object v3, p0, Lcom/android/settings/DeviceInfoSettings$5;->this$0:Lcom/android/settings/DeviceInfoSettings;

    invoke-static {v3}, Lcom/android/settings/DeviceInfoSettings;->-get1(Lcom/android/settings/DeviceInfoSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v3

    if-eqz v3, :cond_25

    iget-object v3, p0, Lcom/android/settings/DeviceInfoSettings$5;->this$0:Lcom/android/settings/DeviceInfoSettings;

    invoke-static {v3}, Lcom/android/settings/DeviceInfoSettings;->-get1(Lcom/android/settings/DeviceInfoSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_25
    iget-object v3, p0, Lcom/android/settings/DeviceInfoSettings$5;->this$0:Lcom/android/settings/DeviceInfoSettings;

    invoke-static {v3}, Lcom/android/settings/DeviceInfoSettings;->-get1(Lcom/android/settings/DeviceInfoSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    :cond_26
    const-string/jumbo v3, "BuildNumber"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_28

    iget-object v3, p0, Lcom/android/settings/DeviceInfoSettings$5;->this$0:Lcom/android/settings/DeviceInfoSettings;

    invoke-virtual {v3}, Lcom/android/settings/DeviceInfoSettings;->getListView()Landroid/widget/ListView;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/DeviceInfoSettings$5;->this$0:Lcom/android/settings/DeviceInfoSettings;

    const-string/jumbo v5, "build_number"

    invoke-virtual {v4, v5}, Lcom/android/settings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    invoke-virtual {v4}, Landroid/preference/Preference;->getOrder()I

    move-result v4

    invoke-virtual {v3, v4, v6}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    iget-object v3, p0, Lcom/android/settings/DeviceInfoSettings$5;->this$0:Lcom/android/settings/DeviceInfoSettings;

    invoke-static {v3}, Lcom/android/settings/DeviceInfoSettings;->-get1(Lcom/android/settings/DeviceInfoSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v3

    if-eqz v3, :cond_27

    iget-object v3, p0, Lcom/android/settings/DeviceInfoSettings$5;->this$0:Lcom/android/settings/DeviceInfoSettings;

    invoke-static {v3}, Lcom/android/settings/DeviceInfoSettings;->-get1(Lcom/android/settings/DeviceInfoSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_27
    iget-object v3, p0, Lcom/android/settings/DeviceInfoSettings$5;->this$0:Lcom/android/settings/DeviceInfoSettings;

    invoke-static {v3}, Lcom/android/settings/DeviceInfoSettings;->-get1(Lcom/android/settings/DeviceInfoSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    :cond_28
    const-string/jumbo v3, "SEforAndroidStatus"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    iget-object v3, p0, Lcom/android/settings/DeviceInfoSettings$5;->this$0:Lcom/android/settings/DeviceInfoSettings;

    invoke-virtual {v3}, Lcom/android/settings/DeviceInfoSettings;->getListView()Landroid/widget/ListView;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/DeviceInfoSettings$5;->this$0:Lcom/android/settings/DeviceInfoSettings;

    const-string/jumbo v5, "selinux_status"

    invoke-virtual {v4, v5}, Lcom/android/settings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    invoke-virtual {v4}, Landroid/preference/Preference;->getOrder()I

    move-result v4

    invoke-virtual {v3, v4, v6}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    iget-object v3, p0, Lcom/android/settings/DeviceInfoSettings$5;->this$0:Lcom/android/settings/DeviceInfoSettings;

    invoke-static {v3}, Lcom/android/settings/DeviceInfoSettings;->-get1(Lcom/android/settings/DeviceInfoSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v3

    if-eqz v3, :cond_29

    iget-object v3, p0, Lcom/android/settings/DeviceInfoSettings$5;->this$0:Lcom/android/settings/DeviceInfoSettings;

    invoke-static {v3}, Lcom/android/settings/DeviceInfoSettings;->-get1(Lcom/android/settings/DeviceInfoSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_29
    iget-object v3, p0, Lcom/android/settings/DeviceInfoSettings$5;->this$0:Lcom/android/settings/DeviceInfoSettings;

    invoke-static {v3}, Lcom/android/settings/DeviceInfoSettings;->-get1(Lcom/android/settings/DeviceInfoSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    :cond_2a
    const-string/jumbo v3, "SecuritySoftwareVersion"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2c

    iget-object v3, p0, Lcom/android/settings/DeviceInfoSettings$5;->this$0:Lcom/android/settings/DeviceInfoSettings;

    invoke-virtual {v3}, Lcom/android/settings/DeviceInfoSettings;->getListView()Landroid/widget/ListView;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/DeviceInfoSettings$5;->this$0:Lcom/android/settings/DeviceInfoSettings;

    const-string/jumbo v5, "security_sw_version"

    invoke-virtual {v4, v5}, Lcom/android/settings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    invoke-virtual {v4}, Landroid/preference/Preference;->getOrder()I

    move-result v4

    invoke-virtual {v3, v4, v6}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    iget-object v3, p0, Lcom/android/settings/DeviceInfoSettings$5;->this$0:Lcom/android/settings/DeviceInfoSettings;

    invoke-static {v3}, Lcom/android/settings/DeviceInfoSettings;->-get1(Lcom/android/settings/DeviceInfoSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v3

    if-eqz v3, :cond_2b

    iget-object v3, p0, Lcom/android/settings/DeviceInfoSettings$5;->this$0:Lcom/android/settings/DeviceInfoSettings;

    invoke-static {v3}, Lcom/android/settings/DeviceInfoSettings;->-get1(Lcom/android/settings/DeviceInfoSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_2b
    iget-object v3, p0, Lcom/android/settings/DeviceInfoSettings$5;->this$0:Lcom/android/settings/DeviceInfoSettings;

    invoke-static {v3}, Lcom/android/settings/DeviceInfoSettings;->-get1(Lcom/android/settings/DeviceInfoSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    :cond_2c
    const-string/jumbo v3, "KnoxVersion"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2e

    iget-object v3, p0, Lcom/android/settings/DeviceInfoSettings$5;->this$0:Lcom/android/settings/DeviceInfoSettings;

    invoke-virtual {v3}, Lcom/android/settings/DeviceInfoSettings;->getListView()Landroid/widget/ListView;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/DeviceInfoSettings$5;->this$0:Lcom/android/settings/DeviceInfoSettings;

    const-string/jumbo v5, "knox_version"

    invoke-virtual {v4, v5}, Lcom/android/settings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    invoke-virtual {v4}, Landroid/preference/Preference;->getOrder()I

    move-result v4

    invoke-virtual {v3, v4, v6}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    iget-object v3, p0, Lcom/android/settings/DeviceInfoSettings$5;->this$0:Lcom/android/settings/DeviceInfoSettings;

    invoke-static {v3}, Lcom/android/settings/DeviceInfoSettings;->-get1(Lcom/android/settings/DeviceInfoSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v3

    if-eqz v3, :cond_2d

    iget-object v3, p0, Lcom/android/settings/DeviceInfoSettings$5;->this$0:Lcom/android/settings/DeviceInfoSettings;

    invoke-static {v3}, Lcom/android/settings/DeviceInfoSettings;->-get1(Lcom/android/settings/DeviceInfoSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_2d
    iget-object v3, p0, Lcom/android/settings/DeviceInfoSettings$5;->this$0:Lcom/android/settings/DeviceInfoSettings;

    invoke-static {v3}, Lcom/android/settings/DeviceInfoSettings;->-get1(Lcom/android/settings/DeviceInfoSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    :cond_2e
    const-string/jumbo v3, "ServiceProviderSWver"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/DeviceInfoSettings$5;->this$0:Lcom/android/settings/DeviceInfoSettings;

    iget-object v3, v3, Lcom/android/settings/DeviceInfoSettings;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "com.samsung.android.app.omcagent"

    invoke-static {v3, v4}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_30

    iget-object v3, p0, Lcom/android/settings/DeviceInfoSettings$5;->this$0:Lcom/android/settings/DeviceInfoSettings;

    invoke-virtual {v3}, Lcom/android/settings/DeviceInfoSettings;->getListView()Landroid/widget/ListView;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/DeviceInfoSettings$5;->this$0:Lcom/android/settings/DeviceInfoSettings;

    const-string/jumbo v5, "omc_version"

    invoke-virtual {v4, v5}, Lcom/android/settings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    invoke-virtual {v4}, Landroid/preference/Preference;->getOrder()I

    move-result v4

    invoke-virtual {v3, v4, v6}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    iget-object v3, p0, Lcom/android/settings/DeviceInfoSettings$5;->this$0:Lcom/android/settings/DeviceInfoSettings;

    invoke-static {v3}, Lcom/android/settings/DeviceInfoSettings;->-get1(Lcom/android/settings/DeviceInfoSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v3

    if-eqz v3, :cond_2f

    iget-object v3, p0, Lcom/android/settings/DeviceInfoSettings$5;->this$0:Lcom/android/settings/DeviceInfoSettings;

    invoke-static {v3}, Lcom/android/settings/DeviceInfoSettings;->-get1(Lcom/android/settings/DeviceInfoSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "OMCPackage"

    const-string/jumbo v5, "Available"

    const-string/jumbo v6, "yes"

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/settings/DeviceInfoSettings$5;->this$0:Lcom/android/settings/DeviceInfoSettings;

    invoke-static {v3}, Lcom/android/settings/DeviceInfoSettings;->-get1(Lcom/android/settings/DeviceInfoSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_2f
    iget-object v3, p0, Lcom/android/settings/DeviceInfoSettings$5;->this$0:Lcom/android/settings/DeviceInfoSettings;

    invoke-static {v3}, Lcom/android/settings/DeviceInfoSettings;->-get1(Lcom/android/settings/DeviceInfoSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    :cond_30
    iget-object v3, p0, Lcom/android/settings/DeviceInfoSettings$5;->this$0:Lcom/android/settings/DeviceInfoSettings;

    invoke-static {v3}, Lcom/android/settings/DeviceInfoSettings;->-get1(Lcom/android/settings/DeviceInfoSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v3

    if-eqz v3, :cond_31

    iget-object v3, p0, Lcom/android/settings/DeviceInfoSettings$5;->this$0:Lcom/android/settings/DeviceInfoSettings;

    invoke-static {v3}, Lcom/android/settings/DeviceInfoSettings;->-get1(Lcom/android/settings/DeviceInfoSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "OMCPackage"

    const-string/jumbo v5, "Available"

    const-string/jumbo v6, "no"

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/settings/DeviceInfoSettings$5;->this$0:Lcom/android/settings/DeviceInfoSettings;

    invoke-static {v3}, Lcom/android/settings/DeviceInfoSettings;->-get1(Lcom/android/settings/DeviceInfoSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_31
    iget-object v3, p0, Lcom/android/settings/DeviceInfoSettings$5;->this$0:Lcom/android/settings/DeviceInfoSettings;

    invoke-static {v3}, Lcom/android/settings/DeviceInfoSettings;->-get1(Lcom/android/settings/DeviceInfoSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0
.end method
