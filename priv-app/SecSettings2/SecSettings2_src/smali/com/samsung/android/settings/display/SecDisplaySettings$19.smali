.class Lcom/samsung/android/settings/display/SecDisplaySettings$19;
.super Ljava/lang/Object;
.source "SecDisplaySettings.java"

# interfaces
.implements Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/display/SecDisplaySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/display/SecDisplaySettings;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateReceived()V
    .locals 24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get8(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v19, "DisplayBrightnessLevel"

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_0

    const-string/jumbo v19, "DisplayBrightnessUp"

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_0

    const-string/jumbo v19, "DisplayBrightnessDown"

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_0

    const-string/jumbo v19, "DisplayBrightnessMax"

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_0

    const-string/jumbo v19, "DisplayBrightnessMin"

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_0

    const-string/jumbo v19, "DisplayBrightnessAutoOn"

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_0

    const-string/jumbo v19, "DisplayBrightnessAutoOff"

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get2(Lcom/samsung/android/settings/display/SecDisplaySettings;)Landroid/os/Handler;

    move-result-object v19

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v0, v1, v8}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get2(Lcom/samsung/android/settings/display/SecDisplaySettings;)Landroid/os/Handler;

    move-result-object v19

    const-wide/16 v20, 0x64

    move-object/from16 v0, v19

    move-wide/from16 v1, v20

    invoke-virtual {v0, v6, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    :cond_1
    const-string/jumbo v19, "BlueLightFilter"

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get3(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/display/DisplayDisabledAppearanceSwitchPreference;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lcom/samsung/android/settings/display/DisplayDisabledAppearanceSwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get8(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v19

    sget-object v20, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual/range {v19 .. v20}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    const-string/jumbo v19, "DisplayBlueLightFilterOn"

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get3(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/display/DisplayDisabledAppearanceSwitchPreference;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/samsung/android/settings/display/DisplayDisabledAppearanceSwitchPreference;->isEnabled()Z

    move-result v19

    if-nez v19, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get8(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v19

    sget-object v20, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual/range {v19 .. v20}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get3(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/display/DisplayDisabledAppearanceSwitchPreference;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/samsung/android/settings/display/DisplayDisabledAppearanceSwitchPreference;->isChecked()Z

    move-result v19

    if-nez v19, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get3(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/display/DisplayDisabledAppearanceSwitchPreference;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/samsung/android/settings/display/DisplayDisabledAppearanceSwitchPreference;->performClick()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get8(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v19

    if-eqz v19, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get8(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v19

    const-string/jumbo v20, "BlueLightFilter"

    const-string/jumbo v21, "AlreadyON"

    const-string/jumbo v22, "No"

    invoke-virtual/range {v19 .. v22}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get8(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v19

    const-string/jumbo v20, "Display"

    invoke-virtual/range {v19 .. v20}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get8(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v19

    sget-object v20, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual/range {v19 .. v20}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get8(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v19

    const-string/jumbo v20, "BlueLightFilter"

    const-string/jumbo v21, "AlreadyON"

    const-string/jumbo v22, "Yes"

    invoke-virtual/range {v19 .. v22}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get8(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v19

    const-string/jumbo v20, "Display"

    invoke-virtual/range {v19 .. v20}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get8(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v19

    sget-object v20, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual/range {v19 .. v20}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    :cond_7
    const-string/jumbo v19, "DisplayBlueLightFilterOff"

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get3(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/display/DisplayDisabledAppearanceSwitchPreference;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/samsung/android/settings/display/DisplayDisabledAppearanceSwitchPreference;->isEnabled()Z

    move-result v19

    if-nez v19, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get8(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v19

    sget-object v20, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual/range {v19 .. v20}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get3(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/display/DisplayDisabledAppearanceSwitchPreference;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/samsung/android/settings/display/DisplayDisabledAppearanceSwitchPreference;->isChecked()Z

    move-result v19

    if-eqz v19, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get3(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/display/DisplayDisabledAppearanceSwitchPreference;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/samsung/android/settings/display/DisplayDisabledAppearanceSwitchPreference;->performClick()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get8(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v19

    if-eqz v19, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get8(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v19

    const-string/jumbo v20, "BlueLightFilter"

    const-string/jumbo v21, "AlreadyOFF"

    const-string/jumbo v22, "No"

    invoke-virtual/range {v19 .. v22}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get8(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v19

    const-string/jumbo v20, "Display"

    invoke-virtual/range {v19 .. v20}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get8(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v19

    sget-object v20, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual/range {v19 .. v20}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get8(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v19

    const-string/jumbo v20, "BlueLightFilter"

    const-string/jumbo v21, "AlreadyOFF"

    const-string/jumbo v22, "Yes"

    invoke-virtual/range {v19 .. v22}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get8(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v19

    const-string/jumbo v20, "Display"

    invoke-virtual/range {v19 .. v20}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get8(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v19

    sget-object v20, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual/range {v19 .. v20}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    :cond_b
    const-string/jumbo v19, "Font"

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get9(Lcom/samsung/android/settings/display/SecDisplaySettings;)Landroid/preference/PreferenceScreen;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/preference/PreferenceScreen;->performClick(Landroid/preference/PreferenceScreen;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get8(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v19

    sget-object v20, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual/range {v19 .. v20}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    :cond_c
    const-string/jumbo v19, "ContentScaling"

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get5(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;->performClick(Landroid/preference/PreferenceScreen;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get8(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v19

    sget-object v20, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual/range {v19 .. v20}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    :cond_d
    const-string/jumbo v19, "ScreenResolution"

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get17(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;->performClick(Landroid/preference/PreferenceScreen;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get8(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v19

    sget-object v20, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual/range {v19 .. v20}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    :cond_e
    const-string/jumbo v19, "ScreenMode"

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get15(Lcom/samsung/android/settings/display/SecDisplaySettings;)Landroid/preference/PreferenceScreen;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/preference/PreferenceScreen;->performClick(Landroid/preference/PreferenceScreen;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get8(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v19

    sget-object v20, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual/range {v19 .. v20}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    :cond_f
    const-string/jumbo v19, "EasyMode"

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get6(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;->performClick(Landroid/preference/PreferenceScreen;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get8(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v19

    sget-object v20, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual/range {v19 .. v20}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    :cond_10
    const-string/jumbo v19, "IconFrame"

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get10(Lcom/samsung/android/settings/display/SecDisplaySettings;)Landroid/preference/PreferenceScreen;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/preference/PreferenceScreen;->performClick(Landroid/preference/PreferenceScreen;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get8(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v19

    sget-object v20, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual/range {v19 .. v20}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    :cond_11
    const-string/jumbo v19, "StatusBar"

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get23(Lcom/samsung/android/settings/display/SecDisplaySettings;)Landroid/preference/PreferenceScreen;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/preference/PreferenceScreen;->performClick(Landroid/preference/PreferenceScreen;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get8(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v19

    sget-object v20, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual/range {v19 .. v20}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    :cond_12
    const-string/jumbo v19, "ScreenTimeout"

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getListView()Landroid/widget/ListView;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get19(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/android/settings/TimeoutListPreference;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/settings/TimeoutListPreference;->getOrder()I

    move-result v20

    const/16 v21, 0x0

    invoke-virtual/range {v19 .. v21}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get8(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v19

    sget-object v20, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual/range {v19 .. v20}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    :cond_13
    const-string/jumbo v19, "ScreenTimeoutApply"

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1a

    const/4 v11, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get8(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamsSize()I

    move-result v19

    if-eqz v19, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get8(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v19

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamString(I)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_14

    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v19

    if-eqz v19, :cond_15

    :cond_14
    :goto_1
    if-nez v11, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get19(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/android/settings/TimeoutListPreference;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lcom/android/settings/TimeoutListPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get8(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v19

    const-string/jumbo v20, "Object"

    const-string/jumbo v21, "Valid"

    const-string/jumbo v22, "No"

    invoke-virtual/range {v19 .. v22}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get8(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v19

    const-string/jumbo v20, "ScreenTimeout"

    invoke-virtual/range {v19 .. v20}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get8(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v19

    sget-object v20, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual/range {v19 .. v20}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    :cond_15
    const-string/jumbo v19, ""

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_14

    const-string/jumbo v19, ", "

    const-string/jumbo v20, ""

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v10, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    const/16 v19, 0x68

    move/from16 v0, v19

    invoke-virtual {v10, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v19

    add-int/lit8 v19, v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v10, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    const/16 v19, 0x6d

    move/from16 v0, v19

    invoke-virtual {v10, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v19

    const/16 v20, 0x0

    move/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v10, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    const/16 v19, 0x6d

    move/from16 v0, v19

    invoke-virtual {v10, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v19

    add-int/lit8 v19, v19, 0x1

    const/16 v20, 0x73

    move/from16 v0, v20

    invoke-virtual {v10, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v10, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v16}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v20

    const-wide/16 v22, 0x3c

    mul-long v20, v20, v22

    invoke-static/range {v17 .. v17}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v22

    add-long v20, v20, v22

    const-wide/16 v22, 0x3e8

    mul-long v12, v20, v22

    const-string/jumbo v19, "SecDisplaySettings"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "timeout : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get19(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/android/settings/TimeoutListPreference;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/settings/TimeoutListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get19(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/android/settings/TimeoutListPreference;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/settings/TimeoutListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v4

    const/4 v5, 0x0

    :goto_2
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v5, v0, :cond_14

    aget-object v19, v18, v5

    invoke-interface/range {v19 .. v19}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v20

    cmp-long v19, v12, v20

    if-nez v19, :cond_16

    invoke-static {v12, v13}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v11

    aget-object v19, v4, v5

    invoke-interface/range {v19 .. v19}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_1

    :cond_16
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get19(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/android/settings/TimeoutListPreference;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/settings/TimeoutListPreference;->getValue()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get8(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v19

    const-string/jumbo v20, "Object"

    const-string/jumbo v21, "AlreadySet"

    const-string/jumbo v22, "Yes"

    invoke-virtual/range {v19 .. v22}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get8(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v19

    const-string/jumbo v20, "Object"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgResultParam(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get8(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v19

    const-string/jumbo v20, "ScreenTimeout"

    invoke-virtual/range {v19 .. v20}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get8(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v19

    sget-object v20, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual/range {v19 .. v20}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get19(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/android/settings/TimeoutListPreference;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v11}, Lcom/samsung/android/settings/display/SecDisplaySettings;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get8(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v19

    if-eqz v19, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get8(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v19

    const-string/jumbo v20, "Object"

    const-string/jumbo v21, "AlreadySet"

    const-string/jumbo v22, "No"

    invoke-virtual/range {v19 .. v22}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get8(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v19

    const-string/jumbo v20, "Object"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgResultParam(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get8(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v19

    const-string/jumbo v20, "ScreenTimeout"

    invoke-virtual/range {v19 .. v20}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get8(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v19

    sget-object v20, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual/range {v19 .. v20}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    :cond_1a
    const-string/jumbo v19, "KeepScreenTurnedOffOn"

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get16(Lcom/samsung/android/settings/display/SecDisplaySettings;)Landroid/preference/SwitchPreference;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v19

    if-eqz v19, :cond_1b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get8(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v19

    const-string/jumbo v20, "ScreenOff"

    const-string/jumbo v21, "AlreadyON"

    const-string/jumbo v22, "Yes"

    invoke-virtual/range {v19 .. v22}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get8(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v19

    const-string/jumbo v20, "Display"

    invoke-virtual/range {v19 .. v20}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get8(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v19

    sget-object v20, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual/range {v19 .. v20}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get16(Lcom/samsung/android/settings/display/SecDisplaySettings;)Landroid/preference/SwitchPreference;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get8(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v19

    if-eqz v19, :cond_1c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get8(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v19

    const-string/jumbo v20, "ScreenOff"

    const-string/jumbo v21, "AlreadyON"

    const-string/jumbo v22, "No"

    invoke-virtual/range {v19 .. v22}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get8(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v19

    const-string/jumbo v20, "Display"

    invoke-virtual/range {v19 .. v20}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get8(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v19

    sget-object v20, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual/range {v19 .. v20}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    :cond_1d
    const-string/jumbo v19, "KeepScreenTurnedOffOff"

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get16(Lcom/samsung/android/settings/display/SecDisplaySettings;)Landroid/preference/SwitchPreference;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v19

    if-nez v19, :cond_1e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get8(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v19

    const-string/jumbo v20, "ScreenOff"

    const-string/jumbo v21, "AlreadyOff"

    const-string/jumbo v22, "Yes"

    invoke-virtual/range {v19 .. v22}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get8(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v19

    const-string/jumbo v20, "Display"

    invoke-virtual/range {v19 .. v20}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get8(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v19

    sget-object v20, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual/range {v19 .. v20}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get16(Lcom/samsung/android/settings/display/SecDisplaySettings;)Landroid/preference/SwitchPreference;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get8(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v19

    if-eqz v19, :cond_1f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get8(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v19

    const-string/jumbo v20, "ScreenOff"

    const-string/jumbo v21, "AlreadyOff"

    const-string/jumbo v22, "No"

    invoke-virtual/range {v19 .. v22}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get8(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v19

    const-string/jumbo v20, "Display"

    invoke-virtual/range {v19 .. v20}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get8(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v19

    sget-object v20, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual/range {v19 .. v20}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    :cond_20
    const-string/jumbo v19, "Screensaver"

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getListView()Landroid/widget/ListView;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get18(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/SettingsSwitchPreference;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/samsung/android/settings/SettingsSwitchPreference;->getOrder()I

    move-result v20

    const/16 v21, 0x0

    invoke-virtual/range {v19 .. v21}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get8(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v19

    sget-object v20, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual/range {v19 .. v20}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    :cond_21
    const-string/jumbo v19, "ScreensaverOn"

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get18(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/SettingsSwitchPreference;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/samsung/android/settings/SettingsSwitchPreference;->isEnabled()Z

    move-result v19

    if-eqz v19, :cond_24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get18(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/SettingsSwitchPreference;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/samsung/android/settings/SettingsSwitchPreference;->isChecked()Z

    move-result v19

    if-eqz v19, :cond_22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get8(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v19

    const-string/jumbo v20, "Screensaver"

    const-string/jumbo v21, "AlreadyON"

    const-string/jumbo v22, "Yes"

    invoke-virtual/range {v19 .. v22}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get8(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v19

    const-string/jumbo v20, "Screensaver"

    invoke-virtual/range {v19 .. v20}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get8(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v19

    sget-object v20, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual/range {v19 .. v20}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    :cond_22
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get18(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/SettingsSwitchPreference;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/samsung/android/settings/SettingsSwitchPreference;->performClick()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get8(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v19

    if-eqz v19, :cond_23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get8(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v19

    const-string/jumbo v20, "Screensaver"

    const-string/jumbo v21, "AlreadyON"

    const-string/jumbo v22, "No"

    invoke-virtual/range {v19 .. v22}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get8(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v19

    const-string/jumbo v20, "Screensaver"

    invoke-virtual/range {v19 .. v20}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_23
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get8(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v19

    sget-object v20, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual/range {v19 .. v20}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    :cond_24
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get8(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v19

    sget-object v20, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual/range {v19 .. v20}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    :cond_25
    const-string/jumbo v19, "ScreensaverOff"

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get18(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/SettingsSwitchPreference;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/samsung/android/settings/SettingsSwitchPreference;->isEnabled()Z

    move-result v19

    if-eqz v19, :cond_28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get18(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/SettingsSwitchPreference;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/samsung/android/settings/SettingsSwitchPreference;->isChecked()Z

    move-result v19

    if-nez v19, :cond_26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get8(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v19

    const-string/jumbo v20, "Screensaver"

    const-string/jumbo v21, "AlreadyOFF"

    const-string/jumbo v22, "Yes"

    invoke-virtual/range {v19 .. v22}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get8(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v19

    const-string/jumbo v20, "Screensaver"

    invoke-virtual/range {v19 .. v20}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get8(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v19

    sget-object v20, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual/range {v19 .. v20}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    :cond_26
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get18(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/SettingsSwitchPreference;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/samsung/android/settings/SettingsSwitchPreference;->performClick()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get8(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v19

    if-eqz v19, :cond_27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get8(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v19

    const-string/jumbo v20, "Screensaver"

    const-string/jumbo v21, "AlreadyOFF"

    const-string/jumbo v22, "No"

    invoke-virtual/range {v19 .. v22}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get8(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v19

    const-string/jumbo v20, "Screensaver"

    invoke-virtual/range {v19 .. v20}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_27
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get8(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v19

    sget-object v20, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual/range {v19 .. v20}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    :cond_28
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get8(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v19

    sget-object v20, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual/range {v19 .. v20}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    :cond_29
    const-string/jumbo v19, "LEDIndicatorOn"

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_2c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get21(Lcom/samsung/android/settings/display/SecDisplaySettings;)Landroid/preference/SwitchPreference;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v19

    if-eqz v19, :cond_2a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get8(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v19

    const-string/jumbo v20, "LED"

    const-string/jumbo v21, "AlreadyON"

    const-string/jumbo v22, "Yes"

    invoke-virtual/range {v19 .. v22}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get8(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v19

    const-string/jumbo v20, "Display"

    invoke-virtual/range {v19 .. v20}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get8(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v19

    sget-object v20, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual/range {v19 .. v20}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    :cond_2a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get21(Lcom/samsung/android/settings/display/SecDisplaySettings;)Landroid/preference/SwitchPreference;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get8(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v19

    if-eqz v19, :cond_2b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get8(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v19

    const-string/jumbo v20, "LED"

    const-string/jumbo v21, "AlreadyON"

    const-string/jumbo v22, "No"

    invoke-virtual/range {v19 .. v22}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get8(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v19

    const-string/jumbo v20, "Display"

    invoke-virtual/range {v19 .. v20}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_2b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get8(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v19

    sget-object v20, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual/range {v19 .. v20}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    :cond_2c
    const-string/jumbo v19, "LEDIndicatorOff"

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_2f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get21(Lcom/samsung/android/settings/display/SecDisplaySettings;)Landroid/preference/SwitchPreference;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v19

    if-nez v19, :cond_2d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get8(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v19

    const-string/jumbo v20, "LED"

    const-string/jumbo v21, "AlreadyOFF"

    const-string/jumbo v22, "Yes"

    invoke-virtual/range {v19 .. v22}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get8(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v19

    const-string/jumbo v20, "Display"

    invoke-virtual/range {v19 .. v20}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get8(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v19

    sget-object v20, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual/range {v19 .. v20}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    :cond_2d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get21(Lcom/samsung/android/settings/display/SecDisplaySettings;)Landroid/preference/SwitchPreference;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get8(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v19

    if-eqz v19, :cond_2e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get8(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v19

    const-string/jumbo v20, "LED"

    const-string/jumbo v21, "AlreadyOFF"

    const-string/jumbo v22, "No"

    invoke-virtual/range {v19 .. v22}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get8(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v19

    const-string/jumbo v20, "Display"

    invoke-virtual/range {v19 .. v20}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_2e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get8(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v19

    sget-object v20, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual/range {v19 .. v20}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    :cond_2f
    const-string/jumbo v19, "EdgeScreen"

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Landroid/preference/PreferenceScreen;

    move-result-object v19

    if-eqz v19, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Landroid/preference/PreferenceScreen;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/preference/PreferenceScreen;->performClick(Landroid/preference/PreferenceScreen;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get8(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v19

    if-eqz v19, :cond_30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get8(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v19

    const-string/jumbo v20, "EdgeScreen"

    const-string/jumbo v21, "Available"

    const-string/jumbo v22, "yes"

    invoke-virtual/range {v19 .. v22}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get8(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_30
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get8(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v19

    sget-object v20, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual/range {v19 .. v20}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    :cond_31
    const-string/jumbo v19, "NavigationBar"

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get11(Lcom/samsung/android/settings/display/SecDisplaySettings;)Landroid/preference/PreferenceScreen;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/preference/PreferenceScreen;->performClick(Landroid/preference/PreferenceScreen;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get8(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v19

    sget-object v20, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual/range {v19 .. v20}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    :cond_32
    const-string/jumbo v19, "TouchkeyLightDuration"

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get8(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamsSize()I

    move-result v19

    if-eqz v19, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get8(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v19

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamInt(I)I

    move-result v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get24(Lcom/samsung/android/settings/display/SecDisplaySettings;)Landroid/preference/ListPreference;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v18

    if-ltz v14, :cond_33

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    if-lt v14, v0, :cond_34

    :cond_33
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get8(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v19

    const-string/jumbo v20, "TouchkeyLightDuration"

    const-string/jumbo v21, "Valid"

    const-string/jumbo v22, "No"

    invoke-virtual/range {v19 .. v22}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get8(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v19

    const-string/jumbo v20, "mBixbyCurrentStateId"

    invoke-virtual/range {v19 .. v20}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get8(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v19

    sget-object v20, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual/range {v19 .. v20}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    :cond_34
    aget-object v19, v18, v14

    invoke-interface/range {v19 .. v19}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-wrap0(Lcom/samsung/android/settings/display/SecDisplaySettings;)Landroid/content/ContentResolver;

    move-result-object v19

    const-string/jumbo v20, "button_key_light"

    const/16 v21, 0x1770

    invoke-static/range {v19 .. v21}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-ne v9, v15, :cond_35

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get8(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v19

    const-string/jumbo v20, "TouchkeyLightDuration"

    const-string/jumbo v21, "AlreadySet"

    const-string/jumbo v22, "Yes"

    invoke-virtual/range {v19 .. v22}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get8(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v19

    const-string/jumbo v20, "mBixbyCurrentStateId"

    invoke-virtual/range {v19 .. v20}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get8(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v19

    sget-object v20, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual/range {v19 .. v20}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    :cond_35
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-wrap0(Lcom/samsung/android/settings/display/SecDisplaySettings;)Landroid/content/ContentResolver;

    move-result-object v19

    const-string/jumbo v20, "button_key_light"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v15}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-wrap15(Lcom/samsung/android/settings/display/SecDisplaySettings;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get8(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v19

    const-string/jumbo v20, "TouchkeyLightDuration"

    const-string/jumbo v21, "AlreadySet"

    const-string/jumbo v22, "No"

    invoke-virtual/range {v19 .. v22}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get8(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v19

    const-string/jumbo v20, "mBixbyCurrentStateId"

    invoke-virtual/range {v19 .. v20}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get8(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v19

    sget-object v20, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual/range {v19 .. v20}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0
.end method
