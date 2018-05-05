.class Lcom/android/keyguard/servicebox/pages/music/MusicController$1;
.super Ljava/lang/Object;
.source "MusicController.java"

# interfaces
.implements Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor$OnPlaybackStateChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/servicebox/pages/music/MusicController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/servicebox/pages/music/MusicController;


# direct methods
.method constructor <init>(Lcom/android/keyguard/servicebox/pages/music/MusicController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/servicebox/pages/music/MusicController$1;->this$0:Lcom/android/keyguard/servicebox/pages/music/MusicController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLyricsChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    iget-object v3, p0, Lcom/android/keyguard/servicebox/pages/music/MusicController$1;->this$0:Lcom/android/keyguard/servicebox/pages/music/MusicController;

    invoke-static {v3}, Lcom/android/keyguard/servicebox/pages/music/MusicController;->-get2(Lcom/android/keyguard/servicebox/pages/music/MusicController;)Landroid/media/MediaMetadata;

    move-result-object v3

    if-nez v3, :cond_0

    return-void

    :cond_0
    iget-object v3, p0, Lcom/android/keyguard/servicebox/pages/music/MusicController$1;->this$0:Lcom/android/keyguard/servicebox/pages/music/MusicController;

    invoke-static {v3}, Lcom/android/keyguard/servicebox/pages/music/MusicController;->-get2(Lcom/android/keyguard/servicebox/pages/music/MusicController;)Landroid/media/MediaMetadata;

    move-result-object v3

    const-string/jumbo v4, "android.media.metadata.MEDIA_ID"

    invoke-virtual {v3, v4}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    return-void

    :cond_1
    iget-object v3, p0, Lcom/android/keyguard/servicebox/pages/music/MusicController$1;->this$0:Lcom/android/keyguard/servicebox/pages/music/MusicController;

    invoke-static {v3, p2}, Lcom/android/keyguard/servicebox/pages/music/MusicController;->-set3(Lcom/android/keyguard/servicebox/pages/music/MusicController;Ljava/lang/String;)Ljava/lang/String;

    iget-object v3, p0, Lcom/android/keyguard/servicebox/pages/music/MusicController$1;->this$0:Lcom/android/keyguard/servicebox/pages/music/MusicController;

    invoke-static {v3}, Lcom/android/keyguard/servicebox/pages/music/MusicController;->-get6(Lcom/android/keyguard/servicebox/pages/music/MusicController;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/servicebox/pages/music/MusicController$MusicControllerListener;

    if-eqz v0, :cond_2

    iget-object v3, p0, Lcom/android/keyguard/servicebox/pages/music/MusicController$1;->this$0:Lcom/android/keyguard/servicebox/pages/music/MusicController;

    invoke-static {v3}, Lcom/android/keyguard/servicebox/pages/music/MusicController;->-get4(Lcom/android/keyguard/servicebox/pages/music/MusicController;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/android/keyguard/servicebox/pages/music/MusicController$MusicControllerListener;->setLyrics(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public onMetadataChanged(Landroid/media/MediaMetadata;)V
    .locals 10

    const/4 v9, -0x2

    const-string/jumbo v6, "MusicController_LOCK"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "onMetadataChanged() metadata = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/keyguard/servicebox/pages/music/MusicController$1;->this$0:Lcom/android/keyguard/servicebox/pages/music/MusicController;

    invoke-static {v6, p1}, Lcom/android/keyguard/servicebox/pages/music/MusicController;->-set1(Lcom/android/keyguard/servicebox/pages/music/MusicController;Landroid/media/MediaMetadata;)Landroid/media/MediaMetadata;

    iget-object v6, p0, Lcom/android/keyguard/servicebox/pages/music/MusicController$1;->this$0:Lcom/android/keyguard/servicebox/pages/music/MusicController;

    invoke-static {v6}, Lcom/android/keyguard/servicebox/pages/music/MusicController;->-get6(Lcom/android/keyguard/servicebox/pages/music/MusicController;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/servicebox/pages/music/MusicController$MusicControllerListener;

    if-eqz v1, :cond_0

    invoke-interface {v1, p1}, Lcom/android/keyguard/servicebox/pages/music/MusicController$MusicControllerListener;->setMetadata(Landroid/media/MediaMetadata;)V

    goto :goto_0

    :cond_1
    iget-object v6, p0, Lcom/android/keyguard/servicebox/pages/music/MusicController$1;->this$0:Lcom/android/keyguard/servicebox/pages/music/MusicController;

    invoke-static {v6}, Lcom/android/keyguard/servicebox/pages/music/MusicController;->-get7(Lcom/android/keyguard/servicebox/pages/music/MusicController;)Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor;->getMediaButtonReceiver()Landroid/app/PendingIntent;

    move-result-object v2

    if-eqz v2, :cond_2

    if-nez p1, :cond_3

    const-string/jumbo v5, ""

    :goto_1
    if-nez p1, :cond_4

    const-string/jumbo v0, ""

    :goto_2
    iget-object v6, p0, Lcom/android/keyguard/servicebox/pages/music/MusicController$1;->this$0:Lcom/android/keyguard/servicebox/pages/music/MusicController;

    invoke-static {v6}, Lcom/android/keyguard/servicebox/pages/music/MusicController;->-get0(Lcom/android/keyguard/servicebox/pages/music/MusicController;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "servicebox_music_last_title"

    invoke-static {v6, v7, v5, v9}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    iget-object v6, p0, Lcom/android/keyguard/servicebox/pages/music/MusicController$1;->this$0:Lcom/android/keyguard/servicebox/pages/music/MusicController;

    invoke-static {v6}, Lcom/android/keyguard/servicebox/pages/music/MusicController;->-get0(Lcom/android/keyguard/servicebox/pages/music/MusicController;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "servicebox_music_last_artist"

    invoke-static {v6, v7, v0, v9}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    :cond_2
    return-void

    :cond_3
    const-string/jumbo v6, "android.media.metadata.TITLE"

    invoke-virtual {p1, v6}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_4
    const-string/jumbo v6, "android.media.metadata.ARTIST"

    invoke-virtual {p1, v6}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method

.method public onPendingIntentChanged(Landroid/app/PendingIntent;)V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/MusicController$1;->this$0:Lcom/android/keyguard/servicebox/pages/music/MusicController;

    invoke-static {v0, p1}, Lcom/android/keyguard/servicebox/pages/music/MusicController;->-set6(Lcom/android/keyguard/servicebox/pages/music/MusicController;Landroid/app/PendingIntent;)Landroid/app/PendingIntent;

    return-void
.end method

.method public onPlaybackStateChanged(Landroid/media/session/PlaybackState;)V
    .locals 6

    iget-object v3, p0, Lcom/android/keyguard/servicebox/pages/music/MusicController$1;->this$0:Lcom/android/keyguard/servicebox/pages/music/MusicController;

    invoke-static {v3, p1}, Lcom/android/keyguard/servicebox/pages/music/MusicController;->-set5(Lcom/android/keyguard/servicebox/pages/music/MusicController;Landroid/media/session/PlaybackState;)Landroid/media/session/PlaybackState;

    if-eqz p1, :cond_0

    const-string/jumbo v3, "MusicController_LOCK"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onPlaybackStateChanged() / "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/media/session/PlaybackState;->getState()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/media/session/PlaybackState;->getState()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    :cond_0
    return-void

    :pswitch_0
    iget-object v3, p0, Lcom/android/keyguard/servicebox/pages/music/MusicController$1;->this$0:Lcom/android/keyguard/servicebox/pages/music/MusicController;

    invoke-static {v3}, Lcom/android/keyguard/servicebox/pages/music/MusicController;->-get6(Lcom/android/keyguard/servicebox/pages/music/MusicController;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/servicebox/pages/music/MusicController$MusicControllerListener;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lcom/android/keyguard/servicebox/pages/music/MusicController$MusicControllerListener;->setPlaybackState(Landroid/media/session/PlaybackState;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onSessionChanged(Ljava/lang/String;)V
    .locals 8

    const-string/jumbo v4, "MusicController_LOCK"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onSessionChanged() session is changed = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/keyguard/servicebox/pages/music/MusicController$1;->this$0:Lcom/android/keyguard/servicebox/pages/music/MusicController;

    invoke-static {v4}, Lcom/android/keyguard/servicebox/pages/music/MusicController;->-get5(Lcom/android/keyguard/servicebox/pages/music/MusicController;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-void

    :cond_0
    iget-object v4, p0, Lcom/android/keyguard/servicebox/pages/music/MusicController$1;->this$0:Lcom/android/keyguard/servicebox/pages/music/MusicController;

    invoke-static {v4, p1}, Lcom/android/keyguard/servicebox/pages/music/MusicController;->-set4(Lcom/android/keyguard/servicebox/pages/music/MusicController;Ljava/lang/String;)Ljava/lang/String;

    iget-object v4, p0, Lcom/android/keyguard/servicebox/pages/music/MusicController$1;->this$0:Lcom/android/keyguard/servicebox/pages/music/MusicController;

    iget-object v5, p0, Lcom/android/keyguard/servicebox/pages/music/MusicController$1;->this$0:Lcom/android/keyguard/servicebox/pages/music/MusicController;

    iget-object v6, p0, Lcom/android/keyguard/servicebox/pages/music/MusicController$1;->this$0:Lcom/android/keyguard/servicebox/pages/music/MusicController;

    invoke-static {v6}, Lcom/android/keyguard/servicebox/pages/music/MusicController;->-get5(Lcom/android/keyguard/servicebox/pages/music/MusicController;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/keyguard/servicebox/pages/music/MusicController;->-wrap0(Lcom/android/keyguard/servicebox/pages/music/MusicController;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/keyguard/servicebox/pages/music/MusicController;->-set2(Lcom/android/keyguard/servicebox/pages/music/MusicController;Ljava/lang/String;)Ljava/lang/String;

    iget-object v4, p0, Lcom/android/keyguard/servicebox/pages/music/MusicController$1;->this$0:Lcom/android/keyguard/servicebox/pages/music/MusicController;

    invoke-static {v4}, Lcom/android/keyguard/servicebox/pages/music/MusicController;->-get6(Lcom/android/keyguard/servicebox/pages/music/MusicController;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/servicebox/pages/music/MusicController$MusicControllerListener;

    if-eqz v0, :cond_1

    iget-object v4, p0, Lcom/android/keyguard/servicebox/pages/music/MusicController$1;->this$0:Lcom/android/keyguard/servicebox/pages/music/MusicController;

    invoke-static {v4}, Lcom/android/keyguard/servicebox/pages/music/MusicController;->-get3(Lcom/android/keyguard/servicebox/pages/music/MusicController;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Lcom/android/keyguard/servicebox/pages/music/MusicController$MusicControllerListener;->setAppName(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/android/keyguard/servicebox/pages/music/MusicController$1;->this$0:Lcom/android/keyguard/servicebox/pages/music/MusicController;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/android/keyguard/servicebox/pages/music/MusicController;->-set0(Lcom/android/keyguard/servicebox/pages/music/MusicController;Z)Z

    iget-object v4, p0, Lcom/android/keyguard/servicebox/pages/music/MusicController$1;->this$0:Lcom/android/keyguard/servicebox/pages/music/MusicController;

    invoke-static {v4}, Lcom/android/keyguard/servicebox/pages/music/MusicController;->-get7(Lcom/android/keyguard/servicebox/pages/music/MusicController;)Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor;->getMediaButtonReceiver()Landroid/app/PendingIntent;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v4, p0, Lcom/android/keyguard/servicebox/pages/music/MusicController$1;->this$0:Lcom/android/keyguard/servicebox/pages/music/MusicController;

    invoke-static {v4}, Lcom/android/keyguard/servicebox/pages/music/MusicController;->-get0(Lcom/android/keyguard/servicebox/pages/music/MusicController;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "servicebox_music_last_pkg"

    iget-object v6, p0, Lcom/android/keyguard/servicebox/pages/music/MusicController$1;->this$0:Lcom/android/keyguard/servicebox/pages/music/MusicController;

    invoke-static {v6}, Lcom/android/keyguard/servicebox/pages/music/MusicController;->-get5(Lcom/android/keyguard/servicebox/pages/music/MusicController;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, -0x2

    invoke-static {v4, v5, v6, v7}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    :cond_3
    return-void
.end method

.method public onSessionDestroyed(Ljava/lang/String;)V
    .locals 4

    iget-object v3, p0, Lcom/android/keyguard/servicebox/pages/music/MusicController$1;->this$0:Lcom/android/keyguard/servicebox/pages/music/MusicController;

    invoke-static {v3}, Lcom/android/keyguard/servicebox/pages/music/MusicController;->-get5(Lcom/android/keyguard/servicebox/pages/music/MusicController;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    return-void

    :cond_0
    iget-object v3, p0, Lcom/android/keyguard/servicebox/pages/music/MusicController$1;->this$0:Lcom/android/keyguard/servicebox/pages/music/MusicController;

    invoke-static {v3}, Lcom/android/keyguard/servicebox/pages/music/MusicController;->-wrap1(Lcom/android/keyguard/servicebox/pages/music/MusicController;)V

    iget-object v3, p0, Lcom/android/keyguard/servicebox/pages/music/MusicController$1;->this$0:Lcom/android/keyguard/servicebox/pages/music/MusicController;

    invoke-static {v3}, Lcom/android/keyguard/servicebox/pages/music/MusicController;->-get6(Lcom/android/keyguard/servicebox/pages/music/MusicController;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/servicebox/pages/music/MusicController$MusicControllerListener;

    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/android/keyguard/servicebox/pages/music/MusicController$1;->this$0:Lcom/android/keyguard/servicebox/pages/music/MusicController;

    invoke-static {v3}, Lcom/android/keyguard/servicebox/pages/music/MusicController;->-get1(Lcom/android/keyguard/servicebox/pages/music/MusicController;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Lcom/android/keyguard/servicebox/pages/music/MusicController$MusicControllerListener;->clear()V

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/android/keyguard/servicebox/pages/music/MusicController$1;->this$0:Lcom/android/keyguard/servicebox/pages/music/MusicController;

    invoke-static {v3}, Lcom/android/keyguard/servicebox/pages/music/MusicController;->-get2(Lcom/android/keyguard/servicebox/pages/music/MusicController;)Landroid/media/MediaMetadata;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/android/keyguard/servicebox/pages/music/MusicController$MusicControllerListener;->setMetadata(Landroid/media/MediaMetadata;)V

    iget-object v3, p0, Lcom/android/keyguard/servicebox/pages/music/MusicController$1;->this$0:Lcom/android/keyguard/servicebox/pages/music/MusicController;

    invoke-static {v3}, Lcom/android/keyguard/servicebox/pages/music/MusicController;->-get3(Lcom/android/keyguard/servicebox/pages/music/MusicController;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/android/keyguard/servicebox/pages/music/MusicController$MusicControllerListener;->setAppName(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    return-void
.end method
