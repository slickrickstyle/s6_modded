.class Lcom/android/settings/tts/TextToSpeechSettings$4;
.super Ljava/lang/Object;
.source "TextToSpeechSettings.java"

# interfaces
.implements Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/tts/TextToSpeechSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/tts/TextToSpeechSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/tts/TextToSpeechSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/tts/TextToSpeechSettings$4;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateReceived()V
    .locals 11

    const/4 v8, 0x0

    iget-object v7, p0, Lcom/android/settings/tts/TextToSpeechSettings$4;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v7}, Lcom/android/settings/tts/TextToSpeechSettings;->-get2(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v6

    const/4 v5, 0x0

    const-string/jumbo v7, "TextToSpeechSet"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/android/settings/tts/TextToSpeechSettings$4;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v7}, Lcom/android/settings/tts/TextToSpeechSettings;->-get2(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamsSize()I

    move-result v7

    if-lez v7, :cond_1

    iget-object v7, p0, Lcom/android/settings/tts/TextToSpeechSettings$4;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v7}, Lcom/android/settings/tts/TextToSpeechSettings;->-get2(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamInt(I)I

    move-result v3

    if-ltz v3, :cond_2

    const/16 v7, 0x64

    if-gt v3, v7, :cond_2

    mul-int/lit8 v5, v3, 0x6

    iget-object v7, p0, Lcom/android/settings/tts/TextToSpeechSettings$4;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    const-string/jumbo v8, "tts_default_rate"

    invoke-static {v7, v8, v5}, Lcom/android/settings/tts/TextToSpeechSettings;->-wrap0(Lcom/android/settings/tts/TextToSpeechSettings;Ljava/lang/String;I)I

    move-result v4

    iget-object v7, p0, Lcom/android/settings/tts/TextToSpeechSettings$4;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v7}, Lcom/android/settings/tts/TextToSpeechSettings;->-get1(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/android/settings/SeekBarPreference;

    move-result-object v7

    invoke-virtual {v7, v4}, Lcom/android/settings/SeekBarPreference;->setProgress(I)V

    iget-object v7, p0, Lcom/android/settings/tts/TextToSpeechSettings$4;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v7, v4}, Lcom/android/settings/tts/TextToSpeechSettings;->-wrap1(Lcom/android/settings/tts/TextToSpeechSettings;I)V

    iget-object v7, p0, Lcom/android/settings/tts/TextToSpeechSettings$4;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v7}, Lcom/android/settings/tts/TextToSpeechSettings;->-get2(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/settings/tts/TextToSpeechSettings$4;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v7}, Lcom/android/settings/tts/TextToSpeechSettings;->-get2(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    const-string/jumbo v8, "TextToSpeechSet"

    const-string/jumbo v9, "Valid"

    const-string/jumbo v10, "Yes"

    invoke-virtual {v7, v8, v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/settings/tts/TextToSpeechSettings$4;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v7}, Lcom/android/settings/tts/TextToSpeechSettings;->-get2(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    const-string/jumbo v8, "TextToSpeechSet"

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgResultParam(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/settings/tts/TextToSpeechSettings$4;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v7}, Lcom/android/settings/tts/TextToSpeechSettings;->-get2(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    const-string/jumbo v8, "TextToSpeech"

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_0
    iget-object v7, p0, Lcom/android/settings/tts/TextToSpeechSettings$4;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v7}, Lcom/android/settings/tts/TextToSpeechSettings;->-get2(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    sget-object v8, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v7, p0, Lcom/android/settings/tts/TextToSpeechSettings$4;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v7}, Lcom/android/settings/tts/TextToSpeechSettings;->-get2(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    const-string/jumbo v8, "TextToSpeechSet"

    const-string/jumbo v9, "Valid"

    const-string/jumbo v10, "No"

    invoke-virtual {v7, v8, v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/settings/tts/TextToSpeechSettings$4;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v7}, Lcom/android/settings/tts/TextToSpeechSettings;->-get2(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    const-string/jumbo v8, "TextToSpeech"

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/settings/tts/TextToSpeechSettings$4;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v7}, Lcom/android/settings/tts/TextToSpeechSettings;->-get2(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    sget-object v8, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto :goto_0

    :cond_3
    const-string/jumbo v7, "TextToSpeechUp"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    const-string/jumbo v7, "TextToSpeechMax"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    :cond_4
    iget-object v7, p0, Lcom/android/settings/tts/TextToSpeechSettings$4;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v7}, Lcom/android/settings/tts/TextToSpeechSettings;->-get0(Lcom/android/settings/tts/TextToSpeechSettings;)I

    move-result v7

    const/16 v8, 0x258

    if-ne v7, v8, :cond_5

    iget-object v7, p0, Lcom/android/settings/tts/TextToSpeechSettings$4;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v7}, Lcom/android/settings/tts/TextToSpeechSettings;->-get2(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    const-string/jumbo v8, "SpeechRate"

    const-string/jumbo v9, "AlreadyMax"

    const-string/jumbo v10, "Yes"

    invoke-virtual {v7, v8, v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/settings/tts/TextToSpeechSettings$4;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v7}, Lcom/android/settings/tts/TextToSpeechSettings;->-get2(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    const-string/jumbo v8, "TextToSpeech"

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/settings/tts/TextToSpeechSettings$4;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v7}, Lcom/android/settings/tts/TextToSpeechSettings;->-get2(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    sget-object v8, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto :goto_0

    :cond_5
    const-string/jumbo v7, "TextToSpeechUp"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    iget-object v7, p0, Lcom/android/settings/tts/TextToSpeechSettings$4;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v7}, Lcom/android/settings/tts/TextToSpeechSettings;->-get0(Lcom/android/settings/tts/TextToSpeechSettings;)I

    move-result v7

    add-int/lit8 v5, v7, 0x14

    :goto_1
    iget-object v7, p0, Lcom/android/settings/tts/TextToSpeechSettings$4;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    const-string/jumbo v8, "tts_default_rate"

    invoke-static {v7, v8, v5}, Lcom/android/settings/tts/TextToSpeechSettings;->-wrap0(Lcom/android/settings/tts/TextToSpeechSettings;Ljava/lang/String;I)I

    move-result v4

    iget-object v7, p0, Lcom/android/settings/tts/TextToSpeechSettings$4;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v7}, Lcom/android/settings/tts/TextToSpeechSettings;->-get1(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/android/settings/SeekBarPreference;

    move-result-object v7

    invoke-virtual {v7, v4}, Lcom/android/settings/SeekBarPreference;->setProgress(I)V

    iget-object v7, p0, Lcom/android/settings/tts/TextToSpeechSettings$4;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v7, v4}, Lcom/android/settings/tts/TextToSpeechSettings;->-wrap1(Lcom/android/settings/tts/TextToSpeechSettings;I)V

    iget-object v7, p0, Lcom/android/settings/tts/TextToSpeechSettings$4;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v7}, Lcom/android/settings/tts/TextToSpeechSettings;->-get2(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v7

    if-eqz v7, :cond_6

    iget-object v7, p0, Lcom/android/settings/tts/TextToSpeechSettings$4;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v7}, Lcom/android/settings/tts/TextToSpeechSettings;->-get2(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    const-string/jumbo v8, "SpeechRate"

    const-string/jumbo v9, "AlreadyMax"

    const-string/jumbo v10, "No"

    invoke-virtual {v7, v8, v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/settings/tts/TextToSpeechSettings$4;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v7}, Lcom/android/settings/tts/TextToSpeechSettings;->-get2(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    const-string/jumbo v8, "TextToSpeech"

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_6
    iget-object v7, p0, Lcom/android/settings/tts/TextToSpeechSettings$4;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v7}, Lcom/android/settings/tts/TextToSpeechSettings;->-get2(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    sget-object v8, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    :cond_7
    const/16 v5, 0x258

    goto :goto_1

    :cond_8
    const-string/jumbo v7, "TextToSpeechDown"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_9

    const-string/jumbo v7, "TextToSpeechMin"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d

    :cond_9
    iget-object v7, p0, Lcom/android/settings/tts/TextToSpeechSettings$4;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v7}, Lcom/android/settings/tts/TextToSpeechSettings;->-get0(Lcom/android/settings/tts/TextToSpeechSettings;)I

    move-result v7

    const/16 v8, 0xa

    if-ne v7, v8, :cond_a

    iget-object v7, p0, Lcom/android/settings/tts/TextToSpeechSettings$4;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v7}, Lcom/android/settings/tts/TextToSpeechSettings;->-get2(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    const-string/jumbo v8, "SpeechRate"

    const-string/jumbo v9, "AlreadyMin"

    const-string/jumbo v10, "Yes"

    invoke-virtual {v7, v8, v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/settings/tts/TextToSpeechSettings$4;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v7}, Lcom/android/settings/tts/TextToSpeechSettings;->-get2(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    const-string/jumbo v8, "TextToSpeech"

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/settings/tts/TextToSpeechSettings$4;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v7}, Lcom/android/settings/tts/TextToSpeechSettings;->-get2(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    sget-object v8, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    :cond_a
    const-string/jumbo v7, "TextToSpeechDown"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    iget-object v7, p0, Lcom/android/settings/tts/TextToSpeechSettings$4;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v7}, Lcom/android/settings/tts/TextToSpeechSettings;->-get0(Lcom/android/settings/tts/TextToSpeechSettings;)I

    move-result v7

    add-int/lit8 v5, v7, -0x14

    :goto_2
    iget-object v7, p0, Lcom/android/settings/tts/TextToSpeechSettings$4;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    const-string/jumbo v8, "tts_default_rate"

    invoke-static {v7, v8, v5}, Lcom/android/settings/tts/TextToSpeechSettings;->-wrap0(Lcom/android/settings/tts/TextToSpeechSettings;Ljava/lang/String;I)I

    move-result v4

    iget-object v7, p0, Lcom/android/settings/tts/TextToSpeechSettings$4;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v7}, Lcom/android/settings/tts/TextToSpeechSettings;->-get1(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/android/settings/SeekBarPreference;

    move-result-object v7

    invoke-virtual {v7, v4}, Lcom/android/settings/SeekBarPreference;->setProgress(I)V

    iget-object v7, p0, Lcom/android/settings/tts/TextToSpeechSettings$4;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v7, v4}, Lcom/android/settings/tts/TextToSpeechSettings;->-wrap1(Lcom/android/settings/tts/TextToSpeechSettings;I)V

    iget-object v7, p0, Lcom/android/settings/tts/TextToSpeechSettings$4;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v7}, Lcom/android/settings/tts/TextToSpeechSettings;->-get2(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v7

    if-eqz v7, :cond_b

    iget-object v7, p0, Lcom/android/settings/tts/TextToSpeechSettings$4;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v7}, Lcom/android/settings/tts/TextToSpeechSettings;->-get2(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    const-string/jumbo v8, "SpeechRate"

    const-string/jumbo v9, "AlreadyMin"

    const-string/jumbo v10, "No"

    invoke-virtual {v7, v8, v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/settings/tts/TextToSpeechSettings$4;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v7}, Lcom/android/settings/tts/TextToSpeechSettings;->-get2(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    const-string/jumbo v8, "TextToSpeech"

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_b
    iget-object v7, p0, Lcom/android/settings/tts/TextToSpeechSettings$4;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v7}, Lcom/android/settings/tts/TextToSpeechSettings;->-get2(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    sget-object v8, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    :cond_c
    const/16 v5, 0xa

    goto :goto_2

    :cond_d
    const-string/jumbo v7, "SamsungTextToSpeechEngine"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/android/settings/tts/TextToSpeechSettings$4;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v7}, Lcom/android/settings/tts/TextToSpeechSettings;->-get5(Lcom/android/settings/tts/TextToSpeechSettings;)Landroid/speech/tts/TtsEngines;

    move-result-object v7

    invoke-virtual {v7}, Landroid/speech/tts/TtsEngines;->getEngines()Ljava/util/List;

    move-result-object v1

    iget-object v7, p0, Lcom/android/settings/tts/TextToSpeechSettings$4;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v7}, Lcom/android/settings/tts/TextToSpeechSettings;->-get3(Lcom/android/settings/tts/TextToSpeechSettings;)Landroid/preference/PreferenceCategory;

    move-result-object v7

    invoke-virtual {v7}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v0

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v0, :cond_f

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/speech/tts/TextToSpeech$EngineInfo;

    iget-object v7, v7, Landroid/speech/tts/TextToSpeech$EngineInfo;->name:Ljava/lang/String;

    const-string/jumbo v8, "SMT"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_e

    iget-object v8, p0, Lcom/android/settings/tts/TextToSpeechSettings$4;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    iget-object v7, p0, Lcom/android/settings/tts/TextToSpeechSettings$4;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v7}, Lcom/android/settings/tts/TextToSpeechSettings;->-get5(Lcom/android/settings/tts/TextToSpeechSettings;)Landroid/speech/tts/TtsEngines;

    move-result-object v9

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/speech/tts/TextToSpeech$EngineInfo;

    iget-object v7, v7, Landroid/speech/tts/TextToSpeech$EngineInfo;->name:Ljava/lang/String;

    invoke-virtual {v9, v7}, Landroid/speech/tts/TtsEngines;->getSettingsIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    invoke-static {v8, v7}, Lcom/android/settings/tts/TextToSpeechSettings;->-set0(Lcom/android/settings/tts/TextToSpeechSettings;Landroid/content/Intent;)Landroid/content/Intent;

    iget-object v7, p0, Lcom/android/settings/tts/TextToSpeechSettings$4;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    iget-object v8, p0, Lcom/android/settings/tts/TextToSpeechSettings$4;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v8}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Landroid/content/Intent;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/settings/tts/TextToSpeechSettings;->startActivity(Landroid/content/Intent;)V

    iget-object v7, p0, Lcom/android/settings/tts/TextToSpeechSettings$4;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v7}, Lcom/android/settings/tts/TextToSpeechSettings;->-get2(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    sget-object v8, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    return-void

    :cond_e
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_f
    iget-object v7, p0, Lcom/android/settings/tts/TextToSpeechSettings$4;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v7}, Lcom/android/settings/tts/TextToSpeechSettings;->-get2(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    sget-object v8, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0
.end method
