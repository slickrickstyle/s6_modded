.class Lcom/samsung/android/settings/nearby/NearbyEnabler$HandleRejectDevice;
.super Ljava/lang/Object;
.source "NearbyEnabler.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/nearby/NearbyEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HandleRejectDevice"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/nearby/NearbyEnabler;


# direct methods
.method private constructor <init>(Lcom/samsung/android/settings/nearby/NearbyEnabler;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/nearby/NearbyEnabler$HandleRejectDevice;->this$0:Lcom/samsung/android/settings/nearby/NearbyEnabler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/settings/nearby/NearbyEnabler;Lcom/samsung/android/settings/nearby/NearbyEnabler$HandleRejectDevice;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/nearby/NearbyEnabler$HandleRejectDevice;-><init>(Lcom/samsung/android/settings/nearby/NearbyEnabler;)V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 6

    const/4 v5, 0x0

    invoke-static {}, Lcom/samsung/android/settings/nearby/NearbyEnabler;->-get3()Lcom/samsung/android/settings/nearby/IMediaServer;

    move-result-object v1

    if-eqz v1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    return v5

    :cond_1
    instance-of v1, p2, Ljava/util/HashSet;

    if-eqz v1, :cond_0

    :try_start_0
    const-string/jumbo v1, "NearbyEnabler"

    const-string/jumbo v2, "HandleRejectDevice"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "HandleRejectDevice"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/samsung/android/settings/nearby/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/settings/nearby/NearbyEnabler;->-get3()Lcom/samsung/android/settings/nearby/IMediaServer;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/nearby/NearbyEnabler$HandleRejectDevice;->this$0:Lcom/samsung/android/settings/nearby/NearbyEnabler;

    check-cast p2, Ljava/util/HashSet;

    invoke-static {v2, p2}, Lcom/samsung/android/settings/nearby/NearbyEnabler;->-wrap1(Lcom/samsung/android/settings/nearby/NearbyEnabler;Ljava/util/HashSet;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/samsung/android/settings/nearby/IMediaServer;->removeRejectList(Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/settings/nearby/NearbyEnabler;->-get3()Lcom/samsung/android/settings/nearby/IMediaServer;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/settings/nearby/IMediaServer;->isServerStarted()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/samsung/android/settings/nearby/NearbyEnabler;->-get3()Lcom/samsung/android/settings/nearby/IMediaServer;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/settings/nearby/IMediaServer;->announceServer()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    const/4 v1, 0x1

    return v1

    :catch_0
    move-exception v0

    const-string/jumbo v1, "NearbyEnabler"

    const-string/jumbo v2, "HandleRejectDevice"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/samsung/android/settings/nearby/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v5
.end method
