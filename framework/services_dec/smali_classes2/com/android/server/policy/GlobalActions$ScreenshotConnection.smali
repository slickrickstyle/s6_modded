.class Lcom/android/server/policy/GlobalActions$ScreenshotConnection;
.super Ljava/lang/Object;
.source "GlobalActions.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/GlobalActions;->takeScreenshot()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/GlobalActions;


# direct methods
.method constructor <init>(Lcom/android/server/policy/GlobalActions;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/policy/GlobalActions$ScreenshotConnection;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 8

    iget-object v4, p0, Lcom/android/server/policy/GlobalActions$ScreenshotConnection;->this$0:Lcom/android/server/policy/GlobalActions;

    iget-object v5, v4, Lcom/android/server/policy/GlobalActions;->mScreenshotLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_0
    iget-object v4, p0, Lcom/android/server/policy/GlobalActions$ScreenshotConnection;->this$0:Lcom/android/server/policy/GlobalActions;

    iget-object v4, v4, Lcom/android/server/policy/GlobalActions;->mScreenshotConnection:Landroid/content/ServiceConnection;

    if-eq v4, p0, :cond_0

    monitor-exit v5

    :goto_0
    return-void

    :cond_0
    new-instance v1, Landroid/os/Messenger;

    invoke-direct {v1, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    const/4 v4, 0x0

    const/4 v6, 0x1

    invoke-static {v4, v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v2

    move-object v3, p0

    new-instance v0, Lcom/android/server/policy/GlobalActions$ScreenshotConnection$1;

    iget-object v4, p0, Lcom/android/server/policy/GlobalActions$ScreenshotConnection;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v4}, Lcom/android/server/policy/GlobalActions;->-get25(Lcom/android/server/policy/GlobalActions;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v0, p0, v4, v3}, Lcom/android/server/policy/GlobalActions$ScreenshotConnection$1;-><init>(Lcom/android/server/policy/GlobalActions$ScreenshotConnection;Landroid/os/Looper;Landroid/content/ServiceConnection;)V

    new-instance v4, Landroid/os/Messenger;

    invoke-direct {v4, v0}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v4, v2, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    const/4 v4, 0x0

    iput v4, v2, Landroid/os/Message;->arg2:I

    iput v4, v2, Landroid/os/Message;->arg1:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v6, 0x5dc

    :try_start_1
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    :try_start_2
    invoke-virtual {v1, v2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_2
    :try_start_3
    monitor-exit v5

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v4

    :catch_0
    move-exception v4

    goto :goto_1

    :catch_1
    move-exception v4

    goto :goto_2
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    return-void
.end method
