.class public interface abstract Lcom/samsung/android/app/executor/ExecutorMediator$InterimStateListener;
.super Ljava/lang/Object;
.source "ExecutorMediator.java"

# interfaces
.implements Lcom/samsung/android/app/executor/ExecutorMediator$OnStateReceivedListener;
.implements Lcom/samsung/android/app/executor/ExecutorMediator$OnRuleCanceledListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/executor/ExecutorMediator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "InterimStateListener"
.end annotation


# virtual methods
.method public abstract onParamFillingReceived(Lcom/samsung/android/app/executor/data/ParamFilling;)Z
.end method

.method public abstract onScreenStatesRequested()Lcom/samsung/android/app/executor/data/ScreenStateInfo;
.end method
