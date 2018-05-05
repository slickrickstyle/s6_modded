.class Lcom/android/settings/datausage/DataUsageSummary$5;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/datausage/DataUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/datausage/DataUsageSummary;


# direct methods
.method constructor <init>(Lcom/android/settings/datausage/DataUsageSummary;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/datausage/DataUsageSummary$5;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateReceived()V
    .locals 24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$5;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v17

    const-string/jumbo v19, "DataSaver"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$5;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/settings/datausage/DataUsageSummary;->-get1(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/android/settings/datausage/DataSaverPreference;

    move-result-object v19

    if-eqz v19, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$5;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/settings/datausage/DataUsageSummary;->-get1(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/android/settings/datausage/DataSaverPreference;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$5;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/settings/datausage/DataUsageSummary;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lcom/android/settings/datausage/DataSaverPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$5;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v19

    if-eqz v19, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$5;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$5;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v19

    sget-object v20, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual/range {v19 .. v20}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    :cond_2
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$5;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Z

    move-result v19

    if-eqz v19, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$5;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/settings/datausage/DataUsageSummary;->-get5(Lcom/android/settings/datausage/DataUsageSummary;)Z

    move-result v19

    if-eqz v19, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$5;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/settings/datausage/DataUsageSummary;->getContext()Landroid/content/Context;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    const-string/jumbo v20, "opera_max_china_state"

    const/16 v21, 0x0

    invoke-static/range {v19 .. v21}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v15

    const-string/jumbo v19, "DataUsageDetail"

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$5;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary;->summaryLayoutChn:Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;

    move-object/from16 v19, v0

    if-eqz v19, :cond_1e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$5;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/settings/datausage/DataUsageSummary;->getContext()Landroid/content/Context;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$5;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary;->summaryLayoutChn:Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->getIntent()Landroid/content/Intent;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$5;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v19

    sget-object v20, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual/range {v19 .. v20}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    :cond_3
    :goto_1
    return-void

    :cond_4
    const-string/jumbo v19, "MobileDataOn"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$5;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary;->services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/settings/datausage/TemplatePreference$NetworkServices;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/telephony/TelephonyManager;->getDataEnabled()Z

    move-result v11

    if-eqz v11, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$5;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v19

    const-string/jumbo v20, "MobileData"

    const-string/jumbo v21, "AlreadyOn"

    const-string/jumbo v22, "yes"

    invoke-virtual/range {v19 .. v22}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$5;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v19

    const-string/jumbo v20, "DataUsage"

    invoke-virtual/range {v19 .. v20}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$5;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v19

    sget-object v20, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual/range {v19 .. v20}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$5;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/settings/datausage/DataUsageSummary;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v16

    const/16 v19, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v14

    check-cast v14, Lcom/android/settings/datausage/TemplatePreferenceCategory;

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->MobileDataPerformClick(Landroid/preference/PreferenceScreen;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$5;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v19

    if-eqz v19, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$5;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v19

    const-string/jumbo v20, "MobileData"

    const-string/jumbo v21, "AlreadyOn"

    const-string/jumbo v22, "no"

    invoke-virtual/range {v19 .. v22}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$5;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v19

    const-string/jumbo v20, "DataUsage"

    invoke-virtual/range {v19 .. v20}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$5;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v19

    sget-object v20, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual/range {v19 .. v20}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    :cond_7
    const-string/jumbo v19, "MobileDataOff"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$5;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary;->services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/settings/datausage/TemplatePreference$NetworkServices;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/telephony/TelephonyManager;->getDataEnabled()Z

    move-result v11

    if-nez v11, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$5;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v19

    const-string/jumbo v20, "MobileData"

    const-string/jumbo v21, "AlreadyOff"

    const-string/jumbo v22, "yes"

    invoke-virtual/range {v19 .. v22}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$5;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v19

    const-string/jumbo v20, "DataUsage"

    invoke-virtual/range {v19 .. v20}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$5;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v19

    sget-object v20, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual/range {v19 .. v20}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$5;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/settings/datausage/DataUsageSummary;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v16

    const/16 v19, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v14

    check-cast v14, Lcom/android/settings/datausage/TemplatePreferenceCategory;

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->MobileDataPerformClick(Landroid/preference/PreferenceScreen;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$5;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v19

    if-eqz v19, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$5;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v19

    const-string/jumbo v20, "MobileData"

    const-string/jumbo v21, "AlreadyOff"

    const-string/jumbo v22, "no"

    invoke-virtual/range {v19 .. v22}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$5;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v19

    const-string/jumbo v20, "DataUsage"

    invoke-virtual/range {v19 .. v20}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$5;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v19

    sget-object v20, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual/range {v19 .. v20}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    :cond_a
    const-string/jumbo v19, "CellularDataUsage"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$5;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/settings/datausage/DataUsageSummary;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v16

    const/16 v19, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v14

    check-cast v14, Lcom/android/settings/datausage/TemplatePreferenceCategory;

    const/4 v9, 0x0

    :goto_2
    invoke-virtual {v14}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->getPreferenceCount()I

    move-result v19

    move/from16 v0, v19

    if-ge v9, v0, :cond_c

    invoke-virtual {v14, v9}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->getPreference(I)Landroid/preference/Preference;

    move-result-object v12

    instance-of v0, v12, Lcom/android/settings/datausage/DataUsagePreference;

    move/from16 v19, v0

    if-eqz v19, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$5;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/settings/datausage/DataUsageSummary;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Landroid/preference/Preference;->performClick(Landroid/preference/PreferenceScreen;)V

    :cond_b
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$5;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v19

    if-eqz v19, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$5;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$5;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v19

    sget-object v20, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual/range {v19 .. v20}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    :cond_e
    const-string/jumbo v19, "BillingCycle"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$5;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/settings/datausage/DataUsageSummary;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v16

    const/16 v19, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v14

    check-cast v14, Lcom/android/settings/datausage/TemplatePreferenceCategory;

    const/4 v9, 0x0

    :goto_3
    invoke-virtual {v14}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->getPreferenceCount()I

    move-result v19

    move/from16 v0, v19

    if-ge v9, v0, :cond_10

    invoke-virtual {v14, v9}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->getPreference(I)Landroid/preference/Preference;

    move-result-object v12

    instance-of v0, v12, Lcom/android/settings/datausage/BillingCyclePreference;

    move/from16 v19, v0

    if-eqz v19, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$5;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/settings/datausage/DataUsageSummary;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Landroid/preference/Preference;->performClick(Landroid/preference/PreferenceScreen;)V

    :cond_f
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$5;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v19

    if-eqz v19, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$5;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$5;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v19

    sget-object v20, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual/range {v19 .. v20}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    :cond_12
    const-string/jumbo v19, "AlertMeAboutDataUsageOn"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$5;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v19, v0

    const-string/jumbo v20, "alert_at_warning"

    invoke-virtual/range {v19 .. v20}, Lcom/android/settings/datausage/DataUsageSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v13

    check-cast v13, Lcom/android/settings/datausage/AlertAtWarningPreference;

    if-eqz v13, :cond_2

    invoke-virtual {v13}, Lcom/android/settings/datausage/AlertAtWarningPreference;->isChecked()Z

    move-result v19

    if-eqz v19, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$5;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v19

    const-string/jumbo v20, "AlertMeAboutDataUsageOn"

    const-string/jumbo v21, "AlreadyOn"

    const-string/jumbo v22, "Yes"

    invoke-virtual/range {v19 .. v22}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$5;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v19

    const-string/jumbo v20, "DataUsage"

    invoke-virtual/range {v19 .. v20}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$5;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v19

    sget-object v20, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual/range {v19 .. v20}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$5;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/settings/datausage/DataUsageSummary;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Lcom/android/settings/datausage/AlertAtWarningPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$5;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v19

    if-eqz v19, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$5;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v19

    const-string/jumbo v20, "AlertMeAboutDataUsageOn"

    const-string/jumbo v21, "AlreadyOn"

    const-string/jumbo v22, "No"

    invoke-virtual/range {v19 .. v22}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$5;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v19

    const-string/jumbo v20, "DataUsage"

    invoke-virtual/range {v19 .. v20}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$5;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v19

    sget-object v20, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual/range {v19 .. v20}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    :cond_15
    const-string/jumbo v19, "AlertMeAboutDataUsageOff"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$5;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v19, v0

    const-string/jumbo v20, "alert_at_warning"

    invoke-virtual/range {v19 .. v20}, Lcom/android/settings/datausage/DataUsageSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v13

    check-cast v13, Lcom/android/settings/datausage/AlertAtWarningPreference;

    if-eqz v13, :cond_2

    invoke-virtual {v13}, Lcom/android/settings/datausage/AlertAtWarningPreference;->isChecked()Z

    move-result v19

    if-nez v19, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$5;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v19

    const-string/jumbo v20, "AlertMeAboutDataUsageOff"

    const-string/jumbo v21, "AlreadyOff"

    const-string/jumbo v22, "Yes"

    invoke-virtual/range {v19 .. v22}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$5;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v19

    const-string/jumbo v20, "DataUsage"

    invoke-virtual/range {v19 .. v20}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$5;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v19

    sget-object v20, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual/range {v19 .. v20}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$5;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/settings/datausage/DataUsageSummary;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Lcom/android/settings/datausage/AlertAtWarningPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$5;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v19

    if-eqz v19, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$5;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v19

    const-string/jumbo v20, "AlertMeAboutDataUsageOff"

    const-string/jumbo v21, "AlreadyOff"

    const-string/jumbo v22, "No"

    invoke-virtual/range {v19 .. v22}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$5;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v19

    const-string/jumbo v20, "DataUsage"

    invoke-virtual/range {v19 .. v20}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$5;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v19

    sget-object v20, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual/range {v19 .. v20}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    :cond_18
    const-string/jumbo v19, "ConfirmMobileDataConnectionOn"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$5;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/settings/datausage/DataUsageSummary;->-get0(Lcom/android/settings/datausage/DataUsageSummary;)Landroid/preference/SwitchPreference;

    move-result-object v19

    if-eqz v19, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$5;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/settings/datausage/DataUsageSummary;->-get0(Lcom/android/settings/datausage/DataUsageSummary;)Landroid/preference/SwitchPreference;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v19

    if-eqz v19, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$5;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v19

    const-string/jumbo v20, "ConfirmMobileDataConnectionOn"

    const-string/jumbo v21, "AlreadyOn"

    const-string/jumbo v22, "Yes"

    invoke-virtual/range {v19 .. v22}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$5;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v19

    const-string/jumbo v20, "DataUsage"

    invoke-virtual/range {v19 .. v20}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$5;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v19

    sget-object v20, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual/range {v19 .. v20}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$5;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/settings/datausage/DataUsageSummary;->-get0(Lcom/android/settings/datausage/DataUsageSummary;)Landroid/preference/SwitchPreference;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$5;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/settings/datausage/DataUsageSummary;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$5;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v19

    if-eqz v19, :cond_1a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$5;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v19

    const-string/jumbo v20, "ConfirmMobileDataConnectionOn"

    const-string/jumbo v21, "AlreadyOn"

    const-string/jumbo v22, "No"

    invoke-virtual/range {v19 .. v22}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$5;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v19

    const-string/jumbo v20, "DataUsage"

    invoke-virtual/range {v19 .. v20}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$5;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v19

    sget-object v20, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual/range {v19 .. v20}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    :cond_1b
    const-string/jumbo v19, "ConfirmMobileDataConnectionOff"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$5;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/settings/datausage/DataUsageSummary;->-get0(Lcom/android/settings/datausage/DataUsageSummary;)Landroid/preference/SwitchPreference;

    move-result-object v19

    if-eqz v19, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$5;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/settings/datausage/DataUsageSummary;->-get0(Lcom/android/settings/datausage/DataUsageSummary;)Landroid/preference/SwitchPreference;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v19

    if-nez v19, :cond_1c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$5;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v19

    const-string/jumbo v20, "ConfirmMobileDataConnectionOff"

    const-string/jumbo v21, "AlreadyOff"

    const-string/jumbo v22, "Yes"

    invoke-virtual/range {v19 .. v22}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$5;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v19

    const-string/jumbo v20, "DataUsage"

    invoke-virtual/range {v19 .. v20}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$5;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v19

    sget-object v20, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual/range {v19 .. v20}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$5;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/settings/datausage/DataUsageSummary;->-get0(Lcom/android/settings/datausage/DataUsageSummary;)Landroid/preference/SwitchPreference;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$5;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/settings/datausage/DataUsageSummary;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$5;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v19

    if-eqz v19, :cond_1d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$5;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v19

    const-string/jumbo v20, "ConfirmMobileDataConnectionOff"

    const-string/jumbo v21, "AlreadyOff"

    const-string/jumbo v22, "No"

    invoke-virtual/range {v19 .. v22}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$5;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v19

    const-string/jumbo v20, "DataUsage"

    invoke-virtual/range {v19 .. v20}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$5;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v19

    sget-object v20, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual/range {v19 .. v20}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$5;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v19

    sget-object v20, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual/range {v19 .. v20}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_1

    :cond_1f
    const-string/jumbo v19, "ManageAppData"

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$5;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v19, v0

    const-string/jumbo v20, "restrict_app_data"

    invoke-virtual/range {v19 .. v20}, Lcom/android/settings/datausage/DataUsageSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$5;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/settings/datausage/DataUsageSummary;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/preference/Preference;->performClick(Landroid/preference/PreferenceScreen;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$5;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v19

    sget-object v20, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual/range {v19 .. v20}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_1

    :cond_20
    const-string/jumbo v19, "WlanUsageView"

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$5;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v19, v0

    const-string/jumbo v20, "wifi_data_usage"

    invoke-virtual/range {v19 .. v20}, Lcom/android/settings/datausage/DataUsageSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$5;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/settings/datausage/DataUsageSummary;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/preference/Preference;->performClick(Landroid/preference/PreferenceScreen;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$5;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v19

    sget-object v20, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual/range {v19 .. v20}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_1

    :cond_21
    const-string/jumbo v19, "NetworkRestrictView"

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$5;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v19, v0

    const-string/jumbo v20, "network_restrictions"

    invoke-virtual/range {v19 .. v20}, Lcom/android/settings/datausage/DataUsageSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$5;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/settings/datausage/DataUsageSummary;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/preference/Preference;->performClick(Landroid/preference/PreferenceScreen;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$5;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v19

    sget-object v20, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual/range {v19 .. v20}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_1

    :cond_22
    const-string/jumbo v19, "DataUsageLimitSettings"

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$5;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v19, v0

    const-string/jumbo v20, "billing_preference_chn"

    invoke-virtual/range {v19 .. v20}, Lcom/android/settings/datausage/DataUsageSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$5;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/settings/datausage/DataUsageSummary;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/preference/Preference;->performClick(Landroid/preference/PreferenceScreen;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$5;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v19

    sget-object v20, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual/range {v19 .. v20}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_1

    :cond_23
    const-string/jumbo v19, "UsedDataPopup"

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_2a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$5;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamsSize()I

    move-result v19

    if-nez v19, :cond_24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$5;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v19, v0

    const-string/jumbo v20, "set_used_data"

    invoke-virtual/range {v19 .. v20}, Lcom/android/settings/datausage/DataUsageSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$5;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/settings/datausage/DataUsageSummary;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/preference/Preference;->performClick(Landroid/preference/PreferenceScreen;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$5;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v19

    const-string/jumbo v20, "DataUsage"

    const-string/jumbo v21, "Exist"

    const-string/jumbo v22, "No"

    invoke-virtual/range {v19 .. v22}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$5;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v19

    const-string/jumbo v20, "DataUsage"

    invoke-virtual/range {v19 .. v20}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$5;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v19

    sget-object v20, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual/range {v19 .. v20}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_1

    :cond_24
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$5;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v19

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamString(I)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_28

    const-string/jumbo v19, "MB"

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_25

    const-string/jumbo v19, "GB"

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_28

    :cond_25
    const/4 v4, 0x0

    :try_start_0
    const-string/jumbo v19, "MB"

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_29

    const-string/jumbo v19, "MB"

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v19

    const/16 v20, 0x0

    move/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v10, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Float;->floatValue()F

    move-result v4

    :cond_26
    :goto_4
    new-instance v18, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$5;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/settings/datausage/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;-><init>(Landroid/content/Context;)V

    invoke-static {v4}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$5;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/settings/datausage/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "data_used_by_check_time"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$5;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/settings/datausage/DataUsageSummary;->getContext()Landroid/content/Context;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/android/settings/datausage/DataUsageSummary;->getDefaultSubscriptionId(Landroid/content/Context;)I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v5}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$5;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/settings/datausage/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "check_time"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$5;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/settings/datausage/DataUsageSummary;->getContext()Landroid/content/Context;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/android/settings/datausage/DataUsageSummary;->getDefaultSubscriptionId(Landroid/content/Context;)I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v6, v7}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$5;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/settings/datausage/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "middle_real_value"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$5;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/settings/datausage/DataUsageSummary;->getContext()Landroid/content/Context;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/android/settings/datausage/DataUsageSummary;->getDefaultSubscriptionId(Landroid/content/Context;)I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    invoke-virtual {v0, v6, v7}, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->getRealTimeValue(J)J

    move-result-wide v22

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-wide/from16 v2, v22

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$5;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary;->summaryLayoutChn:Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;

    move-object/from16 v19, v0

    sget-object v20, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mInfo:Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;

    invoke-virtual/range {v19 .. v20}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->updateUI(Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$5;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary;->summaryLayoutChn:Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->updatePolicy()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$5;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v19

    if-eqz v19, :cond_27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$5;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v19

    const-string/jumbo v20, "DataUsage"

    const-string/jumbo v21, "Valid"

    const-string/jumbo v22, "Yes"

    invoke-virtual/range {v19 .. v22}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$5;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v19

    const-string/jumbo v20, "DataUsage"

    invoke-virtual/range {v19 .. v20}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_27
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$5;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v19

    sget-object v20, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual/range {v19 .. v20}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception v8

    const-string/jumbo v19, "DataUsageSummary"

    const-string/jumbo v20, "could not persist insert byte"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v8}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$5;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v19, v0

    const-string/jumbo v20, "set_used_data"

    invoke-virtual/range {v19 .. v20}, Lcom/android/settings/datausage/DataUsageSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$5;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/settings/datausage/DataUsageSummary;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/preference/Preference;->performClick(Landroid/preference/PreferenceScreen;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$5;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v19

    const-string/jumbo v20, "DataUsage"

    const-string/jumbo v21, "Valid"

    const-string/jumbo v22, "No"

    invoke-virtual/range {v19 .. v22}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$5;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v19

    const-string/jumbo v20, "DataUsage"

    invoke-virtual/range {v19 .. v20}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$5;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v19

    sget-object v20, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual/range {v19 .. v20}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_1

    :cond_28
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$5;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v19, v0

    const-string/jumbo v20, "set_used_data"

    invoke-virtual/range {v19 .. v20}, Lcom/android/settings/datausage/DataUsageSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$5;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/settings/datausage/DataUsageSummary;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/preference/Preference;->performClick(Landroid/preference/PreferenceScreen;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$5;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v19

    const-string/jumbo v20, "DataUsage"

    const-string/jumbo v21, "Valid"

    const-string/jumbo v22, "No"

    invoke-virtual/range {v19 .. v22}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$5;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v19

    const-string/jumbo v20, "DataUsage"

    invoke-virtual/range {v19 .. v20}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$5;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v19

    sget-object v20, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual/range {v19 .. v20}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_1

    :cond_29
    :try_start_1
    const-string/jumbo v19, "GB"

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_26

    const-string/jumbo v19, "GB"

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v19

    const/16 v20, 0x0

    move/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v10, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Float;->floatValue()F
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v4

    const/high16 v19, 0x44800000    # 1024.0f

    mul-float v4, v4, v19

    goto/16 :goto_4

    :cond_2a
    const-string/jumbo v19, "DataCompressionOn"

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_2d

    if-nez v15, :cond_2c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$5;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v19

    if-eqz v19, :cond_2b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$5;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v19

    const-string/jumbo v20, "DataUsage"

    const-string/jumbo v21, "AlreadyON"

    const-string/jumbo v22, "No"

    invoke-virtual/range {v19 .. v22}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$5;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v19

    const-string/jumbo v20, "DataUsage"

    invoke-virtual/range {v19 .. v20}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_2b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$5;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v19, v0

    const-string/jumbo v20, "data_saving_chn"

    invoke-virtual/range {v19 .. v20}, Lcom/android/settings/datausage/DataUsageSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$5;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/settings/datausage/DataUsageSummary;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/preference/Preference;->performClick(Landroid/preference/PreferenceScreen;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$5;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v19

    sget-object v20, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual/range {v19 .. v20}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_1

    :cond_2c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$5;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v19

    const-string/jumbo v20, "DataUsage"

    const-string/jumbo v21, "AlreadyON"

    const-string/jumbo v22, "Yes"

    invoke-virtual/range {v19 .. v22}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$5;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v19

    const-string/jumbo v20, "DataUsage"

    invoke-virtual/range {v19 .. v20}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$5;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v19

    sget-object v20, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual/range {v19 .. v20}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_1

    :cond_2d
    const-string/jumbo v19, "DataCompressionOff"

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_3

    const/16 v19, 0x1

    move/from16 v0, v19

    if-ne v15, v0, :cond_2f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$5;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v19

    if-eqz v19, :cond_2e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$5;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v19

    const-string/jumbo v20, "DataUsage"

    const-string/jumbo v21, "AlreadyOff"

    const-string/jumbo v22, "No"

    invoke-virtual/range {v19 .. v22}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$5;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v19

    const-string/jumbo v20, "DataUsage"

    invoke-virtual/range {v19 .. v20}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_2e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$5;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v19, v0

    const-string/jumbo v20, "data_saving_chn"

    invoke-virtual/range {v19 .. v20}, Lcom/android/settings/datausage/DataUsageSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$5;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/settings/datausage/DataUsageSummary;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/preference/Preference;->performClick(Landroid/preference/PreferenceScreen;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$5;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v19

    sget-object v20, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual/range {v19 .. v20}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_1

    :cond_2f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$5;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v19

    const-string/jumbo v20, "DataUsage"

    const-string/jumbo v21, "AlreadyOff"

    const-string/jumbo v22, "Yes"

    invoke-virtual/range {v19 .. v22}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$5;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v19

    const-string/jumbo v20, "DataUsage"

    invoke-virtual/range {v19 .. v20}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$5;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v19

    sget-object v20, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual/range {v19 .. v20}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_1
.end method
