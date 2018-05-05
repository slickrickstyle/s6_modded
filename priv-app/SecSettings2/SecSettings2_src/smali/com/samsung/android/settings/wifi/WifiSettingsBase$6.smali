.class Lcom/samsung/android/settings/wifi/WifiSettingsBase$6;
.super Ljava/lang/Object;
.source "WifiSettingsBase.java"

# interfaces
.implements Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/wifi/WifiSettingsBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$6;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateReceived()V
    .locals 14

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$6;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->-get0(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v2, "WifiSettingsBase"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mEmCallback, stateId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "WiFiTurnOn"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$6;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    iget-object v2, v2, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$6;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    iget-object v2, v2, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$6;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->-get0(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$6;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->-get0(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "WiFi"

    const-string/jumbo v4, "AlreadyON"

    const-string/jumbo v5, "no"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$6;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->-get0(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "WiFiSettings"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$6;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->-get0(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$6;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->-get0(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "WiFi"

    const-string/jumbo v4, "AlreadyON"

    const-string/jumbo v5, "yes"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$6;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->-get0(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "WiFiSettings"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$6;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->-get0(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto :goto_0

    :cond_3
    const-string/jumbo v2, "WiFiTurnOff"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$6;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    iget-object v2, v2, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$6;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    iget-object v2, v2, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$6;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->-get0(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$6;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->-get0(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "WiFi"

    const-string/jumbo v4, "AlreadyOFF"

    const-string/jumbo v5, "no"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$6;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->-get0(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "WiFiSettings"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_4
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$6;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->-get0(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$6;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->-get0(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "WiFi"

    const-string/jumbo v4, "AlreadyOFF"

    const-string/jumbo v5, "yes"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$6;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->-get0(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "WiFiSettings"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$6;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->-get0(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    :cond_6
    const-string/jumbo v2, "WiFiScan"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$6;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    iget-object v2, v2, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$6;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    invoke-virtual {v2}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->startScan()V

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$6;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->-get0(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$6;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->-get0(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "WiFi"

    const-string/jumbo v4, "Searching"

    const-string/jumbo v5, "yes"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$6;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->-get0(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "WiFiSettings"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_7
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$6;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->-get0(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    :cond_8
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$6;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->-get0(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "WiFi"

    const-string/jumbo v4, "Searching"

    const-string/jumbo v5, "no"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$6;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->-get0(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "WiFiSettings"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$6;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->-get0(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    :cond_9
    const-string/jumbo v2, "WiFiSelectScanedAp"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$6;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->-get0(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamString(I)Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v2, "WifiSettingsBase"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mEmCallback, param: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v11, :cond_b

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$6;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    iget-object v2, v2, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v2

    if-eqz v2, :cond_b

    const/4 v9, 0x0

    const/4 v10, -0x1

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$6;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    iget-object v2, v2, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-virtual {v2}, Lcom/android/settingslib/wifi/WifiTracker;->getAccessPoints()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_a
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/settingslib/wifi/AccessPoint;->getSsidStr()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    const-string/jumbo v2, "WifiSettingsBase"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mEmCallback, getSsidStr: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/settingslib/wifi/AccessPoint;->getSsidStr()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x1

    invoke-virtual {v1}, Lcom/android/settingslib/wifi/AccessPoint;->getNetworkId()I

    move-result v10

    invoke-virtual {v1}, Lcom/android/settingslib/wifi/AccessPoint;->isActive()Z

    move-result v2

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$6;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->-get0(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "Name"

    const-string/jumbo v4, "AlreadyConnected"

    const-string/jumbo v5, "yes"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$6;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->-get0(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "WiFiSettings"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$6;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->-get0(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    return-void

    :cond_b
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$6;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->-get0(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "Name"

    const-string/jumbo v4, "Exists"

    const-string/jumbo v5, "no"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$6;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->-get0(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "WiFiSettings"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$6;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->-get0(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    return-void

    :cond_c
    const/4 v2, -0x1

    if-eq v10, v2, :cond_e

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$6;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    invoke-virtual {v2, v10}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->connect(I)V

    :goto_1
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$6;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->-get0(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$6;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->-get0(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "Name"

    const-string/jumbo v4, "Connected"

    const-string/jumbo v5, "yes"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$6;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->-get0(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "WiFiSettings"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_d
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$6;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->-get0(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    return-void

    :cond_e
    new-instance v0, Lcom/android/settings/wifi/LongPressAccessPointPreference;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$6;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->-wrap1(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$6;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    iget-object v3, v3, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mUserBadgeCache:Lcom/samsung/android/settingslib/wifi/AccessPointPreference$UserBadgeCache;

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$6;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/wifi/LongPressAccessPointPreference;-><init>(Lcom/android/settingslib/wifi/AccessPoint;Landroid/content/Context;Lcom/samsung/android/settingslib/wifi/AccessPointPreference$UserBadgeCache;ZLandroid/app/Fragment;)V

    if-eqz v0, :cond_f

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$6;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$6;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    invoke-virtual {v3}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    goto :goto_1

    :cond_f
    const-string/jumbo v2, "WifiSettingsBase"

    const-string/jumbo v3, "preference is nul"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$6;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->-get0(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "Name"

    const-string/jumbo v4, "Connected"

    const-string/jumbo v5, "no"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$6;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->-get0(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "WiFiSettings"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$6;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->-get0(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_1

    :cond_10
    if-nez v9, :cond_1

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$6;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->-get0(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "Name"

    const-string/jumbo v4, "Match"

    const-string/jumbo v5, "no"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$6;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->-get0(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "WiFiSettings"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$6;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->-get0(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    return-void

    :cond_11
    const-string/jumbo v2, "WiFiRemoveConnectAp"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$6;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    iget-object v2, v2, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v2

    if-eqz v2, :cond_13

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$6;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    iget-object v2, v2, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-virtual {v2}, Lcom/android/settingslib/wifi/WifiTracker;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_13

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$6;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    invoke-virtual {v2}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->disconnect()V

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$6;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->-get0(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_12

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$6;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->-get0(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "WiFi"

    const-string/jumbo v4, "AlreadyDisconnected"

    const-string/jumbo v5, "no"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$6;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->-get0(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "WiFiSettings"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_12
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$6;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->-get0(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    :cond_13
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$6;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->-get0(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "WiFi"

    const-string/jumbo v4, "AlreadyDisconnected"

    const-string/jumbo v5, "yes"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$6;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->-get0(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "WiFiSettings"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$6;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->-get0(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    :cond_14
    const-string/jumbo v2, "WiFiSelectConnectedAp"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$6;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    iget-object v2, v2, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v2

    if-eqz v2, :cond_16

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$6;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    iget-object v2, v2, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v13

    invoke-virtual {v13}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v10

    const/4 v2, -0x1

    if-eq v10, v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$6;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    iget-object v2, v2, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2, v10}, Landroid/net/wifi/WifiManager;->getSpecificNetwork(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v8

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$6;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$6;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    invoke-virtual {v3, v8}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->findAccessPoint(Landroid/net/wifi/WifiConfiguration;)Lcom/android/settingslib/wifi/AccessPoint;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->showDialogToDisplayInfo(Lcom/android/settingslib/wifi/AccessPoint;)V

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$6;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->-get0(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_15

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$6;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->-get0(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "WiFi"

    const-string/jumbo v4, "Connected"

    const-string/jumbo v5, "yes"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$6;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->-get0(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "WiFiSettings"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_15
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$6;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->-get0(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    :cond_16
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$6;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->-get0(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "WiFi"

    const-string/jumbo v4, "Connected"

    const-string/jumbo v5, "no"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$6;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->-get0(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "WiFiSettings"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$6;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->-get0(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    :cond_17
    const-string/jumbo v2, "WiFiAdvanced"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$6;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    invoke-virtual {v2}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->startWifiAdvancedScreen()V

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$6;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->-get0(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_18

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$6;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->-get0(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "WiFiAdvanced"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_18
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$6;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->-get0(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    :cond_19
    const-string/jumbo v2, "WiFiDirectSettings"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$6;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    iget-object v2, v2, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v2

    if-nez v2, :cond_1a

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$6;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    iget-object v2, v2, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    :cond_1a
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$6;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->-wrap2(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)Z

    move-result v2

    if-eqz v2, :cond_1b

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$6;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->-get0(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "MobileHotspot"

    const-string/jumbo v4, "AlreadyON"

    const-string/jumbo v5, "yes"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$6;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->-get0(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "WiFiSettings"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$6;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->-get0(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    :goto_2
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$6;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    invoke-virtual {v2}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->onP2pMenuPressed()V

    goto/16 :goto_0

    :cond_1b
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$6;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->-get0(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_1c

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$6;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->-get0(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "MobileHotspot"

    const-string/jumbo v4, "AlreadyON"

    const-string/jumbo v5, "no"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$6;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->-get0(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "WiFiDirectSettings"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$6;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->-get0(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto :goto_2

    :cond_1c
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$6;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->-get0(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto :goto_2
.end method
