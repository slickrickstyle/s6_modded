.class Lcom/samsung/android/settings/notification/ZenModeDNDSettings$3;
.super Ljava/lang/Object;
.source "ZenModeDNDSettings.java"

# interfaces
.implements Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/notification/ZenModeDNDSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/notification/ZenModeDNDSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$3;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateReceived()V
    .locals 18

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$3;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDSettings;

    invoke-static {v14}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->-get6(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v14

    invoke-virtual {v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v14, "DoNotDisturbOn"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$3;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDSettings;

    invoke-static {v14}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->-get7(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;)Landroid/preference/SwitchPreference;

    move-result-object v14

    invoke-virtual {v14}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v14

    if-eqz v14, :cond_1

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$3;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDSettings;

    invoke-static {v14}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->-get6(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v14

    const-string/jumbo v15, "DND"

    const-string/jumbo v16, "AlreadyON"

    const-string/jumbo v17, "yes"

    invoke-virtual/range {v14 .. v17}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$3;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDSettings;

    invoke-static {v14}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->-get6(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v14

    const-string/jumbo v15, "DoNotDisturb"

    invoke-virtual {v14, v15}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$3;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDSettings;

    invoke-static {v14}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->-get6(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v14

    sget-object v15, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v14, v15}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$3;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDSettings;

    invoke-static {v14}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->-get7(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;)Landroid/preference/SwitchPreference;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$3;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDSettings;

    invoke-virtual {v15}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$3;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDSettings;

    invoke-static {v14}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->-get6(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v14

    invoke-virtual {v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v14

    if-eqz v14, :cond_2

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$3;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDSettings;

    invoke-static {v14}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->-get6(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v14

    const-string/jumbo v15, "DND"

    const-string/jumbo v16, "AlreadyON"

    const-string/jumbo v17, "no"

    invoke-virtual/range {v14 .. v17}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$3;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDSettings;

    invoke-static {v14}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->-get6(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v14

    const-string/jumbo v15, "DoNotDisturb"

    invoke-virtual {v14, v15}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$3;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDSettings;

    invoke-static {v14}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->-get6(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v14

    sget-object v15, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v14, v15}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto :goto_0

    :cond_3
    const-string/jumbo v14, "DoNotDisturbOff"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_6

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$3;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDSettings;

    invoke-static {v14}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->-get7(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;)Landroid/preference/SwitchPreference;

    move-result-object v14

    invoke-virtual {v14}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v14

    if-nez v14, :cond_4

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$3;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDSettings;

    invoke-static {v14}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->-get6(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v14

    const-string/jumbo v15, "DND"

    const-string/jumbo v16, "AlreadyOFF"

    const-string/jumbo v17, "yes"

    invoke-virtual/range {v14 .. v17}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$3;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDSettings;

    invoke-static {v14}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->-get6(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v14

    const-string/jumbo v15, "DoNotDisturb"

    invoke-virtual {v14, v15}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$3;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDSettings;

    invoke-static {v14}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->-get6(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v14

    sget-object v15, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v14, v15}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    :cond_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$3;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDSettings;

    invoke-static {v14}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->-get7(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;)Landroid/preference/SwitchPreference;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$3;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDSettings;

    invoke-virtual {v15}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$3;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDSettings;

    invoke-static {v14}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->-get6(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v14

    invoke-virtual {v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v14

    if-eqz v14, :cond_5

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$3;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDSettings;

    invoke-static {v14}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->-get6(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v14

    const-string/jumbo v15, "DND"

    const-string/jumbo v16, "AlreadyOFF"

    const-string/jumbo v17, "no"

    invoke-virtual/range {v14 .. v17}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$3;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDSettings;

    invoke-static {v14}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->-get6(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v14

    const-string/jumbo v15, "DoNotDisturb"

    invoke-virtual {v14, v15}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$3;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDSettings;

    invoke-static {v14}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->-get6(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v14

    sget-object v15, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v14, v15}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    :cond_6
    const-string/jumbo v14, "DoNotDisturbScheduledOn"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_9

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$3;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDSettings;

    invoke-static {v14}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->-get12(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;)Landroid/preference/SwitchPreference;

    move-result-object v14

    invoke-virtual {v14}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v14

    if-eqz v14, :cond_7

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$3;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDSettings;

    invoke-static {v14}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->-get6(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v14

    const-string/jumbo v15, "DNDSchedule"

    const-string/jumbo v16, "AlreadyOn"

    const-string/jumbo v17, "yes"

    invoke-virtual/range {v14 .. v17}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$3;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDSettings;

    invoke-static {v14}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->-get6(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v14

    const-string/jumbo v15, "DoNotDisturb"

    invoke-virtual {v14, v15}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$3;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDSettings;

    invoke-static {v14}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->-get6(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v14

    sget-object v15, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v14, v15}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    :cond_7
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$3;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDSettings;

    invoke-static {v14}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->-get12(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;)Landroid/preference/SwitchPreference;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$3;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDSettings;

    invoke-virtual {v15}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$3;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDSettings;

    invoke-static {v14}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->-get6(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v14

    invoke-virtual {v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v14

    if-eqz v14, :cond_8

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$3;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDSettings;

    invoke-static {v14}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->-get6(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v14

    const-string/jumbo v15, "DNDSchedule"

    const-string/jumbo v16, "AlreadyOn"

    const-string/jumbo v17, "no"

    invoke-virtual/range {v14 .. v17}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$3;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDSettings;

    invoke-static {v14}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->-get6(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v14

    const-string/jumbo v15, "DoNotDisturb"

    invoke-virtual {v14, v15}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_8
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$3;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDSettings;

    invoke-static {v14}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->-get6(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v14

    sget-object v15, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v14, v15}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    :cond_9
    const-string/jumbo v14, "DoNotDisturbScheduledOff"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_c

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$3;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDSettings;

    invoke-static {v14}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->-get12(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;)Landroid/preference/SwitchPreference;

    move-result-object v14

    invoke-virtual {v14}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v14

    if-nez v14, :cond_a

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$3;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDSettings;

    invoke-static {v14}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->-get6(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v14

    const-string/jumbo v15, "DNDSchedule"

    const-string/jumbo v16, "AlreadyOff"

    const-string/jumbo v17, "yes"

    invoke-virtual/range {v14 .. v17}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$3;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDSettings;

    invoke-static {v14}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->-get6(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v14

    const-string/jumbo v15, "DoNotDisturb"

    invoke-virtual {v14, v15}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$3;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDSettings;

    invoke-static {v14}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->-get6(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v14

    sget-object v15, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v14, v15}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    :cond_a
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$3;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDSettings;

    invoke-static {v14}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->-get12(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;)Landroid/preference/SwitchPreference;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$3;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDSettings;

    invoke-virtual {v15}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$3;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDSettings;

    invoke-static {v14}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->-get6(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v14

    invoke-virtual {v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v14

    if-eqz v14, :cond_b

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$3;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDSettings;

    invoke-static {v14}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->-get6(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v14

    const-string/jumbo v15, "DNDSchedule"

    const-string/jumbo v16, "AlreadyOff"

    const-string/jumbo v17, "no"

    invoke-virtual/range {v14 .. v17}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$3;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDSettings;

    invoke-static {v14}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->-get6(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v14

    const-string/jumbo v15, "DoNotDisturb"

    invoke-virtual {v14, v15}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_b
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$3;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDSettings;

    invoke-static {v14}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->-get6(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v14

    sget-object v15, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v14, v15}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    :cond_c
    const-string/jumbo v14, "DoNotdisturbSchedule"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_14

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$3;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDSettings;

    invoke-static {v14}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->-get6(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamString(I)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$3;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDSettings;

    invoke-static {v14}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->-get6(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v14

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamString(I)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$3;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDSettings;

    invoke-static {v14}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->-get6(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v14

    const/4 v15, 0x2

    invoke-virtual {v14, v15}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v10, Ljava/text/SimpleDateFormat;

    const-string/jumbo v14, "HH:MM"

    sget-object v15, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v10, v14, v15}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v12, 0x0

    const/4 v3, 0x0

    :try_start_0
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v10, v11}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v12

    invoke-virtual {v10, v2}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    :goto_1
    const/4 v4, 0x0

    :goto_2
    sget-object v14, Lcom/android/settings/notification/ZenModeScheduleDaysSelection;->DAYS:[I

    array-length v14, v14

    if-ge v4, v14, :cond_d

    sget-object v14, Lcom/android/settings/notification/ZenModeScheduleDaysSelection;->DAYS:[I

    aget v14, v14, v4

    if-ne v5, v14, :cond_10

    const/4 v6, 0x1

    :cond_d
    if-eqz v6, :cond_e

    if-nez v12, :cond_11

    :cond_e
    const-string/jumbo v7, "StartTime"

    if-nez v3, :cond_f

    const-string/jumbo v7, "EndTime"

    :cond_f
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$3;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDSettings;

    invoke-static {v14}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->-get6(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v14

    const-string/jumbo v15, "Valid"

    const-string/jumbo v16, "no"

    move-object/from16 v0, v16

    invoke-virtual {v14, v7, v15, v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$3;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDSettings;

    invoke-static {v14}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->-get6(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v14

    const-string/jumbo v15, "DoNotDisturb"

    invoke-virtual {v14, v15}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$3;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDSettings;

    invoke-static {v14}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->-get6(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v14

    sget-object v15, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v14, v15}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_1

    :cond_10
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_11
    if-eqz v3, :cond_e

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$3;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDSettings;

    invoke-static {v14}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->-get12(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;)Landroid/preference/SwitchPreference;

    move-result-object v14

    invoke-virtual {v14}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v14

    if-nez v14, :cond_12

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$3;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDSettings;

    invoke-static {v14}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->-get12(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;)Landroid/preference/SwitchPreference;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$3;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDSettings;

    invoke-virtual {v15}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    :cond_12
    const/4 v14, 0x1

    new-array v9, v14, [I

    const/4 v14, 0x1

    const/4 v15, 0x0

    aput v14, v9, v15

    const/4 v14, 0x0

    aput v5, v9, v14

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$3;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDSettings;

    invoke-static {v14}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->-get11(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;)Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    move-result-object v14

    iput-object v9, v14, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->days:[I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$3;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDSettings;

    invoke-static {v14}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->-get11(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;)Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    move-result-object v14

    invoke-virtual {v12}, Ljava/util/Date;->getHours()I

    move-result v15

    iput v15, v14, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startHour:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$3;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDSettings;

    invoke-static {v14}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->-get11(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;)Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    move-result-object v14

    invoke-virtual {v12}, Ljava/util/Date;->getMinutes()I

    move-result v15

    iput v15, v14, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startMinute:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$3;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDSettings;

    invoke-static {v14}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->-get11(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;)Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    move-result-object v14

    invoke-virtual {v3}, Ljava/util/Date;->getHours()I

    move-result v15

    iput v15, v14, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endHour:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$3;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDSettings;

    invoke-static {v14}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->-get11(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;)Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    move-result-object v14

    invoke-virtual {v3}, Ljava/util/Date;->getMinutes()I

    move-result v15

    iput v15, v14, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endMinute:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$3;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDSettings;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$3;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDSettings;

    invoke-static {v15}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->-get11(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;)Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    move-result-object v15

    invoke-static {v15}, Landroid/service/notification/ZenModeConfig;->toScheduleConditionId(Landroid/service/notification/ZenModeConfig$ScheduleInfo;)Landroid/net/Uri;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->-wrap6(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;Landroid/net/Uri;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$3;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDSettings;

    invoke-static {v14}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->-wrap4(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$3;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDSettings;

    invoke-static {v14}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->-get6(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v14

    invoke-virtual {v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v14

    if-eqz v14, :cond_13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$3;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDSettings;

    invoke-static {v14}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->-get6(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v14

    const-string/jumbo v15, "SameDonotDisturb"

    const-string/jumbo v16, "AlreadySet"

    const-string/jumbo v17, "no"

    invoke-virtual/range {v14 .. v17}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$3;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDSettings;

    invoke-static {v14}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->-get6(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v14

    const-string/jumbo v15, "Days"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, ""

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$3;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->-get4(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;)Landroid/preference/Preference;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgResultParam(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$3;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDSettings;

    invoke-static {v14}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->-get6(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v14

    const-string/jumbo v15, "StartTime"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, ""

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$3;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->-get13(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;)Lcom/samsung/android/settings/notification/ZenModeDNDSettings$TimePickerPreference;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$TimePickerPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgResultParam(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$3;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDSettings;

    invoke-static {v14}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->-get6(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v14

    const-string/jumbo v15, "EndTime"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, ""

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$3;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->-get8(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;)Lcom/samsung/android/settings/notification/ZenModeDNDSettings$TimePickerPreference;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$TimePickerPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgResultParam(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$3;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDSettings;

    invoke-static {v14}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->-get6(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v14

    const-string/jumbo v15, "DoNotDisturb"

    invoke-virtual {v14, v15}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_13
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$3;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDSettings;

    invoke-static {v14}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->-get6(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v14

    sget-object v15, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v14, v15}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    :cond_14
    const-string/jumbo v14, "DoNotDisturbAllowExceptions"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$3;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDSettings;

    invoke-static {v14}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->-get1(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;)Landroid/preference/PreferenceScreen;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$3;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDSettings;

    invoke-virtual {v15}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/preference/PreferenceScreen;->performClick(Landroid/preference/PreferenceScreen;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$3;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDSettings;

    invoke-static {v14}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->-get6(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v14

    invoke-virtual {v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v14

    if-eqz v14, :cond_15

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$3;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDSettings;

    invoke-static {v14}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->-get6(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v14

    invoke-virtual {v14, v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_15
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$3;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDSettings;

    invoke-static {v14}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->-get6(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v14

    sget-object v15, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v14, v15}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0
.end method
