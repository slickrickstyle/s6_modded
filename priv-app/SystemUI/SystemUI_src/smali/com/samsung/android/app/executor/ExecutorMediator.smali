.class public Lcom/samsung/android/app/executor/ExecutorMediator;
.super Ljava/lang/Object;
.source "ExecutorMediator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/executor/ExecutorMediator$InterimStateListener;,
        Lcom/samsung/android/app/executor/ExecutorMediator$OnResponseCallback;,
        Lcom/samsung/android/app/executor/ExecutorMediator$OnRuleCanceledListener;,
        Lcom/samsung/android/app/executor/ExecutorMediator$OnStateReceivedListener;,
        Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;,
        Lcom/samsung/android/app/executor/ExecutorMediator$StartStateListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static mInstance:Lcom/samsung/android/app/executor/ExecutorMediator;


# instance fields
.field private mAppName:Ljava/lang/String;

.field private mAppVersion:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mInterimListener:Lcom/samsung/android/app/executor/ExecutorMediator$InterimStateListener;

.field private mIsRuleRunning:Z

.field private mIsTestMode:Z

.field private mLastState:Lcom/samsung/android/app/executor/data/State;

.field private mResponseCallback:Lcom/samsung/android/app/executor/ExecutorMediator$OnResponseCallback;

.field private mStartListener:Lcom/samsung/android/app/executor/ExecutorMediator$StartStateListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/samsung/android/app/executor/ExecutorMediator;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_0024"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/executor/ExecutorMediator;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/executor/ExecutorMediator;->mHandler:Landroid/os/Handler;

    iput-boolean v1, p0, Lcom/samsung/android/app/executor/ExecutorMediator;->mIsTestMode:Z

    iput-boolean v1, p0, Lcom/samsung/android/app/executor/ExecutorMediator;->mIsRuleRunning:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/executor/ExecutorMediator;->mLastState:Lcom/samsung/android/app/executor/data/State;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/executor/ExecutorMediator;)Lcom/samsung/android/app/executor/ExecutorMediator$InterimStateListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/executor/ExecutorMediator;->mInterimListener:Lcom/samsung/android/app/executor/ExecutorMediator$InterimStateListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/app/executor/ExecutorMediator;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/executor/ExecutorMediator;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public static declared-synchronized getInstance()Lcom/samsung/android/app/executor/ExecutorMediator;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const-class v1, Lcom/samsung/android/app/executor/ExecutorMediator;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/samsung/android/app/executor/ExecutorMediator;->mInstance:Lcom/samsung/android/app/executor/ExecutorMediator;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/app/executor/ExecutorMediator;->mInstance:Lcom/samsung/android/app/executor/ExecutorMediator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Instance is null. please call createInstance() for the first time."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private sendCommandToEm(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/executor/ExecutorMediator;->mResponseCallback:Lcom/samsung/android/app/executor/ExecutorMediator$OnResponseCallback;

    if-nez v0, :cond_0

    const-string/jumbo v0, "state_log"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/executor/ExecutorMediator;->mResponseCallback:Lcom/samsung/android/app/executor/ExecutorMediator$OnResponseCallback;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/app/executor/ExecutorMediator$OnResponseCallback;->onResponse(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/samsung/android/app/executor/ExecutorMediator;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "EM is not connected."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method requestContext()V
    .locals 7

    const-string/jumbo v1, ""

    iget-object v5, p0, Lcom/samsung/android/app/executor/ExecutorMediator;->mInterimListener:Lcom/samsung/android/app/executor/ExecutorMediator$InterimStateListener;

    if-nez v5, :cond_0

    sget-object v5, Lcom/samsung/android/app/executor/ExecutorMediator;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "InterimListener is not set."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "\"result\": \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;->FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v6}, Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    const-string/jumbo v5, "app_context"

    invoke-direct {p0, v5, v0}, Lcom/samsung/android/app/executor/ExecutorMediator;->sendCommandToEm(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v5, p0, Lcom/samsung/android/app/executor/ExecutorMediator;->mInterimListener:Lcom/samsung/android/app/executor/ExecutorMediator$InterimStateListener;

    invoke-interface {v5}, Lcom/samsung/android/app/executor/ExecutorMediator$InterimStateListener;->onScreenStatesRequested()Lcom/samsung/android/app/executor/data/ScreenStateInfo;

    move-result-object v3

    sget-object v5, Lcom/samsung/android/app/executor/data/ScreenStateInfo;->STATE_NOT_APPLICABLE:Lcom/samsung/android/app/executor/data/ScreenStateInfo;

    if-ne v3, v5, :cond_1

    sget-object v5, Lcom/samsung/android/app/executor/ExecutorMediator;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "STATE_NOT_APPLICABLE"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    invoke-virtual {v3}, Lcom/samsung/android/app/executor/data/ScreenStateInfo;->toString()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2

    sget-object v5, Lcom/samsung/android/app/executor/ExecutorMediator;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "No state ids."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "{ "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ",\"appName\":\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/app/executor/ExecutorMediator;->mAppName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\"appVersion\":\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/app/executor/ExecutorMediator;->mAppVersion:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\" }"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "\"result\": \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;->SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v6}, Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\",\"deviceContext\":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1
.end method

.method sendParamFilling(Lcom/samsung/android/app/executor/data/ParamFilling;)V
    .locals 3

    sget-object v1, Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;->FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v1}, Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/executor/ExecutorMediator;->mInterimListener:Lcom/samsung/android/app/executor/ExecutorMediator$InterimStateListener;

    if-nez v1, :cond_1

    sget-object v1, Lcom/samsung/android/app/executor/ExecutorMediator;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "InterimListener is null."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    const-string/jumbo v1, "param_filling"

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/app/executor/ExecutorMediator;->sendCommandToEm(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/app/executor/ExecutorMediator;->mInterimListener:Lcom/samsung/android/app/executor/ExecutorMediator$InterimStateListener;

    invoke-interface {v1, p1}, Lcom/samsung/android/app/executor/ExecutorMediator$InterimStateListener;->onParamFillingReceived(Lcom/samsung/android/app/executor/data/ParamFilling;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;->SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v1}, Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/samsung/android/app/executor/ExecutorMediator;->mLastState:Lcom/samsung/android/app/executor/data/State;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    sget-object v0, Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;->FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :goto_1
    const-string/jumbo v0, "state_command_result"

    invoke-virtual {p1}, Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/executor/ExecutorMediator;->sendCommandToEm(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/executor/ExecutorMediator;->mLastState:Lcom/samsung/android/app/executor/data/State;

    invoke-virtual {v0}, Lcom/samsung/android/app/executor/data/State;->isLastState()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/executor/ExecutorMediator;->setRuleRunning(Z)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v1}, Lcom/samsung/android/app/executor/ExecutorMediator;->setRuleRunning(Z)V

    iput-object v2, p0, Lcom/samsung/android/app/executor/ExecutorMediator;->mLastState:Lcom/samsung/android/app/executor/data/State;

    goto :goto_1
.end method

.method sendState(Lcom/samsung/android/app/executor/data/State;)I
    .locals 4

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0, v2}, Lcom/samsung/android/app/executor/ExecutorMediator;->setRuleRunning(Z)V

    iput-object p1, p0, Lcom/samsung/android/app/executor/ExecutorMediator;->mLastState:Lcom/samsung/android/app/executor/data/State;

    invoke-virtual {p1}, Lcom/samsung/android/app/executor/data/State;->getSeqNum()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/app/executor/data/State;->getSeqNum()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v1, v2, :cond_1

    invoke-virtual {p1}, Lcom/samsung/android/app/executor/data/State;->getSeqNum()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    new-instance v0, Lcom/samsung/android/app/executor/ExecutorMediator$1;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/app/executor/ExecutorMediator$1;-><init>(Lcom/samsung/android/app/executor/ExecutorMediator;Lcom/samsung/android/app/executor/data/State;)V

    iget-object v1, p0, Lcom/samsung/android/app/executor/ExecutorMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-virtual {p1}, Lcom/samsung/android/app/executor/data/State;->isLastState()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_7

    :goto_0
    return v3

    :cond_0
    iput-boolean v2, p0, Lcom/samsung/android/app/executor/ExecutorMediator;->mIsTestMode:Z

    sget-object v1, Lcom/samsung/android/app/executor/ExecutorMediator;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "SeqNo 0 found. isTestMode true"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;->SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/executor/ExecutorMediator;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    return v3

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/app/executor/ExecutorMediator;->mStartListener:Lcom/samsung/android/app/executor/ExecutorMediator$StartStateListener;

    invoke-interface {v1, p1}, Lcom/samsung/android/app/executor/ExecutorMediator$StartStateListener;->onStateReceived(Lcom/samsung/android/app/executor/data/State;)V

    return v3

    :cond_2
    invoke-virtual {p0, v3}, Lcom/samsung/android/app/executor/ExecutorMediator;->setRuleRunning(Z)V

    iget-object v1, p0, Lcom/samsung/android/app/executor/ExecutorMediator;->mInterimListener:Lcom/samsung/android/app/executor/ExecutorMediator$InterimStateListener;

    if-eqz v1, :cond_4

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/app/executor/ExecutorMediator;->mInterimListener:Lcom/samsung/android/app/executor/ExecutorMediator$InterimStateListener;

    if-nez v1, :cond_5

    :goto_1
    iget-object v1, p0, Lcom/samsung/android/app/executor/ExecutorMediator;->mStartListener:Lcom/samsung/android/app/executor/ExecutorMediator$StartStateListener;

    if-nez v1, :cond_6

    :goto_2
    return v3

    :cond_4
    iget-object v1, p0, Lcom/samsung/android/app/executor/ExecutorMediator;->mStartListener:Lcom/samsung/android/app/executor/ExecutorMediator$StartStateListener;

    if-nez v1, :cond_3

    sget-object v1, Lcom/samsung/android/app/executor/ExecutorMediator;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "No listener is set."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_5
    iget-object v1, p0, Lcom/samsung/android/app/executor/ExecutorMediator;->mInterimListener:Lcom/samsung/android/app/executor/ExecutorMediator$InterimStateListener;

    invoke-virtual {p1}, Lcom/samsung/android/app/executor/data/State;->getRuleId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/samsung/android/app/executor/ExecutorMediator$InterimStateListener;->onRuleCanceled(Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    iget-object v1, p0, Lcom/samsung/android/app/executor/ExecutorMediator;->mStartListener:Lcom/samsung/android/app/executor/ExecutorMediator$StartStateListener;

    invoke-virtual {p1}, Lcom/samsung/android/app/executor/data/State;->getRuleId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/samsung/android/app/executor/ExecutorMediator$StartStateListener;->onRuleCanceled(Ljava/lang/String;)V

    goto :goto_2

    :cond_7
    iput-boolean v3, p0, Lcom/samsung/android/app/executor/ExecutorMediator;->mIsTestMode:Z

    goto :goto_0
.end method

.method public setInterimStateListener(Lcom/samsung/android/app/executor/ExecutorMediator$InterimStateListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/executor/ExecutorMediator;->mInterimListener:Lcom/samsung/android/app/executor/ExecutorMediator$InterimStateListener;

    return-void
.end method

.method setResponseCallback(Lcom/samsung/android/app/executor/ExecutorMediator$OnResponseCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/executor/ExecutorMediator;->mResponseCallback:Lcom/samsung/android/app/executor/ExecutorMediator$OnResponseCallback;

    return-void
.end method

.method setRuleRunning(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/app/executor/ExecutorMediator;->mIsRuleRunning:Z

    return-void
.end method
