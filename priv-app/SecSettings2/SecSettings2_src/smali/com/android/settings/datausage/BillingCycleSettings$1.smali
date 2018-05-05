.class Lcom/android/settings/datausage/BillingCycleSettings$1;
.super Ljava/lang/Object;
.source "BillingCycleSettings.java"

# interfaces
.implements Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/datausage/BillingCycleSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/datausage/BillingCycleSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/datausage/BillingCycleSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/datausage/BillingCycleSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateReceived()V
    .locals 5

    iget-object v1, p0, Lcom/android/settings/datausage/BillingCycleSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleSettings;

    invoke-static {v1}, Lcom/android/settings/datausage/BillingCycleSettings;->-get3(Lcom/android/settings/datausage/BillingCycleSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "SetBillingCycle"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/datausage/BillingCycleSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleSettings;

    invoke-static {v1}, Lcom/android/settings/datausage/BillingCycleSettings;->-get0(Lcom/android/settings/datausage/BillingCycleSettings;)Landroid/preference/Preference;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/datausage/BillingCycleSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleSettings;

    invoke-virtual {v2}, Lcom/android/settings/datausage/BillingCycleSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->performClick(Landroid/preference/PreferenceScreen;)V

    iget-object v1, p0, Lcom/android/settings/datausage/BillingCycleSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleSettings;

    invoke-static {v1}, Lcom/android/settings/datausage/BillingCycleSettings;->-get3(Lcom/android/settings/datausage/BillingCycleSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/datausage/BillingCycleSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleSettings;

    invoke-static {v1}, Lcom/android/settings/datausage/BillingCycleSettings;->-get3(Lcom/android/settings/datausage/BillingCycleSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lcom/android/settings/datausage/BillingCycleSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleSettings;

    invoke-static {v1}, Lcom/android/settings/datausage/BillingCycleSettings;->-get3(Lcom/android/settings/datausage/BillingCycleSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string/jumbo v1, "SetDataWarning"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/settings/datausage/BillingCycleSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleSettings;

    invoke-static {v1}, Lcom/android/settings/datausage/BillingCycleSettings;->-get2(Lcom/android/settings/datausage/BillingCycleSettings;)Landroid/preference/Preference;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/datausage/BillingCycleSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleSettings;

    invoke-virtual {v2}, Lcom/android/settings/datausage/BillingCycleSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->performClick(Landroid/preference/PreferenceScreen;)V

    iget-object v1, p0, Lcom/android/settings/datausage/BillingCycleSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleSettings;

    invoke-static {v1}, Lcom/android/settings/datausage/BillingCycleSettings;->-get3(Lcom/android/settings/datausage/BillingCycleSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/settings/datausage/BillingCycleSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleSettings;

    invoke-static {v1}, Lcom/android/settings/datausage/BillingCycleSettings;->-get3(Lcom/android/settings/datausage/BillingCycleSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_3
    iget-object v1, p0, Lcom/android/settings/datausage/BillingCycleSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleSettings;

    invoke-static {v1}, Lcom/android/settings/datausage/BillingCycleSettings;->-get3(Lcom/android/settings/datausage/BillingCycleSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto :goto_0

    :cond_4
    const-string/jumbo v1, "DataLimitOn"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/settings/datausage/BillingCycleSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleSettings;

    invoke-static {v1}, Lcom/android/settings/datausage/BillingCycleSettings;->-get4(Lcom/android/settings/datausage/BillingCycleSettings;)Landroid/preference/SwitchPreference;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/settings/datausage/BillingCycleSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleSettings;

    invoke-static {v1}, Lcom/android/settings/datausage/BillingCycleSettings;->-get3(Lcom/android/settings/datausage/BillingCycleSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "DataLimit"

    const-string/jumbo v3, "AlreadyOn"

    const-string/jumbo v4, "yes"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/datausage/BillingCycleSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleSettings;

    invoke-static {v1}, Lcom/android/settings/datausage/BillingCycleSettings;->-get3(Lcom/android/settings/datausage/BillingCycleSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "BillingCycle"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/datausage/BillingCycleSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleSettings;

    invoke-static {v1}, Lcom/android/settings/datausage/BillingCycleSettings;->-get3(Lcom/android/settings/datausage/BillingCycleSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lcom/android/settings/datausage/BillingCycleSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleSettings;

    invoke-static {v1}, Lcom/android/settings/datausage/BillingCycleSettings;->-get4(Lcom/android/settings/datausage/BillingCycleSettings;)Landroid/preference/SwitchPreference;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/datausage/BillingCycleSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleSettings;

    invoke-virtual {v2}, Lcom/android/settings/datausage/BillingCycleSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    iget-object v1, p0, Lcom/android/settings/datausage/BillingCycleSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleSettings;

    invoke-static {v1}, Lcom/android/settings/datausage/BillingCycleSettings;->-get3(Lcom/android/settings/datausage/BillingCycleSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/settings/datausage/BillingCycleSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleSettings;

    invoke-static {v1}, Lcom/android/settings/datausage/BillingCycleSettings;->-get3(Lcom/android/settings/datausage/BillingCycleSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "DataLimit"

    const-string/jumbo v3, "AlreadyOn"

    const-string/jumbo v4, "no"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/datausage/BillingCycleSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleSettings;

    invoke-static {v1}, Lcom/android/settings/datausage/BillingCycleSettings;->-get3(Lcom/android/settings/datausage/BillingCycleSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "BillingCycle"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_6
    iget-object v1, p0, Lcom/android/settings/datausage/BillingCycleSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleSettings;

    invoke-static {v1}, Lcom/android/settings/datausage/BillingCycleSettings;->-get3(Lcom/android/settings/datausage/BillingCycleSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    :cond_7
    const-string/jumbo v1, "DataLimitOff"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/android/settings/datausage/BillingCycleSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleSettings;

    invoke-static {v1}, Lcom/android/settings/datausage/BillingCycleSettings;->-get4(Lcom/android/settings/datausage/BillingCycleSettings;)Landroid/preference/SwitchPreference;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v1

    if-nez v1, :cond_8

    iget-object v1, p0, Lcom/android/settings/datausage/BillingCycleSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleSettings;

    invoke-static {v1}, Lcom/android/settings/datausage/BillingCycleSettings;->-get3(Lcom/android/settings/datausage/BillingCycleSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "DataLimit"

    const-string/jumbo v3, "AlreadyOff"

    const-string/jumbo v4, "yes"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/datausage/BillingCycleSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleSettings;

    invoke-static {v1}, Lcom/android/settings/datausage/BillingCycleSettings;->-get3(Lcom/android/settings/datausage/BillingCycleSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "BillingCycle"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/datausage/BillingCycleSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleSettings;

    invoke-static {v1}, Lcom/android/settings/datausage/BillingCycleSettings;->-get3(Lcom/android/settings/datausage/BillingCycleSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    :cond_8
    iget-object v1, p0, Lcom/android/settings/datausage/BillingCycleSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleSettings;

    invoke-static {v1}, Lcom/android/settings/datausage/BillingCycleSettings;->-get4(Lcom/android/settings/datausage/BillingCycleSettings;)Landroid/preference/SwitchPreference;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/datausage/BillingCycleSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleSettings;

    invoke-virtual {v2}, Lcom/android/settings/datausage/BillingCycleSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    iget-object v1, p0, Lcom/android/settings/datausage/BillingCycleSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleSettings;

    invoke-static {v1}, Lcom/android/settings/datausage/BillingCycleSettings;->-get3(Lcom/android/settings/datausage/BillingCycleSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/android/settings/datausage/BillingCycleSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleSettings;

    invoke-static {v1}, Lcom/android/settings/datausage/BillingCycleSettings;->-get3(Lcom/android/settings/datausage/BillingCycleSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "DataLimit"

    const-string/jumbo v3, "AlreadyOff"

    const-string/jumbo v4, "no"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/datausage/BillingCycleSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleSettings;

    invoke-static {v1}, Lcom/android/settings/datausage/BillingCycleSettings;->-get3(Lcom/android/settings/datausage/BillingCycleSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "BillingCycle"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_9
    iget-object v1, p0, Lcom/android/settings/datausage/BillingCycleSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleSettings;

    invoke-static {v1}, Lcom/android/settings/datausage/BillingCycleSettings;->-get3(Lcom/android/settings/datausage/BillingCycleSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    :cond_a
    const-string/jumbo v1, "SetDataLimit"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/datausage/BillingCycleSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleSettings;

    invoke-static {v1}, Lcom/android/settings/datausage/BillingCycleSettings;->-get1(Lcom/android/settings/datausage/BillingCycleSettings;)Landroid/preference/Preference;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/datausage/BillingCycleSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleSettings;

    invoke-virtual {v2}, Lcom/android/settings/datausage/BillingCycleSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->performClick(Landroid/preference/PreferenceScreen;)V

    iget-object v1, p0, Lcom/android/settings/datausage/BillingCycleSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleSettings;

    invoke-static {v1}, Lcom/android/settings/datausage/BillingCycleSettings;->-get3(Lcom/android/settings/datausage/BillingCycleSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/android/settings/datausage/BillingCycleSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleSettings;

    invoke-static {v1}, Lcom/android/settings/datausage/BillingCycleSettings;->-get3(Lcom/android/settings/datausage/BillingCycleSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_b
    iget-object v1, p0, Lcom/android/settings/datausage/BillingCycleSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleSettings;

    invoke-static {v1}, Lcom/android/settings/datausage/BillingCycleSettings;->-get3(Lcom/android/settings/datausage/BillingCycleSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0
.end method
