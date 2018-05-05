.class Lcom/android/server/location/GnssLocationProvider$12;
.super Ljava/lang/Object;
.source "GnssLocationProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/location/GnssLocationProvider;->handleDownloadXtraData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/GnssLocationProvider;


# direct methods
.method constructor <init>(Lcom/android/server/location/GnssLocationProvider;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/location/GnssLocationProvider$12;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x0

    new-instance v1, Lcom/android/server/location/GpsXtraDownloader;

    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider$12;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-static {v2}, Lcom/android/server/location/GnssLocationProvider;->-get17(Lcom/android/server/location/GnssLocationProvider;)Ljava/util/Properties;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/server/location/GpsXtraDownloader;-><init>(Ljava/util/Properties;)V

    invoke-virtual {v1}, Lcom/android/server/location/GpsXtraDownloader;->downloadXtraData()[B

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/server/location/GnssLocationProvider;->-get0()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "GnssLocationProvider"

    const-string/jumbo v3, "calling native_inject_xtra_data"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider$12;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-virtual {v2}, Lcom/android/server/location/GnssLocationProvider;->extension_set_xtra_downloaded_time()V

    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider$12;->this$0:Lcom/android/server/location/GnssLocationProvider;

    array-length v3, v0

    invoke-static {v2, v0, v3}, Lcom/android/server/location/GnssLocationProvider;->-wrap26(Lcom/android/server/location/GnssLocationProvider;[BI)V

    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider$12;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-static {v2}, Lcom/android/server/location/GnssLocationProvider;->-get21(Lcom/android/server/location/GnssLocationProvider;)Lcom/android/server/location/GnssLocationProvider$BackOff;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/location/GnssLocationProvider$BackOff;->reset()V

    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider$12;->this$0:Lcom/android/server/location/GnssLocationProvider;

    const/16 v3, 0xb

    invoke-static {v2, v3, v5, v4}, Lcom/android/server/location/GnssLocationProvider;->-wrap30(Lcom/android/server/location/GnssLocationProvider;IILjava/lang/Object;)V

    :cond_1
    if-nez v0, :cond_2

    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider$12;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-static {v2, v5}, Lcom/android/server/location/GnssLocationProvider;->-set0(Lcom/android/server/location/GnssLocationProvider;I)I

    :cond_2
    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider$12;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-static {v2}, Lcom/android/server/location/GnssLocationProvider;->-get19(Lcom/android/server/location/GnssLocationProvider;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    const-string/jumbo v2, "GnssLocationProvider"

    const-string/jumbo v3, "WakeLock released by handleDownloadXtraData()"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
