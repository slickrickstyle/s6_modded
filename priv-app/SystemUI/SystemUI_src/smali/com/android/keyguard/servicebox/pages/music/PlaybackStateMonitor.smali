.class public Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor;
.super Ljava/lang/Object;
.source "PlaybackStateMonitor.java"

# interfaces
.implements Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor$OnPlaybackStateChangedListener;,
        Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor$SessionCallback;
    }
.end annotation


# static fields
.field private static mLock:Ljava/lang/Object;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIsPlaying:Z

.field private mMediaController:Landroid/media/session/MediaController;

.field private mOnPlaybackStateChangedListener:Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor$OnPlaybackStateChangedListener;

.field private mSessionCb:Landroid/media/session/MediaController$Callback;

.field private mSessionManager:Landroid/media/session/MediaSessionManager;


# direct methods
.method static synthetic -get0(Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor;)Landroid/media/session/MediaController;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor;->mMediaController:Landroid/media/session/MediaController;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor;)Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor$OnPlaybackStateChangedListener;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor;->mOnPlaybackStateChangedListener:Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor$OnPlaybackStateChangedListener;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor;->mLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor;->mSessionCb:Landroid/media/session/MediaController$Callback;

    iput-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor;->mOnPlaybackStateChangedListener:Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor$OnPlaybackStateChangedListener;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor;->mIsPlaying:Z

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "media_session"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaSessionManager;

    iput-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor;->mSessionManager:Landroid/media/session/MediaSessionManager;

    return-void
.end method

.method private sendCurrentState()V
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor;->mOnPlaybackStateChangedListener:Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor$OnPlaybackStateChangedListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor;->mMediaController:Landroid/media/session/MediaController;

    if-nez v1, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor;->mOnPlaybackStateChangedListener:Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor$OnPlaybackStateChangedListener;

    invoke-virtual {p0}, Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor;->getCurrentActiveSessionPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor$OnPlaybackStateChangedListener;->onSessionChanged(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor;->mOnPlaybackStateChangedListener:Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor$OnPlaybackStateChangedListener;

    iget-object v2, p0, Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor;->mMediaController:Landroid/media/session/MediaController;

    invoke-virtual {v2}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor$OnPlaybackStateChangedListener;->onPlaybackStateChanged(Landroid/media/session/PlaybackState;)V

    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor;->mOnPlaybackStateChangedListener:Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor$OnPlaybackStateChangedListener;

    iget-object v2, p0, Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor;->mMediaController:Landroid/media/session/MediaController;

    invoke-virtual {v2}, Landroid/media/session/MediaController;->getMetadata()Landroid/media/MediaMetadata;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor$OnPlaybackStateChangedListener;->onMetadataChanged(Landroid/media/MediaMetadata;)V

    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor;->mMediaController:Landroid/media/session/MediaController;

    invoke-virtual {v1}, Landroid/media/session/MediaController;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor;->mOnPlaybackStateChangedListener:Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor$OnPlaybackStateChangedListener;

    const-string/jumbo v1, "com.samsung.android.servicebox.mediasession.extra.LOCK_SCREEN_PENDING_INTENT"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/app/PendingIntent;

    invoke-interface {v2, v1}, Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor$OnPlaybackStateChangedListener;->onPendingIntentChanged(Landroid/app/PendingIntent;)V

    :goto_0
    return-void

    :cond_2
    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor;->mOnPlaybackStateChangedListener:Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor$OnPlaybackStateChangedListener;

    invoke-interface {v1, v3}, Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor$OnPlaybackStateChangedListener;->onPendingIntentChanged(Landroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method private start()V
    .locals 4

    const/4 v3, 0x0

    const-string/jumbo v1, "PlaybackStateMonitor_LOCK"

    const-string/jumbo v2, "Start"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor;->mIsPlaying:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "PlaybackStateMonitor_LOCK"

    const-string/jumbo v2, "Start -- return : already playing"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor;->mIsPlaying:Z

    const/4 v0, 0x0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-nez v1, :cond_1

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor;->mSessionManager:Landroid/media/session/MediaSessionManager;

    invoke-virtual {v1, p0, v3, v0}, Landroid/media/session/MediaSessionManager;->addOnActiveSessionsChangedListener(Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;Landroid/content/ComponentName;Landroid/os/Handler;)V

    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor;->mSessionManager:Landroid/media/session/MediaSessionManager;

    invoke-virtual {v1, v3}, Landroid/media/session/MediaSessionManager;->getActiveSessions(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor;->onActiveSessionsChanged(Ljava/util/List;)V

    return-void
.end method

.method private stop()V
    .locals 2

    const-string/jumbo v0, "PlaybackStateMonitor_LOCK"

    const-string/jumbo v1, "Stop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor;->mIsPlaying:Z

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor;->mSessionManager:Landroid/media/session/MediaSessionManager;

    invoke-virtual {v0, p0}, Landroid/media/session/MediaSessionManager;->removeOnActiveSessionsChangedListener(Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;)V

    return-void
.end method

.method private updateController(Landroid/media/session/MediaController;)V
    .locals 3

    const-string/jumbo v0, "PlaybackStateMonitor_LOCK"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateController: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", current controller = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor;->mMediaController:Landroid/media/session/MediaController;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor;->mLock:Ljava/lang/Object;

    monitor-enter v1

    if-nez p1, :cond_3

    :try_start_0
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor;->mMediaController:Landroid/media/session/MediaController;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor;->mSessionCb:Landroid/media/session/MediaController$Callback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor;->mMediaController:Landroid/media/session/MediaController;

    iget-object v2, p0, Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor;->mSessionCb:Landroid/media/session/MediaController$Callback;

    invoke-virtual {v0, v2}, Landroid/media/session/MediaController;->unregisterCallback(Landroid/media/session/MediaController$Callback;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor;->mSessionCb:Landroid/media/session/MediaController$Callback;

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor;->mOnPlaybackStateChangedListener:Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor$OnPlaybackStateChangedListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor;->mOnPlaybackStateChangedListener:Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor$OnPlaybackStateChangedListener;

    invoke-virtual {p0}, Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor;->getCurrentActiveSessionPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor$OnPlaybackStateChangedListener;->onSessionDestroyed(Ljava/lang/String;)V

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor;->mMediaController:Landroid/media/session/MediaController;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    :goto_0
    monitor-exit v1

    return-void

    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor;->mMediaController:Landroid/media/session/MediaController;

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Landroid/media/session/MediaController;->getSessionToken()Landroid/media/session/MediaSession$Token;

    move-result-object v0

    iget-object v2, p0, Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor;->mMediaController:Landroid/media/session/MediaController;

    invoke-virtual {v2}, Landroid/media/session/MediaController;->getSessionToken()Landroid/media/session/MediaSession$Token;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/media/session/MediaSession$Token;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_4
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor;->mMediaController:Landroid/media/session/MediaController;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor;->mSessionCb:Landroid/media/session/MediaController$Callback;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor;->mMediaController:Landroid/media/session/MediaController;

    iget-object v2, p0, Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor;->mSessionCb:Landroid/media/session/MediaController$Callback;

    invoke-virtual {v0, v2}, Landroid/media/session/MediaController;->unregisterCallback(Landroid/media/session/MediaController$Callback;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor;->mSessionCb:Landroid/media/session/MediaController$Callback;

    :cond_5
    new-instance v0, Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor$SessionCallback;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor$SessionCallback;-><init>(Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor;Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor$SessionCallback;)V

    iput-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor;->mSessionCb:Landroid/media/session/MediaController$Callback;

    iput-object p1, p0, Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor;->mMediaController:Landroid/media/session/MediaController;

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor;->mMediaController:Landroid/media/session/MediaController;

    iget-object v2, p0, Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor;->mSessionCb:Landroid/media/session/MediaController$Callback;

    invoke-virtual {v0, v2}, Landroid/media/session/MediaController;->registerCallback(Landroid/media/session/MediaController$Callback;)V

    invoke-direct {p0}, Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor;->sendCurrentState()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public getCurrentActiveSessionPackageName()Ljava/lang/String;
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor;->mMediaController:Landroid/media/session/MediaController;

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor;->mMediaController:Landroid/media/session/MediaController;

    invoke-virtual {v0}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMediaButtonReceiver()Landroid/app/PendingIntent;
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor;->mMediaController:Landroid/media/session/MediaController;

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor;->mMediaController:Landroid/media/session/MediaController;

    invoke-virtual {v0}, Landroid/media/session/MediaController;->getMediaButtonReceiver()Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method public getSessionActivity()Landroid/app/PendingIntent;
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor;->mMediaController:Landroid/media/session/MediaController;

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor;->mMediaController:Landroid/media/session/MediaController;

    invoke-virtual {v0}, Landroid/media/session/MediaController;->getSessionActivity()Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method public onActiveSessionsChanged(Ljava/util/List;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/media/session/MediaController;",
            ">;)V"
        }
    .end annotation

    const/4 v12, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_1

    const-string/jumbo v8, "Size: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaController;

    const-string/jumbo v8, " Package: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v8, " Flags: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/media/session/MediaController;->getFlags()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v8, " State: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v8, " Metadata: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/media/session/MediaController;->getMetadata()Landroid/media/MediaMetadata;

    move-result-object v4

    if-nez v4, :cond_0

    const-string/jumbo v8, "null"

    :goto_1
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {v4}, Landroid/media/MediaMetadata;->getDescription()Landroid/media/MediaDescription;

    move-result-object v8

    goto :goto_1

    :cond_1
    const-string/jumbo v8, "PlaybackStateMonitor_LOCK"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "onActiveSessionsChanged controllers: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_3

    :cond_2
    invoke-direct {p0, v12}, Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor;->updateController(Landroid/media/session/MediaController;)V

    return-void

    :cond_3
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaController;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object v5

    invoke-virtual {v0}, Landroid/media/session/MediaController;->getMetadata()Landroid/media/MediaMetadata;

    move-result-object v4

    if-eqz v5, :cond_4

    if-eqz v4, :cond_4

    invoke-virtual {v0}, Landroid/media/session/MediaController;->getFlags()J

    move-result-wide v2

    const-wide/16 v8, 0x2

    and-long/2addr v8, v2

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-eqz v8, :cond_4

    invoke-virtual {v5}, Landroid/media/session/PlaybackState;->getState()I

    move-result v7

    const/4 v8, 0x3

    if-eq v7, v8, :cond_5

    const/4 v8, 0x6

    if-ne v7, v8, :cond_4

    :cond_5
    invoke-direct {p0, v0}, Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor;->updateController(Landroid/media/session/MediaController;)V

    return-void
.end method

.method public removeOnPlaybackStateChangedListener()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor;->mOnPlaybackStateChangedListener:Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor$OnPlaybackStateChangedListener;

    invoke-direct {p0}, Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor;->stop()V

    return-void
.end method

.method public sendMediaButtonEvent(Landroid/view/KeyEvent;)Z
    .locals 4

    const/4 v3, 0x0

    const-string/jumbo v0, "PlaybackStateMonitor_LOCK"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendMediaButtonEvent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor;->mLock:Ljava/lang/Object;

    monitor-enter v1

    if-nez p1, :cond_0

    :try_start_0
    const-string/jumbo v0, "PlaybackStateMonitor_LOCK"

    const-string/jumbo v2, "sendMediaButtonEvent: KeyEvent is null"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return v3

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor;->mMediaController:Landroid/media/session/MediaController;

    if-nez v0, :cond_1

    const-string/jumbo v0, "PlaybackStateMonitor_LOCK"

    const-string/jumbo v2, "send to SessionManager"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor;->mSessionManager:Landroid/media/session/MediaSessionManager;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/media/session/MediaSessionManager;->dispatchMediaKeyEvent(Landroid/view/KeyEvent;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x1

    monitor-exit v1

    return v0

    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor;->mMediaController:Landroid/media/session/MediaController;

    invoke-virtual {v0, p1}, Landroid/media/session/MediaController;->dispatchMediaButtonEvent(Landroid/view/KeyEvent;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public setOnPlaybackStateChangedListener(Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor$OnPlaybackStateChangedListener;)V
    .locals 2

    const-string/jumbo v0, "PlaybackStateMonitor_LOCK"

    const-string/jumbo v1, "addOnPlaybackStateChangedListener() : onPlaybackStateChangedListener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor;->mOnPlaybackStateChangedListener:Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor$OnPlaybackStateChangedListener;

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor;->start()V

    invoke-direct {p0}, Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor;->sendCurrentState()V

    :cond_0
    return-void
.end method
