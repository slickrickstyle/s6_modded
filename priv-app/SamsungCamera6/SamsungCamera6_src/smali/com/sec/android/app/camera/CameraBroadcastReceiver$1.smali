.class Lcom/sec/android/app/camera/CameraBroadcastReceiver$1;
.super Landroid/content/BroadcastReceiver;
.source "CameraBroadcastReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/CameraBroadcastReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/CameraBroadcastReceiver;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/CameraBroadcastReceiver;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/CameraBroadcastReceiver$1;->this$0:Lcom/sec/android/app/camera/CameraBroadcastReceiver;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13

    const/16 v12, 0x1c3e

    const/16 v11, 0x24

    const/4 v10, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v7, "CameraBroadcastReceiver"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onReceive ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/sec/android/app/camera/CameraBroadcastReceiver$1;->this$0:Lcom/sec/android/app/camera/CameraBroadcastReceiver;

    iget-object v7, v7, Lcom/sec/android/app/camera/CameraBroadcastReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/Camera;->isPausing()Z

    move-result v7

    if-nez v7, :cond_0

    iget-object v7, p0, Lcom/sec/android/app/camera/CameraBroadcastReceiver$1;->this$0:Lcom/sec/android/app/camera/CameraBroadcastReceiver;

    iget-object v7, v7, Lcom/sec/android/app/camera/CameraBroadcastReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/Camera;->isDestroying()Z

    move-result v7

    if-eqz v7, :cond_1

    :cond_0
    const-string v7, "CameraBroadcastReceiver"

    const-string v8, "onReceive - returned. camera is inactive"

    invoke-static {v7, v8}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const-string v7, "POWER_OFF_ANIMATION_START"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    const-string v7, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    :cond_2
    iget-object v5, p0, Lcom/sec/android/app/camera/CameraBroadcastReceiver$1;->this$0:Lcom/sec/android/app/camera/CameraBroadcastReceiver;

    iget-object v5, v5, Lcom/sec/android/app/camera/CameraBroadcastReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/interfaces/Engine;

    move-result-object v5

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/Engine;->isTimerCounting()Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/sec/android/app/camera/CameraBroadcastReceiver$1;->this$0:Lcom/sec/android/app/camera/CameraBroadcastReceiver;

    iget-object v5, v5, Lcom/sec/android/app/camera/CameraBroadcastReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/interfaces/Engine;

    move-result-object v5

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/Engine;->cancelShutterTimer()V

    :cond_3
    new-instance v5, Landroid/content/Intent;

    const-string v6, "camera.action.SHUTDOWN"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v5}, Lcom/sec/android/app/camera/util/CameraLocalBroadcastManager;->send(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_4
    :goto_0
    :pswitch_0
    return-void

    :cond_5
    const-string v7, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    iget-object v5, p0, Lcom/sec/android/app/camera/CameraBroadcastReceiver$1;->this$0:Lcom/sec/android/app/camera/CameraBroadcastReceiver;

    iget-object v5, v5, Lcom/sec/android/app/camera/CameraBroadcastReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v5, p2}, Lcom/sec/android/app/camera/Camera;->handleBatteryChanged(Landroid/content/Intent;)V

    goto :goto_0

    :cond_6
    const-string v7, "android.intent.action.BATTERY_LOW"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    iget-object v5, p0, Lcom/sec/android/app/camera/CameraBroadcastReceiver$1;->this$0:Lcom/sec/android/app/camera/CameraBroadcastReceiver;

    iget-object v5, v5, Lcom/sec/android/app/camera/CameraBroadcastReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/Camera;->handleBatteryLow()V

    goto :goto_0

    :cond_7
    const-string v7, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    iget-object v5, p0, Lcom/sec/android/app/camera/CameraBroadcastReceiver$1;->this$0:Lcom/sec/android/app/camera/CameraBroadcastReceiver;

    iget-object v5, v5, Lcom/sec/android/app/camera/CameraBroadcastReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/Camera;->handleBatteryPowerConnected()V

    goto :goto_0

    :cond_8
    const-string v7, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    iget-object v5, p0, Lcom/sec/android/app/camera/CameraBroadcastReceiver$1;->this$0:Lcom/sec/android/app/camera/CameraBroadcastReceiver;

    iget-object v5, v5, Lcom/sec/android/app/camera/CameraBroadcastReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/Camera;->updateLatestMedia()V

    iget-object v5, p0, Lcom/sec/android/app/camera/CameraBroadcastReceiver$1;->this$0:Lcom/sec/android/app/camera/CameraBroadcastReceiver;

    iget-object v5, v5, Lcom/sec/android/app/camera/CameraBroadcastReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/Camera;->updateThumbnail()V

    goto :goto_0

    :cond_9
    const-string v7, "android.intent.action.ACTION_ASSISTIVE_ON_WIDGETUPDATE"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    iget-object v5, p0, Lcom/sec/android/app/camera/CameraBroadcastReceiver$1;->this$0:Lcom/sec/android/app/camera/CameraBroadcastReceiver;

    iget-object v5, v5, Lcom/sec/android/app/camera/CameraBroadcastReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v5

    invoke-interface {v5, v6}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setTorchLightStatus(I)V

    goto :goto_0

    :cond_a
    const-string v7, "android.intent.action.ACTION_ASSISTIVE_OFF_WIDGETUPDATE"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    iget-object v6, p0, Lcom/sec/android/app/camera/CameraBroadcastReceiver$1;->this$0:Lcom/sec/android/app/camera/CameraBroadcastReceiver;

    iget-object v6, v6, Lcom/sec/android/app/camera/CameraBroadcastReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v6

    invoke-interface {v6, v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setTorchLightStatus(I)V

    goto :goto_0

    :cond_b
    const-string v7, "com.samsung.android.action.SHOOTING_MODES_CHANGED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    iget-object v5, p0, Lcom/sec/android/app/camera/CameraBroadcastReceiver$1;->this$0:Lcom/sec/android/app/camera/CameraBroadcastReceiver;

    iget-object v5, v5, Lcom/sec/android/app/camera/CameraBroadcastReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/Camera;->loadShootingModes()V

    goto :goto_0

    :cond_c
    const-string v7, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_f

    const-string v7, "microphone"

    invoke-virtual {p2, v7, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const-string v7, "state"

    invoke-virtual {p2, v7, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v6, :cond_e

    iget-object v7, p0, Lcom/sec/android/app/camera/CameraBroadcastReceiver$1;->this$0:Lcom/sec/android/app/camera/CameraBroadcastReceiver;

    iget-object v7, v7, Lcom/sec/android/app/camera/CameraBroadcastReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    if-ne v2, v6, :cond_d

    move v5, v6

    :cond_d
    invoke-virtual {v7, v5}, Lcom/sec/android/app/camera/Camera;->setMicrophonePlugged(Z)V

    if-ne v2, v6, :cond_4

    const-string v5, "CameraBroadcastReceiver"

    const-string v6, "Headset with microphone is plugged"

    invoke-static {v5, v6}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Landroid/content/Intent;

    const-string v6, "camera.action.HEADSET_PLUG"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v5}, Lcom/sec/android/app/camera/util/CameraLocalBroadcastManager;->send(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_e
    iget-object v6, p0, Lcom/sec/android/app/camera/CameraBroadcastReceiver$1;->this$0:Lcom/sec/android/app/camera/CameraBroadcastReceiver;

    iget-object v6, v6, Lcom/sec/android/app/camera/CameraBroadcastReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v6, v5}, Lcom/sec/android/app/camera/Camera;->setMicrophonePlugged(Z)V

    goto/16 :goto_0

    :cond_f
    const-string v7, "android.intent.action.VIDEOCAPABILITY"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_10

    new-instance v5, Landroid/content/Intent;

    const-string v6, "camera.action.ACTION_VIDEO_CAPABILITY"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v5}, Lcom/sec/android/app/camera/util/CameraLocalBroadcastManager;->send(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_10
    const-string v7, "com.samsung.intent.action.WIFI_DISPLAY_NOT_ALLOWED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_11

    new-instance v5, Landroid/content/Intent;

    const-string v6, "camera.action.ACTION_WIFI_DISPLAY_NOT_ALLOWED"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v5}, Lcom/sec/android/app/camera/util/CameraLocalBroadcastManager;->send(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_11
    const-string v7, "com.samsung.action.SHOWING_GLOBAL_ACTIONS"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_12

    iget-object v5, p0, Lcom/sec/android/app/camera/CameraBroadcastReceiver$1;->this$0:Lcom/sec/android/app/camera/CameraBroadcastReceiver;

    iget-object v5, v5, Lcom/sec/android/app/camera/CameraBroadcastReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v5

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isCoverCamera()Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/sec/android/app/camera/CameraBroadcastReceiver$1;->this$0:Lcom/sec/android/app/camera/CameraBroadcastReceiver;

    iget-object v5, v5, Lcom/sec/android/app/camera/CameraBroadcastReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/Camera;->finish()V

    goto/16 :goto_0

    :cond_12
    const-string v7, "com.sec.android.app.camera.MAKE_CAMERA_FEATURE_XML"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_13

    new-instance v4, Lcom/sec/android/app/camera/feature/ReflectionFeature;

    invoke-direct {v4}, Lcom/sec/android/app/camera/feature/ReflectionFeature;-><init>()V

    invoke-virtual {v4}, Lcom/sec/android/app/camera/feature/ReflectionFeature;->makeReflectionFields()V

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/sec/android/app/camera/feature/ReflectionFeature;->saveReflectionFields(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_13
    const-string v7, "com.sktelecom.dmc.intent.action.DCMO_SET"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_14

    const-string v7, "CAMERA_ON"

    invoke-virtual {p2, v7, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    if-nez v7, :cond_14

    iget-object v5, p0, Lcom/sec/android/app/camera/CameraBroadcastReceiver$1;->this$0:Lcom/sec/android/app/camera/CameraBroadcastReceiver;

    iget-object v5, v5, Lcom/sec/android/app/camera/CameraBroadcastReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/Camera;->finish()V

    goto/16 :goto_0

    :cond_14
    const-string v7, "android.location.MODE_CHANGED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_15

    iget-object v7, p0, Lcom/sec/android/app/camera/CameraBroadcastReceiver$1;->this$0:Lcom/sec/android/app/camera/CameraBroadcastReceiver;

    iget-object v7, v7, Lcom/sec/android/app/camera/CameraBroadcastReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/Camera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "location_mode"

    invoke-static {v7, v8, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_1
    iget-object v5, p0, Lcom/sec/android/app/camera/CameraBroadcastReceiver$1;->this$0:Lcom/sec/android/app/camera/CameraBroadcastReceiver;

    iget-object v5, v5, Lcom/sec/android/app/camera/CameraBroadcastReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/Camera;->stopReceivingLocationUpdates()V

    goto/16 :goto_0

    :pswitch_2
    iget-object v5, p0, Lcom/sec/android/app/camera/CameraBroadcastReceiver$1;->this$0:Lcom/sec/android/app/camera/CameraBroadcastReceiver;

    iget-object v5, v5, Lcom/sec/android/app/camera/CameraBroadcastReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v5

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getGPS()I

    move-result v5

    if-ne v5, v6, :cond_4

    iget-object v5, p0, Lcom/sec/android/app/camera/CameraBroadcastReceiver$1;->this$0:Lcom/sec/android/app/camera/CameraBroadcastReceiver;

    iget-object v5, v5, Lcom/sec/android/app/camera/CameraBroadcastReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/Camera;->setLocationRequest()V

    goto/16 :goto_0

    :cond_15
    const-string v7, "com.samsung.telecom.IncomingCallAnsweredDuringRecord"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_17

    iget-object v7, p0, Lcom/sec/android/app/camera/CameraBroadcastReceiver$1;->this$0:Lcom/sec/android/app/camera/CameraBroadcastReceiver;

    iget-object v7, v7, Lcom/sec/android/app/camera/CameraBroadcastReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v7

    if-eqz v7, :cond_16

    iget-object v7, p0, Lcom/sec/android/app/camera/CameraBroadcastReceiver$1;->this$0:Lcom/sec/android/app/camera/CameraBroadcastReceiver;

    iget-object v7, v7, Lcom/sec/android/app/camera/CameraBroadcastReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v7

    invoke-interface {v7, v6, v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setCallStatus(IZ)V

    :cond_16
    new-instance v5, Landroid/content/Intent;

    const-string v6, "camera.action.CALL_STATE_OFFHOOK"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v5}, Lcom/sec/android/app/camera/util/CameraLocalBroadcastManager;->send(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_17
    const-string v5, "com.samsung.android.action.DOUBLE_CLICK"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    const-string v5, "KEYCODE"

    invoke-virtual {p2, v5, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    sget-boolean v5, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_QUICK_LAUNCH_POWER_KEY:Z

    if-eqz v5, :cond_18

    iget-object v5, p0, Lcom/sec/android/app/camera/CameraBroadcastReceiver$1;->this$0:Lcom/sec/android/app/camera/CameraBroadcastReceiver;

    iget-object v5, v5, Lcom/sec/android/app/camera/CameraBroadcastReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/Camera;->getCommandReceiver()Lcom/sec/android/app/camera/interfaces/CommandInterface;

    move-result-object v5

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CommandInterface;->onSwitchCameraSelect()Z

    iget-object v5, p0, Lcom/sec/android/app/camera/CameraBroadcastReceiver$1;->this$0:Lcom/sec/android/app/camera/CameraBroadcastReceiver;

    iget-object v5, v5, Lcom/sec/android/app/camera/CameraBroadcastReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v5, v11, v12}, Lcom/sec/android/app/camera/Camera;->sendBroadcastChangeSettings(II)V

    goto/16 :goto_0

    :cond_18
    if-ne v1, v10, :cond_4

    iget-object v5, p0, Lcom/sec/android/app/camera/CameraBroadcastReceiver$1;->this$0:Lcom/sec/android/app/camera/CameraBroadcastReceiver;

    iget-object v5, v5, Lcom/sec/android/app/camera/CameraBroadcastReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/Camera;->getCommandReceiver()Lcom/sec/android/app/camera/interfaces/CommandInterface;

    move-result-object v5

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CommandInterface;->onSwitchCameraSelect()Z

    iget-object v5, p0, Lcom/sec/android/app/camera/CameraBroadcastReceiver$1;->this$0:Lcom/sec/android/app/camera/CameraBroadcastReceiver;

    iget-object v5, v5, Lcom/sec/android/app/camera/CameraBroadcastReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v5, v11, v12}, Lcom/sec/android/app/camera/Camera;->sendBroadcastChangeSettings(II)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method
