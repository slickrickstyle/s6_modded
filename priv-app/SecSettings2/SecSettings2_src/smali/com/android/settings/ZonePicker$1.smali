.class Lcom/android/settings/ZonePicker$1;
.super Ljava/lang/Object;
.source "ZonePicker.java"

# interfaces
.implements Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/ZonePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/ZonePicker;


# direct methods
.method constructor <init>(Lcom/android/settings/ZonePicker;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/ZonePicker$1;->this$0:Lcom/android/settings/ZonePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateReceived()V
    .locals 12

    const/4 v9, 0x0

    iget-object v8, p0, Lcom/android/settings/ZonePicker$1;->this$0:Lcom/android/settings/ZonePicker;

    invoke-static {v8}, Lcom/android/settings/ZonePicker;->-get0(Lcom/android/settings/ZonePicker;)Landroid/widget/SimpleAdapter;

    move-result-object v0

    iget-object v8, p0, Lcom/android/settings/ZonePicker$1;->this$0:Lcom/android/settings/ZonePicker;

    iget-object v8, v8, Lcom/android/settings/ZonePicker;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/ZonePicker$1;->this$0:Lcom/android/settings/ZonePicker;

    invoke-virtual {v8, v0}, Lcom/android/settings/ZonePicker;->setListAdapter(Landroid/widget/ListAdapter;)V

    const-string/jumbo v8, "SetHomeTimeZoneSet"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/settings/ZonePicker$1;->this$0:Lcom/android/settings/ZonePicker;

    iget-object v8, v8, Lcom/android/settings/ZonePicker;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamsSize()I

    move-result v8

    if-eqz v8, :cond_5

    iget-object v8, p0, Lcom/android/settings/ZonePicker$1;->this$0:Lcom/android/settings/ZonePicker;

    iget-object v8, v8, Lcom/android/settings/ZonePicker;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/ZonePicker;->getTimeZoneIndexForBixby(Landroid/widget/SimpleAdapter;Ljava/lang/String;)I

    move-result v4

    const/4 v8, -0x1

    if-ne v4, v8, :cond_1

    iget-object v8, p0, Lcom/android/settings/ZonePicker$1;->this$0:Lcom/android/settings/ZonePicker;

    iget-object v8, v8, Lcom/android/settings/ZonePicker;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v9, "CityName"

    const-string/jumbo v10, "match"

    const-string/jumbo v11, "no"

    invoke-virtual {v8, v9, v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/settings/ZonePicker$1;->this$0:Lcom/android/settings/ZonePicker;

    iget-object v8, v8, Lcom/android/settings/ZonePicker;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v9, "SetHomeTimeZone"

    invoke-virtual {v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/settings/ZonePicker$1;->this$0:Lcom/android/settings/ZonePicker;

    iget-object v8, v8, Lcom/android/settings/ZonePicker;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v9, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v2, -0x1

    iget-object v8, p0, Lcom/android/settings/ZonePicker$1;->this$0:Lcom/android/settings/ZonePicker;

    invoke-virtual {v8}, Lcom/android/settings/ZonePicker;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "homecity_timezone"

    invoke-static {v8, v9}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-static {v5}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v8

    invoke-static {v0, v8}, Lcom/android/settings/ZonePicker;->getTimeZoneIndex(Landroid/widget/SimpleAdapter;Ljava/util/TimeZone;)I

    move-result v2

    :cond_2
    invoke-virtual {v0, v2}, Landroid/widget/SimpleAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/HashMap;

    const-string/jumbo v8, "name"

    invoke-virtual {v6, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/android/settings/ZonePicker$1;->this$0:Lcom/android/settings/ZonePicker;

    iget-object v8, v8, Lcom/android/settings/ZonePicker;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v9, "CityName"

    const-string/jumbo v10, "AlreadySet"

    const-string/jumbo v11, "yes"

    invoke-virtual {v8, v9, v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/settings/ZonePicker$1;->this$0:Lcom/android/settings/ZonePicker;

    iget-object v8, v8, Lcom/android/settings/ZonePicker;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v9, "CityName"

    invoke-virtual {v8, v9, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgResultParam(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/settings/ZonePicker$1;->this$0:Lcom/android/settings/ZonePicker;

    iget-object v8, v8, Lcom/android/settings/ZonePicker;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v9, "SetHomeTimeZone"

    invoke-virtual {v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/settings/ZonePicker$1;->this$0:Lcom/android/settings/ZonePicker;

    iget-object v8, v8, Lcom/android/settings/ZonePicker;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v9, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto :goto_0

    :cond_3
    iget-object v8, p0, Lcom/android/settings/ZonePicker$1;->this$0:Lcom/android/settings/ZonePicker;

    invoke-virtual {v8}, Lcom/android/settings/ZonePicker;->getListView()Landroid/widget/ListView;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings/ZonePicker$1;->this$0:Lcom/android/settings/ZonePicker;

    invoke-virtual {v9}, Lcom/android/settings/ZonePicker;->getView()Landroid/view/View;

    move-result-object v9

    int-to-long v10, v4

    invoke-virtual {v8, v9, v4, v10, v11}, Landroid/widget/ListView;->performItemClick(Landroid/view/View;IJ)Z

    iget-object v8, p0, Lcom/android/settings/ZonePicker$1;->this$0:Lcom/android/settings/ZonePicker;

    iget-object v8, v8, Lcom/android/settings/ZonePicker;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v8

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/android/settings/ZonePicker$1;->this$0:Lcom/android/settings/ZonePicker;

    iget-object v8, v8, Lcom/android/settings/ZonePicker;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v9, "CityName"

    const-string/jumbo v10, "AlreadySet"

    const-string/jumbo v11, "no"

    invoke-virtual {v8, v9, v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/settings/ZonePicker$1;->this$0:Lcom/android/settings/ZonePicker;

    iget-object v8, v8, Lcom/android/settings/ZonePicker;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v9, "CityName"

    invoke-virtual {v8, v9, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgResultParam(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/settings/ZonePicker$1;->this$0:Lcom/android/settings/ZonePicker;

    iget-object v8, v8, Lcom/android/settings/ZonePicker;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v9, "SetHomeTimeZone"

    invoke-virtual {v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_4
    iget-object v8, p0, Lcom/android/settings/ZonePicker$1;->this$0:Lcom/android/settings/ZonePicker;

    iget-object v8, v8, Lcom/android/settings/ZonePicker;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v9, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    :cond_5
    iget-object v8, p0, Lcom/android/settings/ZonePicker$1;->this$0:Lcom/android/settings/ZonePicker;

    iget-object v8, v8, Lcom/android/settings/ZonePicker;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v9, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0
.end method
