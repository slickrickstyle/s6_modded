.class Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings$2;
.super Ljava/lang/Object;
.source "SoftwareInfoSettings.java"

# interfaces
.implements Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings$2;->this$0:Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateReceived()V
    .locals 5

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings$2;->this$0:Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->-get0(Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "AndroidVersion"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings$2;->this$0:Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;

    invoke-virtual {v1}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->getListView()Landroid/widget/ListView;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings$2;->this$0:Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;

    const-string/jumbo v3, "firmware_version"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v2}, Landroid/preference/Preference;->getOrder()I

    move-result v2

    invoke-virtual {v1, v2, v4}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings$2;->this$0:Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->-get0(Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings$2;->this$0:Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->-get0(Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings$2;->this$0:Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->-get0(Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string/jumbo v1, "BasebandVersion"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string/jumbo v1, "Baseband version"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings$2;->this$0:Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;

    invoke-virtual {v1}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->getListView()Landroid/widget/ListView;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings$2;->this$0:Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;

    const-string/jumbo v3, "baseband_version"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v2}, Landroid/preference/Preference;->getOrder()I

    move-result v2

    invoke-virtual {v1, v2, v4}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings$2;->this$0:Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->-get0(Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings$2;->this$0:Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->-get0(Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_4
    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings$2;->this$0:Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->-get0(Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto :goto_0

    :cond_5
    const-string/jumbo v1, "KernelVersion"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings$2;->this$0:Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;

    invoke-virtual {v1}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->getListView()Landroid/widget/ListView;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings$2;->this$0:Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;

    const-string/jumbo v3, "kernel_version"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v2}, Landroid/preference/Preference;->getOrder()I

    move-result v2

    invoke-virtual {v1, v2, v4}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings$2;->this$0:Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->-get0(Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings$2;->this$0:Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->-get0(Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_6
    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings$2;->this$0:Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->-get0(Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    :cond_7
    const-string/jumbo v1, "BuildNumber"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings$2;->this$0:Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;

    invoke-virtual {v1}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->getListView()Landroid/widget/ListView;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings$2;->this$0:Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;

    const-string/jumbo v3, "build_number"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v2}, Landroid/preference/Preference;->getOrder()I

    move-result v2

    invoke-virtual {v1, v2, v4}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings$2;->this$0:Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->-get0(Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings$2;->this$0:Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->-get0(Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_8
    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings$2;->this$0:Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->-get0(Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    :cond_9
    const-string/jumbo v1, "SEforAndroidStatus"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings$2;->this$0:Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;

    invoke-virtual {v1}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->getListView()Landroid/widget/ListView;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings$2;->this$0:Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;

    const-string/jumbo v3, "selinux_status"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v2}, Landroid/preference/Preference;->getOrder()I

    move-result v2

    invoke-virtual {v1, v2, v4}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings$2;->this$0:Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->-get0(Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings$2;->this$0:Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->-get0(Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_a
    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings$2;->this$0:Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->-get0(Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    :cond_b
    const-string/jumbo v1, "SecuritySoftwareVersion"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings$2;->this$0:Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;

    invoke-virtual {v1}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->getListView()Landroid/widget/ListView;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings$2;->this$0:Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;

    const-string/jumbo v3, "security_sw_version"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v2}, Landroid/preference/Preference;->getOrder()I

    move-result v2

    invoke-virtual {v1, v2, v4}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings$2;->this$0:Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->-get0(Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v1

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings$2;->this$0:Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->-get0(Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_c
    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings$2;->this$0:Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->-get0(Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    :cond_d
    const-string/jumbo v1, "KnoxVersion"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    const-string/jumbo v1, "Knox version"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    :cond_e
    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings$2;->this$0:Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;

    invoke-virtual {v1}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->getListView()Landroid/widget/ListView;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings$2;->this$0:Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;

    const-string/jumbo v3, "knox_version"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v2}, Landroid/preference/Preference;->getOrder()I

    move-result v2

    invoke-virtual {v1, v2, v4}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings$2;->this$0:Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->-get0(Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v1

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings$2;->this$0:Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->-get0(Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_f
    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings$2;->this$0:Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->-get0(Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    :cond_10
    const-string/jumbo v1, "ServiceProviderSWver"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_14

    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings$2;->this$0:Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;

    iget-object v1, v1, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "com.samsung.android.app.omcagent"

    invoke-static {v1, v2}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings$2;->this$0:Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;

    invoke-virtual {v1}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->getListView()Landroid/widget/ListView;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings$2;->this$0:Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;

    const-string/jumbo v3, "omc_version"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v2}, Landroid/preference/Preference;->getOrder()I

    move-result v2

    invoke-virtual {v1, v2, v4}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings$2;->this$0:Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->-get0(Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v1

    if-eqz v1, :cond_11

    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings$2;->this$0:Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->-get0(Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "OMCPackage"

    const-string/jumbo v3, "Available"

    const-string/jumbo v4, "yes"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings$2;->this$0:Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->-get0(Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_11
    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings$2;->this$0:Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->-get0(Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    :cond_12
    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings$2;->this$0:Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->-get0(Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v1

    if-eqz v1, :cond_13

    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings$2;->this$0:Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->-get0(Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "OMCPackage"

    const-string/jumbo v3, "Available"

    const-string/jumbo v4, "no"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings$2;->this$0:Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->-get0(Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_13
    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings$2;->this$0:Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->-get0(Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    :cond_14
    const-string/jumbo v1, "AndroidSecurityPatchLevel"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings$2;->this$0:Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;

    invoke-virtual {v1}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->getListView()Landroid/widget/ListView;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings$2;->this$0:Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;

    const-string/jumbo v3, "security_patch"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v2}, Landroid/preference/Preference;->getOrder()I

    move-result v2

    invoke-virtual {v1, v2, v4}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings$2;->this$0:Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->-get0(Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v1

    if-eqz v1, :cond_15

    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings$2;->this$0:Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->-get0(Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_15
    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings$2;->this$0:Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->-get0(Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0
.end method
