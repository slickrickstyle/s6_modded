.class Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceImpl;
.super Ljava/lang/Object;
.source "MediaBrowserServiceCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/MediaBrowserServiceCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ServiceImpl"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v4/media/MediaBrowserServiceCompat;


# direct methods
.method private constructor <init>(Landroid/support/v4/media/MediaBrowserServiceCompat;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceImpl;->this$0:Landroid/support/v4/media/MediaBrowserServiceCompat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v4/media/MediaBrowserServiceCompat;Landroid/support/v4/media/MediaBrowserServiceCompat$1;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceImpl;-><init>(Landroid/support/v4/media/MediaBrowserServiceCompat;)V

    return-void
.end method


# virtual methods
.method public addSubscription(Ljava/lang/String;Landroid/os/Bundle;Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceCallbacks;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceImpl;->this$0:Landroid/support/v4/media/MediaBrowserServiceCompat;

    invoke-static {v0}, Landroid/support/v4/media/MediaBrowserServiceCompat;->access$100(Landroid/support/v4/media/MediaBrowserServiceCompat;)Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceHandler;

    move-result-object v0

    new-instance v1, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceImpl$3;

    invoke-direct {v1, p0, p3, p1, p2}, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceImpl$3;-><init>(Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceImpl;Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceCallbacks;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceHandler;->postOrRun(Ljava/lang/Runnable;)V

    return-void
.end method

.method public connect(Ljava/lang/String;ILandroid/os/Bundle;Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceCallbacks;)V
    .locals 7

    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceImpl;->this$0:Landroid/support/v4/media/MediaBrowserServiceCompat;

    invoke-static {v0, p1, p2}, Landroid/support/v4/media/MediaBrowserServiceCompat;->access$400(Landroid/support/v4/media/MediaBrowserServiceCompat;Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Package/uid mismatch: uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " package="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceImpl;->this$0:Landroid/support/v4/media/MediaBrowserServiceCompat;

    invoke-static {v0}, Landroid/support/v4/media/MediaBrowserServiceCompat;->access$100(Landroid/support/v4/media/MediaBrowserServiceCompat;)Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceHandler;

    move-result-object v6

    new-instance v0, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceImpl$1;

    move-object v1, p0

    move-object v2, p4

    move-object v3, p1

    move-object v4, p3

    move v5, p2

    invoke-direct/range {v0 .. v5}, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceImpl$1;-><init>(Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceImpl;Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceCallbacks;Ljava/lang/String;Landroid/os/Bundle;I)V

    invoke-virtual {v6, v0}, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceHandler;->postOrRun(Ljava/lang/Runnable;)V

    return-void
.end method

.method public disconnect(Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceCallbacks;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceImpl;->this$0:Landroid/support/v4/media/MediaBrowserServiceCompat;

    invoke-static {v0}, Landroid/support/v4/media/MediaBrowserServiceCompat;->access$100(Landroid/support/v4/media/MediaBrowserServiceCompat;)Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceHandler;

    move-result-object v0

    new-instance v1, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceImpl$2;

    invoke-direct {v1, p0, p1}, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceImpl$2;-><init>(Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceImpl;Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceCallbacks;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceHandler;->postOrRun(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getMediaItem(Ljava/lang/String;Landroid/support/v4/os/ResultReceiver;)V
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceImpl;->this$0:Landroid/support/v4/media/MediaBrowserServiceCompat;

    invoke-static {v0}, Landroid/support/v4/media/MediaBrowserServiceCompat;->access$100(Landroid/support/v4/media/MediaBrowserServiceCompat;)Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceHandler;

    move-result-object v0

    new-instance v1, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceImpl$5;

    invoke-direct {v1, p0, p1, p2}, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceImpl$5;-><init>(Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceImpl;Ljava/lang/String;Landroid/support/v4/os/ResultReceiver;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceHandler;->postOrRun(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public registerCallbacks(Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceCallbacks;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceImpl;->this$0:Landroid/support/v4/media/MediaBrowserServiceCompat;

    invoke-static {v0}, Landroid/support/v4/media/MediaBrowserServiceCompat;->access$100(Landroid/support/v4/media/MediaBrowserServiceCompat;)Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceHandler;

    move-result-object v0

    new-instance v1, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceImpl$6;

    invoke-direct {v1, p0, p1}, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceImpl$6;-><init>(Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceImpl;Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceCallbacks;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceHandler;->postOrRun(Ljava/lang/Runnable;)V

    return-void
.end method

.method public removeSubscription(Ljava/lang/String;Landroid/os/Bundle;Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceCallbacks;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceImpl;->this$0:Landroid/support/v4/media/MediaBrowserServiceCompat;

    invoke-static {v0}, Landroid/support/v4/media/MediaBrowserServiceCompat;->access$100(Landroid/support/v4/media/MediaBrowserServiceCompat;)Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceHandler;

    move-result-object v0

    new-instance v1, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceImpl$4;

    invoke-direct {v1, p0, p3, p1, p2}, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceImpl$4;-><init>(Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceImpl;Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceCallbacks;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceHandler;->postOrRun(Ljava/lang/Runnable;)V

    return-void
.end method

.method public unregisterCallbacks(Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceCallbacks;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceImpl;->this$0:Landroid/support/v4/media/MediaBrowserServiceCompat;

    invoke-static {v0}, Landroid/support/v4/media/MediaBrowserServiceCompat;->access$100(Landroid/support/v4/media/MediaBrowserServiceCompat;)Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceHandler;

    move-result-object v0

    new-instance v1, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceImpl$7;

    invoke-direct {v1, p0, p1}, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceImpl$7;-><init>(Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceImpl;Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceCallbacks;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceHandler;->postOrRun(Ljava/lang/Runnable;)V

    return-void
.end method
