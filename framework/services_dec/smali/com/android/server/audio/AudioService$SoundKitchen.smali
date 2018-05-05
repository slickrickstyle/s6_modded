.class Lcom/android/server/audio/AudioService$SoundKitchen;
.super Ljava/lang/Object;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SoundKitchen"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;
    }
.end annotation


# static fields
.field public static final DEFAULT_VOLUME:I = 0x64


# instance fields
.field private mEnabled:Z

.field private mPinAppInfoList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/audio/AudioService;


# direct methods
.method constructor <init>(Lcom/android/server/audio/AudioService;)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/audio/AudioService$SoundKitchen;->this$0:Lcom/android/server/audio/AudioService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/audio/AudioService$SoundKitchen;->mPinAppInfoList:Ljava/util/HashMap;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/audio/AudioService$SoundKitchen;->mEnabled:Z

    return-void
.end method

.method private resetByEnableDisable()V
    .locals 7

    const-string/jumbo v5, "AudioService"

    const-string/jumbo v6, "resetByEnableDisable"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v5, p0, Lcom/android/server/audio/AudioService$SoundKitchen;->mEnabled:Z

    if-eqz v5, :cond_1

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/audio/AudioService$SoundKitchen;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v6}, Lcom/android/server/audio/AudioService;->-get55(Lcom/android/server/audio/AudioService;)Landroid/app/IProcessObserver;

    move-result-object v6

    invoke-interface {v5, v6}, Landroid/app/IActivityManager;->registerProcessObserver(Landroid/app/IProcessObserver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v5, 0x3

    invoke-static {v5}, Landroid/media/AudioSystem;->getDevicesForStream(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/android/server/audio/AudioService$SoundKitchen;->getUidList()[I

    move-result-object v4

    const/4 v3, 0x0

    :goto_1
    array-length v5, v4

    if-ge v3, v5, :cond_2

    iget-boolean v5, p0, Lcom/android/server/audio/AudioService$SoundKitchen;->mEnabled:Z

    if-nez v5, :cond_0

    aget v5, v4, v3

    invoke-virtual {p0, v5}, Lcom/android/server/audio/AudioService$SoundKitchen;->getAppDevice(I)I

    move-result v0

    const v5, 0x8000

    if-eq v1, v5, :cond_0

    if-eq v1, v0, :cond_0

    iget-object v5, p0, Lcom/android/server/audio/AudioService$SoundKitchen;->this$0:Lcom/android/server/audio/AudioService;

    aget v6, v4, v3

    invoke-static {v5, v6}, Lcom/android/server/audio/AudioService;->-wrap53(Lcom/android/server/audio/AudioService;I)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :catch_0
    move-exception v2

    const-string/jumbo v5, "AudioService"

    const-string/jumbo v6, "RemoteException -registerProcessObserver"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :cond_1
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/audio/AudioService$SoundKitchen;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v6}, Lcom/android/server/audio/AudioService;->-get55(Lcom/android/server/audio/AudioService;)Landroid/app/IProcessObserver;

    move-result-object v6

    invoke-interface {v5, v6}, Landroid/app/IActivityManager;->unregisterProcessObserver(Landroid/app/IProcessObserver;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v2

    const-string/jumbo v5, "AudioService"

    const-string/jumbo v6, "RemoteException -unregisterProcessObserver"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :goto_2
    array-length v5, v4

    if-ge v3, v5, :cond_3

    iget-object v5, p0, Lcom/android/server/audio/AudioService$SoundKitchen;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v5}, Lcom/android/server/audio/AudioService;->-get45(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/MediaFocusControl;

    move-result-object v5

    aget v6, v4, v3

    invoke-virtual {v5, v6}, Lcom/android/server/audio/MediaFocusControl;->updateFocusRequester(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    invoke-direct {p0}, Lcom/android/server/audio/AudioService$SoundKitchen;->setStateToNative()V

    return-void
.end method

.method private setDeviceToNative(II)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "audioParam;multisound_setdevice_uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "multisound_setdevice_device"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    return-void
.end method

.method private setMaxLimitedSpkVolumeToNative(IZ)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "audioParam;multisound_max_limited_spk_volume_uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "multisound_max_limited_spk_volume_state"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    return-void
.end method

.method private setStateToNative()V
    .locals 4

    const-wide/16 v2, 0xc8

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "audioParam;multisound_on="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/audio/AudioService$SoundKitchen;->mEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Error in Thread.sleep() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setVolumeToNative(II)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "audioParam;multisound_setvolume_uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "multisound_setvolume_volume"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public checkAndRemoveItem(I)V
    .locals 4

    iget-object v1, p0, Lcom/android/server/audio/AudioService$SoundKitchen;->mPinAppInfoList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;->getAppDevice(Z)I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;->getAppVolume()I

    move-result v1

    const/16 v2, 0x64

    if-ne v1, v2, :cond_0

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;->getMaxLimitSpkVolume()Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "removeItem "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/audio/AudioService$SoundKitchen;->mPinAppInfoList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public disable()V
    .locals 2

    const-string/jumbo v0, "AudioService"

    const-string/jumbo v1, "disable"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/server/audio/AudioService$SoundKitchen;->mEnabled:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/audio/AudioService$SoundKitchen;->mEnabled:Z

    invoke-direct {p0}, Lcom/android/server/audio/AudioService$SoundKitchen;->resetByEnableDisable()V

    iget-object v0, p0, Lcom/android/server/audio/AudioService$SoundKitchen;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService;->clearNotification()V

    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 13

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "\nMultiSound, size:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/audio/AudioService$SoundKitchen;->mPinAppInfoList:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ", isEnabled:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Lcom/android/server/audio/AudioService$SoundKitchen;->isEnabled()Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/server/audio/AudioService$SoundKitchen;->mPinAppInfoList:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;->getAppDevice(Z)I

    move-result v0

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;

    invoke-virtual {v9}, Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;->getAppVolume()I

    move-result v6

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;

    invoke-virtual {v9}, Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;->getMaxLimitSpkVolume()Z

    move-result v4

    const-string/jumbo v5, ""

    :try_start_0
    iget-object v9, p0, Lcom/android/server/audio/AudioService$SoundKitchen;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v9}, Lcom/android/server/audio/AudioService;->-get53(Lcom/android/server/audio/AudioService;)Landroid/content/pm/PackageManager;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/audio/AudioService$SoundKitchen;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v10}, Lcom/android/server/audio/AudioService;->-get53(Lcom/android/server/audio/AudioService;)Landroid/content/pm/PackageManager;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/audio/AudioService$SoundKitchen;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v11}, Lcom/android/server/audio/AudioService;->-get53(Lcom/android/server/audio/AudioService;)Landroid/content/pm/PackageManager;

    move-result-object v11

    invoke-virtual {v11, v8}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    :goto_1
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "uid = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "), device = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ", volume = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ", maxLimitSpkVolume = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    :catch_0
    move-exception v1

    const-string/jumbo v9, "AudioService"

    const-string/jumbo v10, "not found"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Current Default Device:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/audio/AudioService$SoundKitchen;->this$0:Lcom/android/server/audio/AudioService;

    const/4 v11, 0x3

    invoke-static {v10, v11}, Lcom/android/server/audio/AudioService;->-wrap11(Lcom/android/server/audio/AudioService;I)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Pin Device:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Lcom/android/server/audio/AudioService$SoundKitchen;->getPinDevice()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Pin App:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Lcom/android/server/audio/AudioService$SoundKitchen;->getPinDevice()I

    move-result v10

    invoke-virtual {p0, v10}, Lcom/android/server/audio/AudioService$SoundKitchen;->getPinAppInfo(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public enable()V
    .locals 2

    const-string/jumbo v0, "AudioService"

    const-string/jumbo v1, "eanble"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/server/audio/AudioService$SoundKitchen;->mEnabled:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/audio/AudioService$SoundKitchen;->mEnabled:Z

    invoke-direct {p0}, Lcom/android/server/audio/AudioService$SoundKitchen;->resetByEnableDisable()V

    iget-object v0, p0, Lcom/android/server/audio/AudioService$SoundKitchen;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService;->showNotification()V

    return-void
.end method

.method public getAppDevice(I)I
    .locals 8

    const/4 v7, 0x0

    const/4 v2, 0x0

    iget-object v5, p0, Lcom/android/server/audio/AudioService$SoundKitchen;->mPinAppInfoList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/server/audio/AudioService$SoundKitchen;->mPinAppInfoList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;

    invoke-virtual {v5, v7}, Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;->getAppDevice(Z)I

    move-result v2

    :cond_0
    const v5, 0x8000

    if-ne v2, v5, :cond_1

    return v2

    :cond_1
    iget-boolean v5, p0, Lcom/android/server/audio/AudioService$SoundKitchen;->mEnabled:Z

    if-eqz v5, :cond_9

    const/4 v5, 0x2

    if-ne v2, v5, :cond_2

    const/4 v5, 0x3

    invoke-static {v5}, Landroid/media/AudioSystem;->getDevicesForStream(I)I

    move-result v1

    and-int/lit16 v5, v1, 0x400e

    if-eqz v5, :cond_3

    move v2, v1

    :cond_2
    :goto_0
    return v2

    :cond_3
    iget-object v5, p0, Lcom/android/server/audio/AudioService$SoundKitchen;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v5}, Lcom/android/server/audio/AudioService;->-get27(Lcom/android/server/audio/AudioService;)Landroid/util/ArrayMap;

    move-result-object v6

    monitor-enter v6

    const/4 v0, 0x0

    const/4 v3, 0x0

    :goto_1
    :try_start_0
    iget-object v5, p0, Lcom/android/server/audio/AudioService$SoundKitchen;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v5}, Lcom/android/server/audio/AudioService;->-get27(Lcom/android/server/audio/AudioService;)Landroid/util/ArrayMap;

    move-result-object v5

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    if-ge v3, v5, :cond_5

    iget-object v5, p0, Lcom/android/server/audio/AudioService$SoundKitchen;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v5}, Lcom/android/server/audio/AudioService;->-get27(Lcom/android/server/audio/AudioService;)Landroid/util/ArrayMap;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/audio/AudioService$DeviceListSpec;

    iget v5, v4, Lcom/android/server/audio/AudioService$DeviceListSpec;->mDeviceType:I

    const/high16 v7, -0x80000000

    and-int/2addr v5, v7

    if-eqz v5, :cond_4

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    iget v5, v4, Lcom/android/server/audio/AudioService$DeviceListSpec;->mDeviceType:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    and-int/lit16 v5, v5, 0x400e

    or-int/2addr v0, v5

    goto :goto_2

    :cond_5
    and-int/lit16 v5, v0, 0x4000

    if-eqz v5, :cond_6

    const/16 v2, 0x4000

    :goto_3
    monitor-exit v6

    goto :goto_0

    :cond_6
    and-int/lit8 v5, v0, 0x4

    if-eqz v5, :cond_7

    const/4 v2, 0x4

    goto :goto_3

    :cond_7
    and-int/lit8 v5, v0, 0x8

    if-eqz v5, :cond_8

    const/16 v2, 0x8

    goto :goto_3

    :cond_8
    const/4 v2, 0x2

    goto :goto_3

    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5

    :cond_9
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getAppVolume(I)I
    .locals 3

    iget-object v1, p0, Lcom/android/server/audio/AudioService$SoundKitchen;->mPinAppInfoList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;->getAppVolume()I

    move-result v1

    return v1

    :cond_0
    const/16 v1, 0x64

    return v1
.end method

.method public getPinAppInfo(I)Ljava/lang/String;
    .locals 9

    iget-boolean v5, p0, Lcom/android/server/audio/AudioService$SoundKitchen;->mEnabled:Z

    if-nez v5, :cond_0

    const-string/jumbo v5, ""

    return-object v5

    :cond_0
    iget-object v5, p0, Lcom/android/server/audio/AudioService$SoundKitchen;->mPinAppInfoList:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/android/server/audio/AudioService$SoundKitchen;->getAppDevice(I)I

    move-result v5

    if-ne v5, p1, :cond_1

    :try_start_0
    iget-object v5, p0, Lcom/android/server/audio/AudioService$SoundKitchen;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v5}, Lcom/android/server/audio/AudioService;->-get53(Lcom/android/server/audio/AudioService;)Landroid/content/pm/PackageManager;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/audio/AudioService$SoundKitchen;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v6}, Lcom/android/server/audio/AudioService;->-get53(Lcom/android/server/audio/AudioService;)Landroid/content/pm/PackageManager;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/audio/AudioService$SoundKitchen;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v7}, Lcom/android/server/audio/AudioService;->-get53(Lcom/android/server/audio/AudioService;)Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    return-object v5

    :catch_0
    move-exception v0

    const-string/jumbo v5, "AudioService"

    const-string/jumbo v6, "not found"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const-string/jumbo v5, ""

    return-object v5
.end method

.method public getPinDevice()I
    .locals 5

    const/4 v1, 0x0

    iget-boolean v4, p0, Lcom/android/server/audio/AudioService$SoundKitchen;->mEnabled:Z

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcom/android/server/audio/AudioService$SoundKitchen;->getUidList()[I

    move-result-object v3

    const/4 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    array-length v4, v3

    if-ge v2, v4, :cond_0

    aget v4, v3, v2

    invoke-virtual {p0, v4}, Lcom/android/server/audio/AudioService$SoundKitchen;->getAppDevice(I)I

    move-result v0

    if-eqz v0, :cond_1

    const v4, 0x8000

    if-eq v0, v4, :cond_1

    move v1, v0

    :cond_0
    return v1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public getPinPackageName(I)Ljava/lang/String;
    .locals 8

    iget-object v6, p0, Lcom/android/server/audio/AudioService$SoundKitchen;->mPinAppInfoList:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;

    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;->getAppDevice(Z)I

    move-result v6

    if-ne v6, p1, :cond_0

    :try_start_0
    iget-object v6, p0, Lcom/android/server/audio/AudioService$SoundKitchen;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v6}, Lcom/android/server/audio/AudioService;->-get53(Lcom/android/server/audio/AudioService;)Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    return-object v6

    :catch_0
    move-exception v0

    const-string/jumbo v6, "AudioService"

    const-string/jumbo v7, "not found"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string/jumbo v6, ""

    return-object v6
.end method

.method public getUidList()[I
    .locals 10

    const v9, 0x8000

    const/4 v8, 0x0

    iget-object v7, p0, Lcom/android/server/audio/AudioService$SoundKitchen;->mPinAppInfoList:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->size()I

    move-result v7

    new-array v4, v7, [I

    const/4 v2, 0x0

    iget-object v7, p0, Lcom/android/server/audio/AudioService$SoundKitchen;->mPinAppInfoList:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;

    invoke-virtual {v3, v8}, Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;->getAppDevice(Z)I

    move-result v7

    if-ne v7, v9, :cond_0

    aput v6, v4, v2

    const/4 v2, 0x1

    :cond_1
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;

    invoke-virtual {v3, v8}, Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;->getAppDevice(Z)I

    move-result v7

    if-eq v7, v9, :cond_2

    aput v6, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-object v4
.end method

.method public isEnabled()Z
    .locals 2

    const-string/jumbo v0, "AudioService"

    const-string/jumbo v1, "isEanbled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/server/audio/AudioService$SoundKitchen;->mEnabled:Z

    return v0
.end method

.method public removeItem(I)Z
    .locals 4

    const/4 v3, 0x0

    const-string/jumbo v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removeItem, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/audio/AudioService$SoundKitchen;->mPinAppInfoList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/audio/AudioService$SoundKitchen;->mPinAppInfoList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p1, v3}, Lcom/android/server/audio/AudioService$SoundKitchen;->setDeviceToNative(II)V

    const/16 v0, 0x64

    invoke-direct {p0, p1, v0}, Lcom/android/server/audio/AudioService$SoundKitchen;->setVolumeToNative(II)V

    invoke-direct {p0, p1, v3}, Lcom/android/server/audio/AudioService$SoundKitchen;->setMaxLimitedSpkVolumeToNative(IZ)V

    const/4 v0, 0x1

    return v0

    :cond_0
    return v3
.end method

.method public resetByAudioServerDied()V
    .locals 8

    const-string/jumbo v6, "AudioService"

    const-string/jumbo v7, "resetByAudioServerDied"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/server/audio/AudioService$SoundKitchen;->mPinAppInfoList:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;->getAppDevice(Z)I

    move-result v0

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;

    invoke-virtual {v6}, Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;->getAppVolume()I

    move-result v3

    invoke-direct {p0, v5, v0}, Lcom/android/server/audio/AudioService$SoundKitchen;->setDeviceToNative(II)V

    invoke-direct {p0, v5, v3}, Lcom/android/server/audio/AudioService$SoundKitchen;->setVolumeToNative(II)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/android/server/audio/AudioService$SoundKitchen;->setStateToNative()V

    return-void
.end method

.method public setAppDevice(II)V
    .locals 12

    const v11, 0x8000

    const/4 v9, 0x1

    const/4 v10, 0x0

    iget-object v7, p0, Lcom/android/server/audio/AudioService$SoundKitchen;->mPinAppInfoList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;

    if-eqz v3, :cond_0

    invoke-virtual {v3, v9}, Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;->getAppDevice(Z)I

    move-result v7

    if-ne v7, p2, :cond_0

    const-string/jumbo v7, "AudioService"

    const-string/jumbo v8, "same device pin."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-eqz p2, :cond_3

    if-eq p2, v11, :cond_3

    const/4 v6, -0x1

    const/4 v4, 0x0

    iget-object v7, p0, Lcom/android/server/audio/AudioService$SoundKitchen;->mPinAppInfoList:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;

    invoke-virtual {v4, v9}, Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;->getAppDevice(Z)I

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v4, v9}, Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;->getAppDevice(Z)I

    move-result v7

    if-eq v7, v11, :cond_1

    if-eq p1, v6, :cond_1

    iget-object v7, p0, Lcom/android/server/audio/AudioService$SoundKitchen;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v7, v6}, Lcom/android/server/audio/AudioService;->-wrap53(Lcom/android/server/audio/AudioService;I)V

    const-wide/16 v8, 0xc8

    :try_start_0
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {v4, v10}, Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;->setAppDevice(I)V

    invoke-direct {p0, v6, v10}, Lcom/android/server/audio/AudioService$SoundKitchen;->setDeviceToNative(II)V

    iget-object v7, p0, Lcom/android/server/audio/AudioService$SoundKitchen;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v7}, Lcom/android/server/audio/AudioService;->-get45(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/MediaFocusControl;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/android/server/audio/MediaFocusControl;->updateFocusRequester(I)V

    :cond_2
    invoke-virtual {p0, v6}, Lcom/android/server/audio/AudioService$SoundKitchen;->checkAndRemoveItem(I)V

    :cond_3
    if-nez v3, :cond_4

    new-instance v3, Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;

    const/16 v7, 0x64

    invoke-direct {v3, p0, p2, v7, v10}, Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;-><init>(Lcom/android/server/audio/AudioService$SoundKitchen;IIZ)V

    :goto_1
    iget-object v7, p0, Lcom/android/server/audio/AudioService$SoundKitchen;->mPinAppInfoList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioService$SoundKitchen;->checkAndRemoveItem(I)V

    invoke-direct {p0, p1, p2}, Lcom/android/server/audio/AudioService$SoundKitchen;->setDeviceToNative(II)V

    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v7, "AudioService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Error in Thread.sleep() : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    invoke-virtual {v3, p2}, Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;->setAppDevice(I)V

    goto :goto_1
.end method

.method public setAppVolume(II)V
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/server/audio/AudioService$SoundKitchen;->mPinAppInfoList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;

    invoke-direct {v0, p0, v3, p2, v3}, Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;-><init>(Lcom/android/server/audio/AudioService$SoundKitchen;IIZ)V

    :goto_0
    iget-object v1, p0, Lcom/android/server/audio/AudioService$SoundKitchen;->mPinAppInfoList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioService$SoundKitchen;->checkAndRemoveItem(I)V

    invoke-direct {p0, p1, p2}, Lcom/android/server/audio/AudioService$SoundKitchen;->setVolumeToNative(II)V

    return-void

    :cond_0
    invoke-virtual {v0, p2}, Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;->setAppVolume(I)V

    goto :goto_0
.end method

.method public setMaxLimitedSpkVolume(IZ)V
    .locals 3

    iget-object v1, p0, Lcom/android/server/audio/AudioService$SoundKitchen;->mPinAppInfoList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;

    const/4 v1, 0x0

    const/16 v2, 0x64

    invoke-direct {v0, p0, v1, v2, p2}, Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;-><init>(Lcom/android/server/audio/AudioService$SoundKitchen;IIZ)V

    :goto_0
    iget-object v1, p0, Lcom/android/server/audio/AudioService$SoundKitchen;->mPinAppInfoList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioService$SoundKitchen;->checkAndRemoveItem(I)V

    invoke-direct {p0, p1, p2}, Lcom/android/server/audio/AudioService$SoundKitchen;->setMaxLimitedSpkVolumeToNative(IZ)V

    return-void

    :cond_0
    invoke-virtual {v0, p2}, Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;->setMaxLimitedSpkVolume(Z)V

    goto :goto_0
.end method
