.class Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$4;
.super Ljava/lang/Object;
.source "ChooseLockGeneric.java"

# interfaces
.implements Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$4;->this$1:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateReceived()V
    .locals 10

    iget-object v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$4;->this$1:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    invoke-static {v6}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->-get0(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    iget-object v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$4;->this$1:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    invoke-static {v6}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->-get2(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v3

    iget-object v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$4;->this$1:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    invoke-static {v6}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->-get1(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;)Landroid/hardware/fingerprint/FingerprintManager;

    move-result-object v6

    invoke-static {}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->-get3()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints(I)Z

    move-result v1

    iget-object v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$4;->this$1:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    invoke-static {v6}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->-wrap0(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;)Z

    move-result v2

    if-nez v3, :cond_0

    if-nez v3, :cond_1

    if-nez v1, :cond_0

    move v4, v2

    :goto_0
    const-string/jumbo v6, "SetSwipe"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    if-eqz v4, :cond_2

    iget-object v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$4;->this$1:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    invoke-static {v6}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->-get0(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "SecuredLockType"

    const-string/jumbo v8, "AlreadySet"

    const-string/jumbo v9, "yes"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$4;->this$1:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    invoke-static {v6}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->-get0(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "ScreenLockType"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$4;->this$1:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    invoke-static {v6}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->-get0(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    return-void

    :cond_0
    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    :cond_2
    iget-object v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$4;->this$1:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    const-string/jumbo v7, "unlock_set_none"

    invoke-virtual {v6, v7}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$4;->this$1:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    const-string/jumbo v7, "unlock_set_none"

    invoke-virtual {v6, v7}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$4;->this$1:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    invoke-virtual {v7}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/Preference;->performClick(Landroid/preference/PreferenceScreen;)V

    iget-object v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$4;->this$1:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    invoke-static {v6}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->-get0(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$4;->this$1:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    invoke-static {v6}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->-get0(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "SecuredLockType"

    const-string/jumbo v8, "AlreadySet"

    const-string/jumbo v9, "no"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$4;->this$1:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    invoke-static {v6}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->-get0(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "ScreenLockType"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_3
    iget-object v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$4;->this$1:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    invoke-static {v6}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->-get0(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    :cond_4
    :goto_1
    return-void

    :cond_5
    iget-object v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$4;->this$1:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    invoke-static {v6}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->-get0(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "ScreenLockType"

    const-string/jumbo v8, "exist"

    const-string/jumbo v9, "no"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$4;->this$1:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    invoke-static {v6}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->-get0(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "ScreenLockType"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$4;->this$1:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    invoke-static {v6}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->-get0(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto :goto_1

    :cond_6
    const-string/jumbo v6, "DirectionLock"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    if-eqz v4, :cond_7

    iget-object v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$4;->this$1:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    invoke-static {v6}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->-get0(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "SecuredLockType"

    const-string/jumbo v8, "AlreadySet"

    const-string/jumbo v9, "yes"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$4;->this$1:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    invoke-static {v6}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->-get0(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "DirectionLock"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$4;->this$1:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    invoke-static {v6}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->-get0(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    return-void

    :cond_7
    iget-object v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$4;->this$1:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    const-string/jumbo v7, "unlock_set_direction"

    invoke-virtual {v6, v7}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    if-eqz v6, :cond_9

    iget-object v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$4;->this$1:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    const-string/jumbo v7, "unlock_set_direction"

    invoke-virtual {v6, v7}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$4;->this$1:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    invoke-virtual {v7}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/Preference;->performClick(Landroid/preference/PreferenceScreen;)V

    iget-object v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$4;->this$1:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    invoke-static {v6}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->-get0(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v6

    if-eqz v6, :cond_8

    iget-object v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$4;->this$1:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    invoke-static {v6}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->-get0(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "SecuredLockType"

    const-string/jumbo v8, "AlreadySet"

    const-string/jumbo v9, "no"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$4;->this$1:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    invoke-static {v6}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->-get0(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "DirectionLock"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_8
    iget-object v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$4;->this$1:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    invoke-static {v6}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->-get0(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_1

    :cond_9
    iget-object v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$4;->this$1:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    invoke-static {v6}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->-get0(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "ScreenLockType"

    const-string/jumbo v8, "exist"

    const-string/jumbo v9, "no"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$4;->this$1:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    invoke-static {v6}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->-get0(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "ScreenLockType"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$4;->this$1:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    invoke-static {v6}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->-get0(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_1

    :cond_a
    const-string/jumbo v6, "Pattern"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    if-eqz v4, :cond_b

    iget-object v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$4;->this$1:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    invoke-static {v6}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->-get0(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "SecuredLockType"

    const-string/jumbo v8, "AlreadySet"

    const-string/jumbo v9, "yes"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$4;->this$1:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    invoke-static {v6}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->-get0(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "PatternLock"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$4;->this$1:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    invoke-static {v6}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->-get0(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    return-void

    :cond_b
    iget-object v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$4;->this$1:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    const-string/jumbo v7, "unlock_set_pattern"

    invoke-virtual {v6, v7}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$4;->this$1:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    invoke-virtual {v7}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/Preference;->performClick(Landroid/preference/PreferenceScreen;)V

    iget-object v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$4;->this$1:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    invoke-static {v6}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->-get0(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v6

    if-eqz v6, :cond_c

    iget-object v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$4;->this$1:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    invoke-static {v6}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->-get0(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "SecuredLockType"

    const-string/jumbo v8, "AlreadySet"

    const-string/jumbo v9, "no"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$4;->this$1:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    invoke-static {v6}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->-get0(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "PatternLock"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_c
    iget-object v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$4;->this$1:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    invoke-static {v6}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->-get0(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_1

    :cond_d
    const-string/jumbo v6, "PIN"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10

    if-eqz v4, :cond_e

    iget-object v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$4;->this$1:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    invoke-static {v6}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->-get0(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "SecuredLockType"

    const-string/jumbo v8, "AlreadySet"

    const-string/jumbo v9, "yes"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$4;->this$1:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    invoke-static {v6}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->-get0(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "PinLock"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$4;->this$1:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    invoke-static {v6}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->-get0(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    return-void

    :cond_e
    iget-object v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$4;->this$1:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    const-string/jumbo v7, "unlock_set_pin"

    invoke-virtual {v6, v7}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$4;->this$1:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    invoke-virtual {v7}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/Preference;->performClick(Landroid/preference/PreferenceScreen;)V

    iget-object v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$4;->this$1:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    invoke-static {v6}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->-get0(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v6

    if-eqz v6, :cond_f

    iget-object v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$4;->this$1:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    invoke-static {v6}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->-get0(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "SecuredLockType"

    const-string/jumbo v8, "AlreadySet"

    const-string/jumbo v9, "no"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$4;->this$1:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    invoke-static {v6}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->-get0(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "PinLock"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_f
    iget-object v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$4;->this$1:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    invoke-static {v6}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->-get0(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_1

    :cond_10
    const-string/jumbo v6, "Password"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_13

    if-eqz v4, :cond_11

    iget-object v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$4;->this$1:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    invoke-static {v6}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->-get0(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "SecuredLockType"

    const-string/jumbo v8, "AlreadySet"

    const-string/jumbo v9, "yes"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$4;->this$1:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    invoke-static {v6}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->-get0(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "PasswordLock"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$4;->this$1:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    invoke-static {v6}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->-get0(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    return-void

    :cond_11
    iget-object v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$4;->this$1:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    const-string/jumbo v7, "unlock_set_password"

    invoke-virtual {v6, v7}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$4;->this$1:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    invoke-virtual {v7}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/Preference;->performClick(Landroid/preference/PreferenceScreen;)V

    iget-object v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$4;->this$1:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    invoke-static {v6}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->-get0(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v6

    if-eqz v6, :cond_12

    iget-object v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$4;->this$1:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    invoke-static {v6}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->-get0(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "SecuredLockType"

    const-string/jumbo v8, "AlreadySet"

    const-string/jumbo v9, "no"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$4;->this$1:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    invoke-static {v6}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->-get0(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "PasswordLock"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_12
    iget-object v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$4;->this$1:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    invoke-static {v6}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->-get0(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_1

    :cond_13
    const-string/jumbo v6, "SetNone"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_17

    if-eqz v4, :cond_14

    iget-object v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$4;->this$1:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    invoke-static {v6}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->-get0(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "SecuredLockType"

    const-string/jumbo v8, "AlreadySet"

    const-string/jumbo v9, "yes"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$4;->this$1:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    invoke-static {v6}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->-get0(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "ScreenLockType"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$4;->this$1:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    invoke-static {v6}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->-get0(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    return-void

    :cond_14
    iget-object v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$4;->this$1:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    const-string/jumbo v7, "unlock_set_off"

    invoke-virtual {v6, v7}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    if-eqz v6, :cond_16

    iget-object v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$4;->this$1:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    const-string/jumbo v7, "unlock_set_off"

    invoke-virtual {v6, v7}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$4;->this$1:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    invoke-virtual {v7}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/Preference;->performClick(Landroid/preference/PreferenceScreen;)V

    iget-object v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$4;->this$1:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    invoke-static {v6}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->-get0(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v6

    if-eqz v6, :cond_15

    iget-object v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$4;->this$1:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    invoke-static {v6}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->-get0(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "SecuredLockType"

    const-string/jumbo v8, "AlreadySet"

    const-string/jumbo v9, "no"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$4;->this$1:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    invoke-static {v6}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->-get0(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "ScreenLockType"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_15
    iget-object v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$4;->this$1:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    invoke-static {v6}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->-get0(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_1

    :cond_16
    iget-object v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$4;->this$1:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    invoke-static {v6}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->-get0(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "ScreenLockType"

    const-string/jumbo v8, "exist"

    const-string/jumbo v9, "no"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$4;->this$1:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    invoke-static {v6}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->-get0(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "ScreenLockType"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$4;->this$1:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    invoke-static {v6}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->-get0(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_1

    :cond_17
    const-string/jumbo v6, "Fingerprints"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1b

    if-eqz v4, :cond_18

    iget-object v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$4;->this$1:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    invoke-static {v6}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->-get0(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "SecuredLockType"

    const-string/jumbo v8, "AlreadySet"

    const-string/jumbo v9, "yes"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$4;->this$1:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    invoke-static {v6}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->-get0(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "Fingerprint"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$4;->this$1:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    invoke-static {v6}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->-get0(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    return-void

    :cond_18
    iget-object v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$4;->this$1:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    const-string/jumbo v7, "switch_fingerprint"

    invoke-virtual {v6, v7}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    if-eqz v6, :cond_1a

    iget-object v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$4;->this$1:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    const-string/jumbo v7, "switch_fingerprint"

    invoke-virtual {v6, v7}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$4;->this$1:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    invoke-virtual {v7}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/Preference;->performClick(Landroid/preference/PreferenceScreen;)V

    iget-object v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$4;->this$1:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    invoke-static {v6}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->-get0(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v6

    if-eqz v6, :cond_19

    iget-object v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$4;->this$1:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    invoke-static {v6}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->-get0(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "SecuredLockType"

    const-string/jumbo v8, "AlreadySet"

    const-string/jumbo v9, "no"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$4;->this$1:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    invoke-static {v6}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->-get0(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "Fingerprint"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_19
    iget-object v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$4;->this$1:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    invoke-static {v6}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->-get0(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_1

    :cond_1a
    iget-object v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$4;->this$1:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    invoke-static {v6}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->-get0(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "ScreenLockType"

    const-string/jumbo v8, "exist"

    const-string/jumbo v9, "no"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$4;->this$1:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    invoke-static {v6}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->-get0(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "ScreenLockType"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$4;->this$1:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    invoke-static {v6}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->-get0(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_1

    :cond_1b
    const-string/jumbo v6, "Irises"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    if-eqz v4, :cond_1c

    iget-object v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$4;->this$1:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    invoke-static {v6}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->-get0(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "SecuredLockType"

    const-string/jumbo v8, "AlreadySet"

    const-string/jumbo v9, "yes"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$4;->this$1:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    invoke-static {v6}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->-get0(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "Irises"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$4;->this$1:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    invoke-static {v6}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->-get0(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    return-void

    :cond_1c
    iget-object v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$4;->this$1:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    const-string/jumbo v7, "switch_iris"

    invoke-virtual {v6, v7}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    if-eqz v6, :cond_1e

    iget-object v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$4;->this$1:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    const-string/jumbo v7, "switch_iris"

    invoke-virtual {v6, v7}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$4;->this$1:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    invoke-virtual {v7}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/Preference;->performClick(Landroid/preference/PreferenceScreen;)V

    iget-object v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$4;->this$1:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    invoke-static {v6}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->-get0(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v6

    if-eqz v6, :cond_1d

    iget-object v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$4;->this$1:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    invoke-static {v6}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->-get0(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "SecuredLockType"

    const-string/jumbo v8, "AlreadySet"

    const-string/jumbo v9, "no"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$4;->this$1:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    invoke-static {v6}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->-get0(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "Irises"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_1d
    iget-object v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$4;->this$1:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    invoke-static {v6}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->-get0(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_1

    :cond_1e
    iget-object v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$4;->this$1:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    invoke-static {v6}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->-get0(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "ScreenLockType"

    const-string/jumbo v8, "exist"

    const-string/jumbo v9, "no"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$4;->this$1:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    invoke-static {v6}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->-get0(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "ScreenLockType"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$4;->this$1:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    invoke-static {v6}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->-get0(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_1
.end method
