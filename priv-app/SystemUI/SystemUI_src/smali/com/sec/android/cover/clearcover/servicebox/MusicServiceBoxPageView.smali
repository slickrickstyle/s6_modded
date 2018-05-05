.class public Lcom/sec/android/cover/clearcover/servicebox/MusicServiceBoxPageView;
.super Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageView;
.source "MusicServiceBoxPageView.java"

# interfaces
.implements Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor$OnPlaybackStateChangedListener;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mMusicWidget:Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget;

.field private mNoMusicTextView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ClearCover"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/sec/android/cover/clearcover/servicebox/MusicServiceBoxPageView;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/cover/clearcover/servicebox/MusicServiceBoxPageView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/cover/clearcover/servicebox/MusicServiceBoxPageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/android/cover/clearcover/servicebox/MusicServiceBoxPageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/sec/android/cover/clearcover/servicebox/MusicServiceBoxPageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method private updateMusicVisibility(Z)V
    .locals 3

    const/16 v2, 0x8

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/servicebox/MusicServiceBoxPageView;->mMusicWidget:Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget;

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/servicebox/MusicServiceBoxPageView;->mNoMusicTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/servicebox/MusicServiceBoxPageView;->mMusicWidget:Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget;

    invoke-virtual {v0, v2}, Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/servicebox/MusicServiceBoxPageView;->mNoMusicTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 1

    invoke-super {p0}, Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageView;->onFinishInflate()V

    sget v0, Lcom/sec/android/sviewcover/R$id;->clear_music_widget:I

    invoke-virtual {p0, v0}, Lcom/sec/android/cover/clearcover/servicebox/MusicServiceBoxPageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget;

    iput-object v0, p0, Lcom/sec/android/cover/clearcover/servicebox/MusicServiceBoxPageView;->mMusicWidget:Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget;

    sget v0, Lcom/sec/android/sviewcover/R$id;->clear_cover_servicebox_music_page_no_music:I

    invoke-virtual {p0, v0}, Lcom/sec/android/cover/clearcover/servicebox/MusicServiceBoxPageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/cover/clearcover/servicebox/MusicServiceBoxPageView;->mNoMusicTextView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/servicebox/MusicServiceBoxPageView;->mMusicWidget:Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/servicebox/MusicServiceBoxPageView;->mNoMusicTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/cover/clearcover/servicebox/MusicServiceBoxPageView;->updateMusicVisibility(Z)V

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/servicebox/MusicServiceBoxPageView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->setOnPlaybackStateChangedListener(Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor$OnPlaybackStateChangedListener;)V

    :cond_0
    return-void
.end method

.method public onMetadataChanged(Landroid/media/MediaMetadata;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/servicebox/MusicServiceBoxPageView;->mMusicWidget:Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/servicebox/MusicServiceBoxPageView;->mMusicWidget:Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget;

    invoke-virtual {v0, p1}, Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget;->setMetadata(Landroid/media/MediaMetadata;)V

    :cond_0
    return-void
.end method

.method public onMusicPakcageChanged(Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/sec/android/cover/clearcover/servicebox/MusicServiceBoxPageView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onMusicPakcageChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/servicebox/MusicServiceBoxPageView;->mMusicWidget:Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/servicebox/MusicServiceBoxPageView;->mMusicWidget:Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget;

    invoke-virtual {v0, p1}, Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget;->setApplicationName(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onPlaybackStateChanged(Landroid/media/session/PlaybackState;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/servicebox/MusicServiceBoxPageView;->mMusicWidget:Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/media/session/PlaybackState;->getState()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/cover/clearcover/servicebox/MusicServiceBoxPageView;->updateMusicVisibility(Z)V

    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/servicebox/MusicServiceBoxPageView;->mMusicWidget:Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget;

    invoke-virtual {v0, p1}, Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget;->setPlaybackState(Landroid/media/session/PlaybackState;)V

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/cover/clearcover/servicebox/MusicServiceBoxPageView;->updateMusicVisibility(Z)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onSessionDestroyed()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/servicebox/MusicServiceBoxPageView;->mMusicWidget:Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/cover/clearcover/servicebox/MusicServiceBoxPageView;->updateMusicVisibility(Z)V

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/servicebox/MusicServiceBoxPageView;->mMusicWidget:Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget;

    invoke-virtual {v0}, Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget;->clear()V

    :cond_0
    return-void
.end method
