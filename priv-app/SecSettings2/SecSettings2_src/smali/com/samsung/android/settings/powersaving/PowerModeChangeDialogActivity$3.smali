.class Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$3;
.super Ljava/lang/Object;
.source "PowerModeChangeDialogActivity.java"

# interfaces
.implements Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$3;->this$0:Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateReceived()V
    .locals 7

    const/4 v1, 0x1

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$3;->this$0:Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;

    invoke-static {v4}, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->-get5(Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "PowerSavingModePopupConfirm"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$3;->this$0:Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;

    invoke-static {v4}, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->-get7(Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$3;->this$0:Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;

    invoke-static {v4}, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->-get8(Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;)I

    move-result v4

    if-ne v4, v1, :cond_1

    :goto_0
    if-eqz v1, :cond_2

    iget-object v3, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$3;->this$0:Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;

    invoke-static {v3}, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->-get5(Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "PowerSavingModeMID"

    const-string/jumbo v5, "AlreadyApplied"

    const-string/jumbo v6, "Yes"

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$3;->this$0:Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;

    invoke-static {v3}, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->-get5(Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$3;->this$0:Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;

    invoke-static {v4}, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->-get2(Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$3;->this$0:Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;

    invoke-static {v3}, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->-get5(Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    move v1, v3

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$3;->this$0:Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;

    invoke-static {v3}, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->-get3(Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/settings/boostmode/BoostUtils;->getPerformanceBoosterMode(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_4

    iget-object v3, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$3;->this$0:Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;

    invoke-static {v3}, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->-get5(Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$3;->this$0:Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;

    invoke-static {v3}, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->-get5(Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "PerformanceMode"

    const-string/jumbo v5, "AlreadyOn"

    const-string/jumbo v6, "No"

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$3;->this$0:Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;

    invoke-static {v3}, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->-get5(Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "Battery"

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_3
    iget-object v3, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$3;->this$0:Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;

    invoke-static {v3}, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->-get1(Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;)Lcom/samsung/android/settings/widget/RoundButtonView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/widget/RoundButtonView;->performClick()Z

    iget-object v3, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$3;->this$0:Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;

    invoke-static {v3}, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->-get5(Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto :goto_1

    :cond_4
    iget-object v3, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$3;->this$0:Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;

    invoke-static {v3}, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->-get5(Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "PerformanceMode"

    const-string/jumbo v5, "AlreadyOn"

    const-string/jumbo v6, "Yes"

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$3;->this$0:Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;

    invoke-static {v3}, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->-get5(Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "PerformanceMode"

    iget-object v5, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$3;->this$0:Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;

    invoke-static {v5}, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->-get3(Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v0}, Lcom/samsung/android/settings/boostmode/BoostUtils;->getPerfModeTitle(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgResultParam(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$3;->this$0:Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;

    invoke-static {v3}, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->-get5(Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$3;->this$0:Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;

    invoke-static {v4}, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->-get2(Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$3;->this$0:Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;

    invoke-static {v3}, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->-get1(Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;)Lcom/samsung/android/settings/widget/RoundButtonView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/widget/RoundButtonView;->performClick()Z

    iget-object v3, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$3;->this$0:Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;

    invoke-static {v3}, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->-get5(Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_1

    :cond_5
    const-string/jumbo v3, "UltraPowerSavingModeHome"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$3;->this$0:Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;

    invoke-static {v3}, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->-get3(Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/settings/boostmode/BoostUtils;->getPerformanceBoosterMode(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_7

    iget-object v3, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$3;->this$0:Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;

    invoke-static {v3}, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->-get5(Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$3;->this$0:Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;

    invoke-static {v3}, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->-get5(Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "PerformanceMode"

    const-string/jumbo v5, "AlreadyOn"

    const-string/jumbo v6, "No"

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$3;->this$0:Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;

    invoke-static {v3}, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->-get5(Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "Battery"

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_6
    iget-object v3, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$3;->this$0:Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;

    invoke-static {v3}, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->-get1(Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;)Lcom/samsung/android/settings/widget/RoundButtonView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/widget/RoundButtonView;->performClick()Z

    iget-object v3, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$3;->this$0:Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;

    invoke-static {v3}, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->-get5(Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_1

    :cond_7
    iget-object v3, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$3;->this$0:Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;

    invoke-static {v3}, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->-get5(Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "PerformanceMode"

    const-string/jumbo v5, "AlreadyOn"

    const-string/jumbo v6, "Yes"

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$3;->this$0:Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;

    invoke-static {v3}, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->-get5(Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "PerformanceMode"

    iget-object v5, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$3;->this$0:Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;

    invoke-static {v5}, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->-get3(Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v0}, Lcom/samsung/android/settings/boostmode/BoostUtils;->getPerfModeTitle(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgResultParam(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$3;->this$0:Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;

    invoke-static {v3}, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->-get5(Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$3;->this$0:Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;

    invoke-static {v4}, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->-get2(Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$3;->this$0:Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;

    invoke-static {v3}, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->-get1(Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;)Lcom/samsung/android/settings/widget/RoundButtonView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/widget/RoundButtonView;->performClick()Z

    iget-object v3, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$3;->this$0:Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;

    invoke-static {v3}, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->-get5(Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_1

    :cond_8
    const-string/jumbo v3, "PowerSavingModePopupCustomize"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    const-string/jumbo v3, "UltraPowerSavingModePopupCustomize"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_9
    iget-object v3, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$3;->this$0:Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;

    invoke-static {v3}, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->-get5(Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v3

    if-eqz v3, :cond_a

    iget-object v3, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$3;->this$0:Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;

    invoke-static {v3}, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->-get5(Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_a
    iget-object v3, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$3;->this$0:Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;

    invoke-static {v3}, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->-get4(Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->performClick()Z

    iget-object v3, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$3;->this$0:Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;

    invoke-static {v3}, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->-get5(Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_1
.end method
