.class Lcom/samsung/android/settings/DeviceMaintenanceSettings$3;
.super Ljava/lang/Object;
.source "DeviceMaintenanceSettings.java"

# interfaces
.implements Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/DeviceMaintenanceSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/DeviceMaintenanceSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/DeviceMaintenanceSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/DeviceMaintenanceSettings$3;->this$0:Lcom/samsung/android/settings/DeviceMaintenanceSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateReceived()V
    .locals 3

    iget-object v1, p0, Lcom/samsung/android/settings/DeviceMaintenanceSettings$3;->this$0:Lcom/samsung/android/settings/DeviceMaintenanceSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/DeviceMaintenanceSettings;->-get1(Lcom/samsung/android/settings/DeviceMaintenanceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Battery"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settings/DeviceMaintenanceSettings$3;->this$0:Lcom/samsung/android/settings/DeviceMaintenanceSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/DeviceMaintenanceSettings;->-get1(Lcom/samsung/android/settings/DeviceMaintenanceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/DeviceMaintenanceSettings$3;->this$0:Lcom/samsung/android/settings/DeviceMaintenanceSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/DeviceMaintenanceSettings;->-get1(Lcom/samsung/android/settings/DeviceMaintenanceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/DeviceMaintenanceSettings$3;->this$0:Lcom/samsung/android/settings/DeviceMaintenanceSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/DeviceMaintenanceSettings;->-get1(Lcom/samsung/android/settings/DeviceMaintenanceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    iget-object v1, p0, Lcom/samsung/android/settings/DeviceMaintenanceSettings$3;->this$0:Lcom/samsung/android/settings/DeviceMaintenanceSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/DeviceMaintenanceSettings;->-get0(Lcom/samsung/android/settings/DeviceMaintenanceSettings;)Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/DeviceMaintenanceSettings$3;->this$0:Lcom/samsung/android/settings/DeviceMaintenanceSettings;

    invoke-virtual {v2}, Lcom/samsung/android/settings/DeviceMaintenanceSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->performClick(Landroid/preference/PreferenceScreen;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string/jumbo v1, "Performance"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/samsung/android/settings/DeviceMaintenanceSettings$3;->this$0:Lcom/samsung/android/settings/DeviceMaintenanceSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/DeviceMaintenanceSettings;->-get1(Lcom/samsung/android/settings/DeviceMaintenanceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/settings/DeviceMaintenanceSettings$3;->this$0:Lcom/samsung/android/settings/DeviceMaintenanceSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/DeviceMaintenanceSettings;->-get1(Lcom/samsung/android/settings/DeviceMaintenanceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/settings/DeviceMaintenanceSettings$3;->this$0:Lcom/samsung/android/settings/DeviceMaintenanceSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/DeviceMaintenanceSettings;->-get1(Lcom/samsung/android/settings/DeviceMaintenanceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    iget-object v1, p0, Lcom/samsung/android/settings/DeviceMaintenanceSettings$3;->this$0:Lcom/samsung/android/settings/DeviceMaintenanceSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/DeviceMaintenanceSettings;->-get3(Lcom/samsung/android/settings/DeviceMaintenanceSettings;)Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/DeviceMaintenanceSettings$3;->this$0:Lcom/samsung/android/settings/DeviceMaintenanceSettings;

    invoke-virtual {v2}, Lcom/samsung/android/settings/DeviceMaintenanceSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->performClick(Landroid/preference/PreferenceScreen;)V

    goto :goto_0

    :cond_4
    const-string/jumbo v1, "Storage"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/samsung/android/settings/DeviceMaintenanceSettings$3;->this$0:Lcom/samsung/android/settings/DeviceMaintenanceSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/DeviceMaintenanceSettings;->-get1(Lcom/samsung/android/settings/DeviceMaintenanceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/samsung/android/settings/DeviceMaintenanceSettings$3;->this$0:Lcom/samsung/android/settings/DeviceMaintenanceSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/DeviceMaintenanceSettings;->-get1(Lcom/samsung/android/settings/DeviceMaintenanceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_5
    iget-object v1, p0, Lcom/samsung/android/settings/DeviceMaintenanceSettings$3;->this$0:Lcom/samsung/android/settings/DeviceMaintenanceSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/DeviceMaintenanceSettings;->-get1(Lcom/samsung/android/settings/DeviceMaintenanceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    iget-object v1, p0, Lcom/samsung/android/settings/DeviceMaintenanceSettings$3;->this$0:Lcom/samsung/android/settings/DeviceMaintenanceSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/DeviceMaintenanceSettings;->-get4(Lcom/samsung/android/settings/DeviceMaintenanceSettings;)Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/DeviceMaintenanceSettings$3;->this$0:Lcom/samsung/android/settings/DeviceMaintenanceSettings;

    invoke-virtual {v2}, Lcom/samsung/android/settings/DeviceMaintenanceSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->performClick(Landroid/preference/PreferenceScreen;)V

    goto :goto_0

    :cond_6
    const-string/jumbo v1, "RAM"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/DeviceMaintenanceSettings$3;->this$0:Lcom/samsung/android/settings/DeviceMaintenanceSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/DeviceMaintenanceSettings;->-get1(Lcom/samsung/android/settings/DeviceMaintenanceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/samsung/android/settings/DeviceMaintenanceSettings$3;->this$0:Lcom/samsung/android/settings/DeviceMaintenanceSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/DeviceMaintenanceSettings;->-get1(Lcom/samsung/android/settings/DeviceMaintenanceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_7
    iget-object v1, p0, Lcom/samsung/android/settings/DeviceMaintenanceSettings$3;->this$0:Lcom/samsung/android/settings/DeviceMaintenanceSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/DeviceMaintenanceSettings;->-get1(Lcom/samsung/android/settings/DeviceMaintenanceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    iget-object v1, p0, Lcom/samsung/android/settings/DeviceMaintenanceSettings$3;->this$0:Lcom/samsung/android/settings/DeviceMaintenanceSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/DeviceMaintenanceSettings;->-get2(Lcom/samsung/android/settings/DeviceMaintenanceSettings;)Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/DeviceMaintenanceSettings$3;->this$0:Lcom/samsung/android/settings/DeviceMaintenanceSettings;

    invoke-virtual {v2}, Lcom/samsung/android/settings/DeviceMaintenanceSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->performClick(Landroid/preference/PreferenceScreen;)V

    goto/16 :goto_0
.end method
