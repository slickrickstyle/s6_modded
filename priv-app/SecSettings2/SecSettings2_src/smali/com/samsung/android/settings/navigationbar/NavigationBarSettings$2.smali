.class Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$2;
.super Ljava/lang/Object;
.source "NavigationBarSettings.java"

# interfaces
.implements Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$2;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateReceived()V
    .locals 5

    iget-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$2;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->-get1(Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "NavigationBarDefaultBackgroundColor"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$2;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->-get0(Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;)Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->isDefaultBackgroundColor()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$2;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->-get0(Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;)Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->setDefaultBackgroundColor()V

    iget-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$2;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->-get1(Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$2;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->-get1(Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "NavigationBarBackgroundColor"

    const-string/jumbo v3, "AlreadySet"

    const-string/jumbo v4, "No"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$2;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->-get1(Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "NavigationBar"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$2;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->-get1(Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$2;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->-get1(Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "NavigationBarBackgroundColor"

    const-string/jumbo v3, "AlreadySet"

    const-string/jumbo v4, "Yes"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$2;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->-get1(Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "NavigationBar"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$2;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->-get1(Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto :goto_0

    :cond_3
    const-string/jumbo v1, "ButtonLayoutRecentsHomeBack"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$2;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->-get2(Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;)Lcom/android/settings/SecDropDownPreference;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/SecDropDownPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$2;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->-get2(Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;)Lcom/android/settings/SecDropDownPreference;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/settings/SecDropDownPreference;->setValueIndex(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$2;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->-get1(Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$2;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->-get1(Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "ButtonLayoutRecentsHomeBack"

    const-string/jumbo v3, "AlreadySet"

    const-string/jumbo v4, "No"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$2;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->-get1(Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "NavigationBar"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_4
    iget-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$2;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->-get1(Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    :cond_5
    iget-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$2;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->-get1(Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "ButtonLayoutRecentsHomeBack"

    const-string/jumbo v3, "AlreadySet"

    const-string/jumbo v4, "Yes"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$2;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->-get1(Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "NavigationBar"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$2;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->-get1(Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    :cond_6
    const-string/jumbo v1, "ButtonLayoutBackHomeRecents"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$2;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->-get2(Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;)Lcom/android/settings/SecDropDownPreference;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/SecDropDownPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$2;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->-get2(Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;)Lcom/android/settings/SecDropDownPreference;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/settings/SecDropDownPreference;->setValueIndex(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$2;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->-get1(Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$2;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->-get1(Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "ButtonLayoutBackHomeRecents"

    const-string/jumbo v3, "AlreadySet"

    const-string/jumbo v4, "No"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$2;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->-get1(Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "NavigationBar"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_7
    iget-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$2;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->-get1(Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    :cond_8
    iget-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$2;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->-get1(Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "ButtonLayoutBackHomeRecents"

    const-string/jumbo v3, "AlreadySet"

    const-string/jumbo v4, "Yes"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$2;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->-get1(Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "NavigationBar"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$2;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->-get1(Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0
.end method
