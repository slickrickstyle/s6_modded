.class Landroid/support/v4/media/MediaBrowserServiceCompatApi23$MediaBrowserServiceAdaptorApi23$ServiceBinderProxyApi23;
.super Landroid/support/v4/media/MediaBrowserServiceCompatApi21$MediaBrowserServiceAdaptorApi21$ServiceBinderProxyApi21;
.source "MediaBrowserServiceCompatApi23.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/MediaBrowserServiceCompatApi23$MediaBrowserServiceAdaptorApi23;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ServiceBinderProxyApi23"
.end annotation


# instance fields
.field mServiceImpl:Landroid/support/v4/media/MediaBrowserServiceCompatApi23$ServiceImplApi23;


# direct methods
.method constructor <init>(Landroid/support/v4/media/MediaBrowserServiceCompatApi23$ServiceImplApi23;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/v4/media/MediaBrowserServiceCompatApi21$MediaBrowserServiceAdaptorApi21$ServiceBinderProxyApi21;-><init>(Landroid/support/v4/media/MediaBrowserServiceCompatApi21$ServiceImplApi21;)V

    iput-object p1, p0, Landroid/support/v4/media/MediaBrowserServiceCompatApi23$MediaBrowserServiceAdaptorApi23$ServiceBinderProxyApi23;->mServiceImpl:Landroid/support/v4/media/MediaBrowserServiceCompatApi23$ServiceImplApi23;

    return-void
.end method


# virtual methods
.method public getMediaItem(Ljava/lang/String;Landroid/os/ResultReceiver;)V
    .locals 4

    :try_start_0
    const-class v2, Landroid/service/media/MediaBrowserService;

    const-string v3, "KEY_MEDIA_ITEM"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v2, p0, Landroid/support/v4/media/MediaBrowserServiceCompatApi23$MediaBrowserServiceAdaptorApi23$ServiceBinderProxyApi23;->mServiceImpl:Landroid/support/v4/media/MediaBrowserServiceCompatApi23$ServiceImplApi23;

    new-instance v3, Landroid/support/v4/media/MediaBrowserServiceCompatApi23$MediaBrowserServiceAdaptorApi23$ServiceBinderProxyApi23$1;

    invoke-direct {v3, p0, v0, p2}, Landroid/support/v4/media/MediaBrowserServiceCompatApi23$MediaBrowserServiceAdaptorApi23$ServiceBinderProxyApi23$1;-><init>(Landroid/support/v4/media/MediaBrowserServiceCompatApi23$MediaBrowserServiceAdaptorApi23$ServiceBinderProxyApi23;Ljava/lang/String;Landroid/os/ResultReceiver;)V

    invoke-interface {v2, p1, v3}, Landroid/support/v4/media/MediaBrowserServiceCompatApi23$ServiceImplApi23;->getMediaItem(Ljava/lang/String;Landroid/support/v4/media/MediaBrowserServiceCompatApi23$ItemCallback;)V

    :goto_0
    return-void

    :catch_0
    move-exception v1

    :goto_1
    const-string v2, "MediaBrowserServiceCompatApi21"

    const-string v3, "Failed to get KEY_MEDIA_ITEM via reflection"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_1
.end method
