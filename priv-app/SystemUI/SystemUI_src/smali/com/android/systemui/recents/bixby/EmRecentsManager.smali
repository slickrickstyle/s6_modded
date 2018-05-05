.class public Lcom/android/systemui/recents/bixby/EmRecentsManager;
.super Ljava/lang/Object;
.source "EmRecentsManager.java"


# static fields
.field private static singleInstance:Lcom/android/systemui/recents/bixby/EmRecentsManager;


# instance fields
.field private mBixbyRecentsViewHandler:Lcom/android/systemui/recents/bixby/IBixbyRecentsViewHandler;

.field private mExecutorMediator:Lcom/samsung/android/app/executor/ExecutorMediator;

.field private mInterimStateListener:Lcom/samsung/android/app/executor/ExecutorMediator$InterimStateListener;

.field private mLastScreenStateId:Ljava/lang/String;

.field private mRecentsLaunchedByBixby:Z

.field private mWaitForRecents:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/systemui/recents/bixby/EmRecentsManager;->singleInstance:Lcom/android/systemui/recents/bixby/EmRecentsManager;

    return-void
.end method

.method public static getInstance()Lcom/android/systemui/recents/bixby/EmRecentsManager;
    .locals 2

    sget-object v0, Lcom/android/systemui/recents/bixby/EmRecentsManager;->singleInstance:Lcom/android/systemui/recents/bixby/EmRecentsManager;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Instance is null. please invoke createInstance() for the first time."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sget-object v0, Lcom/android/systemui/recents/bixby/EmRecentsManager;->singleInstance:Lcom/android/systemui/recents/bixby/EmRecentsManager;

    return-object v0
.end method


# virtual methods
.method public activate(Lcom/android/systemui/recents/bixby/IBixbyRecentsViewHandler;)V
    .locals 4

    const/4 v3, 0x1

    const-string/jumbo v0, "EmRecentsManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Activate "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/systemui/recents/bixby/EmRecentsManager;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/systemui/recents/bixby/EmRecentsManager;->setInterimStateListener()V

    const-string/jumbo v0, "Recents"

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/bixby/EmRecentsManager;->updateLastScreenState(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/systemui/recents/bixby/EmRecentsManager;->mBixbyRecentsViewHandler:Lcom/android/systemui/recents/bixby/IBixbyRecentsViewHandler;

    iget-boolean v0, p0, Lcom/android/systemui/recents/bixby/EmRecentsManager;->mWaitForRecents:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "EmRecentsManager"

    const-string/jumbo v1, "Resume the process of \'Recents\' state."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v3, p0, Lcom/android/systemui/recents/bixby/EmRecentsManager;->mRecentsLaunchedByBixby:Z

    invoke-virtual {p0, v3}, Lcom/android/systemui/recents/bixby/EmRecentsManager;->sendResponseToEM(Z)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/recents/bixby/EmRecentsManager;->mWaitForRecents:Z

    :cond_0
    return-void
.end method

.method public deactivate()V
    .locals 3

    const-string/jumbo v0, "EmRecentsManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Deactivate "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/systemui/recents/bixby/EmRecentsManager;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "Home"

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/bixby/EmRecentsManager;->updateLastScreenState(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/recents/bixby/EmRecentsManager;->mBixbyRecentsViewHandler:Lcom/android/systemui/recents/bixby/IBixbyRecentsViewHandler;

    return-void
.end method

.method public sendResponseToEM(Z)V
    .locals 4

    :try_start_0
    const-string/jumbo v1, "EmRecentsManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Send response to EM : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/recents/bixby/EmRecentsManager;->mExecutorMediator:Lcom/samsung/android/app/executor/ExecutorMediator;

    sget-object v2, Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;->SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/executor/ExecutorMediator;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/recents/bixby/EmRecentsManager;->mExecutorMediator:Lcom/samsung/android/app/executor/ExecutorMediator;

    sget-object v2, Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;->FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/executor/ExecutorMediator;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "EmRecentsManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Fail to send response. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setInterimStateListener()V
    .locals 2

    const-string/jumbo v0, "EmRecentsManager"

    const-string/jumbo v1, "setInterimStateListener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/recents/bixby/EmRecentsManager;->mExecutorMediator:Lcom/samsung/android/app/executor/ExecutorMediator;

    iget-object v1, p0, Lcom/android/systemui/recents/bixby/EmRecentsManager;->mInterimStateListener:Lcom/samsung/android/app/executor/ExecutorMediator$InterimStateListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/executor/ExecutorMediator;->setInterimStateListener(Lcom/samsung/android/app/executor/ExecutorMediator$InterimStateListener;)V

    return-void
.end method

.method public updateLastScreenState(Ljava/lang/String;)V
    .locals 3

    const-string/jumbo v0, "EmRecentsManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateScreenState to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/android/systemui/recents/bixby/EmRecentsManager;->mLastScreenStateId:Ljava/lang/String;

    return-void
.end method
