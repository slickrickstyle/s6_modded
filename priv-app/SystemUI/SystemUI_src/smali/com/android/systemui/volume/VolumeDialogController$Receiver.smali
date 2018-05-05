.class final Lcom/android/systemui/volume/VolumeDialogController$Receiver;
.super Landroid/content/BroadcastReceiver;
.source "VolumeDialogController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/volume/VolumeDialogController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Receiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/volume/VolumeDialogController;


# direct methods
.method private constructor <init>(Lcom/android/systemui/volume/VolumeDialogController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/volume/VolumeDialogController$Receiver;->this$0:Lcom/android/systemui/volume/VolumeDialogController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/volume/VolumeDialogController;Lcom/android/systemui/volume/VolumeDialogController$Receiver;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeDialogController$Receiver;-><init>(Lcom/android/systemui/volume/VolumeDialogController;)V

    return-void
.end method


# virtual methods
.method public init()V
    .locals 4

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "android.media.VOLUME_CHANGED_ACTION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.media.STREAM_DEVICES_CHANGED_ACTION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.media.INTERNAL_RINGER_MODE_CHANGED_ACTION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.media.STREAM_MUTE_CHANGED_ACTION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.os.action.ACTION_EFFECTS_SUPPRESSOR_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "com.samsung.android.theme.themecenter.THEME_APPLY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.app.action.INTERRUPTION_FILTER_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "com.samsung.intent.action.WIFI_DISPLAY_SOURCE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogController$Receiver;->this$0:Lcom/android/systemui/volume/VolumeDialogController;

    invoke-static {v1}, Lcom/android/systemui/volume/VolumeDialogController;->-get3(Lcom/android/systemui/volume/VolumeDialogController;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogController$Receiver;->this$0:Lcom/android/systemui/volume/VolumeDialogController;

    invoke-static {v2}, Lcom/android/systemui/volume/VolumeDialogController;->-get11(Lcom/android/systemui/volume/VolumeDialogController;)Lcom/android/systemui/volume/VolumeDialogController$W;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, p0, v0, v3, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 16

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const-string/jumbo v13, "android.media.VOLUME_CHANGED_ACTION"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    const-string/jumbo v13, "android.media.EXTRA_VOLUME_STREAM_TYPE"

    const/4 v14, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v12

    const-string/jumbo v13, "android.media.EXTRA_VOLUME_STREAM_VALUE"

    const/4 v14, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    const-string/jumbo v13, "android.media.EXTRA_PREV_VOLUME_STREAM_VALUE"

    const/4 v14, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    sget-boolean v13, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v13, :cond_0

    invoke-static {}, Lcom/android/systemui/volume/VolumeDialogController;->-get0()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "onReceive VOLUME_CHANGED_ACTION stream="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, " level="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, " oldLevel="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/volume/VolumeDialogController$Receiver;->this$0:Lcom/android/systemui/volume/VolumeDialogController;

    invoke-static {v13}, Lcom/android/systemui/volume/VolumeDialogController;->-get1(Lcom/android/systemui/volume/VolumeDialogController;)Lcom/android/systemui/volume/VolumeDialogController$C;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/volume/VolumeDialogController$Receiver;->this$0:Lcom/android/systemui/volume/VolumeDialogController;

    invoke-static {v14}, Lcom/android/systemui/volume/VolumeDialogController;->-get10(Lcom/android/systemui/volume/VolumeDialogController;)Lcom/android/systemui/volume/VolumeDialogController$State;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/android/systemui/volume/VolumeDialogController$C;->onStateChanged(Lcom/android/systemui/volume/VolumeDialogController$State;)V

    :cond_1
    return-void

    :cond_2
    const-string/jumbo v13, "android.media.STREAM_DEVICES_CHANGED_ACTION"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6

    const-string/jumbo v13, "android.media.EXTRA_VOLUME_STREAM_TYPE"

    const/4 v14, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v12

    const-string/jumbo v13, "android.media.EXTRA_VOLUME_STREAM_DEVICES"

    const/4 v14, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const-string/jumbo v13, "android.media.EXTRA_PREV_VOLUME_STREAM_DEVICES"

    const/4 v14, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    sget-boolean v13, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v13, :cond_3

    invoke-static {}, Lcom/android/systemui/volume/VolumeDialogController;->-get0()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "onReceive SEM_STREAM_DEVICES_CHANGED_ACTION stream="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, " devices="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, " oldDevices="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    sget-boolean v13, Lcom/android/systemui/volume/SecVolumeDialog;->mShowing:Z

    if-nez v13, :cond_4

    const/4 v13, 0x1

    if-ne v12, v13, :cond_5

    :cond_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/volume/VolumeDialogController$Receiver;->this$0:Lcom/android/systemui/volume/VolumeDialogController;

    invoke-static {v13}, Lcom/android/systemui/volume/VolumeDialogController;->-wrap10(Lcom/android/systemui/volume/VolumeDialogController;)V

    :cond_5
    sget-boolean v13, Lcom/android/systemui/volume/SecVolumeDialog;->mIsSafetyWarningShowing:Z

    if-eqz v13, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/volume/VolumeDialogController$Receiver;->this$0:Lcom/android/systemui/volume/VolumeDialogController;

    invoke-static {v13}, Lcom/android/systemui/volume/VolumeDialogController;->-get1(Lcom/android/systemui/volume/VolumeDialogController;)Lcom/android/systemui/volume/VolumeDialogController$C;

    move-result-object v13

    const/4 v14, 0x7

    invoke-virtual {v13, v14}, Lcom/android/systemui/volume/VolumeDialogController$C;->onDismissRequested(I)V

    goto/16 :goto_0

    :cond_6
    const-string/jumbo v13, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_8

    const-string/jumbo v13, "android.media.EXTRA_RINGER_MODE"

    const/4 v14, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    sget-boolean v13, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v13, :cond_7

    invoke-static {}, Lcom/android/systemui/volume/VolumeDialogController;->-get0()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "onReceive RINGER_MODE_CHANGED_ACTION rm="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {v10}, Lcom/android/systemui/volume/Util;->ringerModeToString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/volume/VolumeDialogController$Receiver;->this$0:Lcom/android/systemui/volume/VolumeDialogController;

    invoke-static {v13, v10}, Lcom/android/systemui/volume/VolumeDialogController;->-wrap4(Lcom/android/systemui/volume/VolumeDialogController;I)Z

    move-result v2

    goto/16 :goto_0

    :cond_8
    const-string/jumbo v13, "android.media.INTERNAL_RINGER_MODE_CHANGED_ACTION"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_a

    const-string/jumbo v13, "android.media.EXTRA_RINGER_MODE"

    const/4 v14, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    sget-boolean v13, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v13, :cond_9

    invoke-static {}, Lcom/android/systemui/volume/VolumeDialogController;->-get0()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "onReceive INTERNAL_RINGER_MODE_CHANGED_ACTION rm="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {v10}, Lcom/android/systemui/volume/Util;->ringerModeToString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/volume/VolumeDialogController$Receiver;->this$0:Lcom/android/systemui/volume/VolumeDialogController;

    invoke-static {v13, v10}, Lcom/android/systemui/volume/VolumeDialogController;->-wrap5(Lcom/android/systemui/volume/VolumeDialogController;I)Z

    move-result v2

    goto/16 :goto_0

    :cond_a
    const-string/jumbo v13, "android.media.STREAM_MUTE_CHANGED_ACTION"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_c

    const-string/jumbo v13, "android.media.EXTRA_VOLUME_STREAM_TYPE"

    const/4 v14, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v12

    const-string/jumbo v13, "android.media.EXTRA_STREAM_VOLUME_MUTED"

    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    sget-boolean v13, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v13, :cond_b

    invoke-static {}, Lcom/android/systemui/volume/VolumeDialogController;->-get0()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "onReceive STREAM_MUTE_CHANGED_ACTION stream="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, " muted="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/volume/VolumeDialogController$Receiver;->this$0:Lcom/android/systemui/volume/VolumeDialogController;

    invoke-static {v13, v12, v6}, Lcom/android/systemui/volume/VolumeDialogController;->-wrap6(Lcom/android/systemui/volume/VolumeDialogController;IZ)Z

    move-result v2

    goto/16 :goto_0

    :cond_c
    const-string/jumbo v13, "android.os.action.ACTION_EFFECTS_SUPPRESSOR_CHANGED"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_e

    sget-boolean v13, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v13, :cond_d

    invoke-static {}, Lcom/android/systemui/volume/VolumeDialogController;->-get0()Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v14, "onReceive ACTION_EFFECTS_SUPPRESSOR_CHANGED"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/volume/VolumeDialogController$Receiver;->this$0:Lcom/android/systemui/volume/VolumeDialogController;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/volume/VolumeDialogController$Receiver;->this$0:Lcom/android/systemui/volume/VolumeDialogController;

    invoke-static {v14}, Lcom/android/systemui/volume/VolumeDialogController;->-get8(Lcom/android/systemui/volume/VolumeDialogController;)Landroid/app/NotificationManager;

    move-result-object v14

    invoke-virtual {v14}, Landroid/app/NotificationManager;->getEffectsSuppressor()Landroid/content/ComponentName;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/systemui/volume/VolumeDialogController;->-wrap3(Lcom/android/systemui/volume/VolumeDialogController;Landroid/content/ComponentName;)Z

    move-result v2

    goto/16 :goto_0

    :cond_e
    const-string/jumbo v13, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_10

    sget-boolean v13, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v13, :cond_f

    invoke-static {}, Lcom/android/systemui/volume/VolumeDialogController;->-get0()Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v14, "onReceive ACTION_CONFIGURATION_CHANGED"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/volume/VolumeDialogController$Receiver;->this$0:Lcom/android/systemui/volume/VolumeDialogController;

    invoke-static {v13}, Lcom/android/systemui/volume/VolumeDialogController;->-get1(Lcom/android/systemui/volume/VolumeDialogController;)Lcom/android/systemui/volume/VolumeDialogController$C;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/systemui/volume/VolumeDialogController$C;->onConfigurationChanged()V

    goto/16 :goto_0

    :cond_10
    const-string/jumbo v13, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_13

    sget-boolean v13, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v13, :cond_11

    invoke-static {}, Lcom/android/systemui/volume/VolumeDialogController;->-get0()Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v14, "onReceive ACTION_CLOSE_SYSTEM_DIALOGS"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    const-string/jumbo v13, "reason"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_12

    const-string/jumbo v13, "closeSystemDialogFromTaskBar"

    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_0

    :cond_12
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/volume/VolumeDialogController$Receiver;->this$0:Lcom/android/systemui/volume/VolumeDialogController;

    invoke-virtual {v13}, Lcom/android/systemui/volume/VolumeDialogController;->dismiss()V

    goto/16 :goto_0

    :cond_13
    const-string/jumbo v13, "com.samsung.android.theme.themecenter.THEME_APPLY"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_15

    sget-boolean v13, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v13, :cond_14

    invoke-static {}, Lcom/android/systemui/volume/VolumeDialogController;->-get0()Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v14, "onReceive THEME_APPLY"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_14
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/volume/VolumeDialogController$Receiver;->this$0:Lcom/android/systemui/volume/VolumeDialogController;

    invoke-static {v13}, Lcom/android/systemui/volume/VolumeDialogController;->-get1(Lcom/android/systemui/volume/VolumeDialogController;)Lcom/android/systemui/volume/VolumeDialogController$C;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/systemui/volume/VolumeDialogController$C;->onThemeChanged()V

    goto/16 :goto_0

    :cond_15
    const-string/jumbo v13, "android.app.action.INTERRUPTION_FILTER_CHANGED"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_17

    sget-boolean v13, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v13, :cond_16

    invoke-static {}, Lcom/android/systemui/volume/VolumeDialogController;->-get0()Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v14, "onReceive Dnd Mode Changed"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_16
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/volume/VolumeDialogController$Receiver;->this$0:Lcom/android/systemui/volume/VolumeDialogController;

    invoke-static {v13}, Lcom/android/systemui/volume/VolumeDialogController;->-get1(Lcom/android/systemui/volume/VolumeDialogController;)Lcom/android/systemui/volume/VolumeDialogController$C;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/systemui/volume/VolumeDialogController$C;->onZenModeChanged()V

    goto/16 :goto_0

    :cond_17
    const-string/jumbo v13, "com.samsung.intent.action.WIFI_DISPLAY_SOURCE_STATE"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    const-string/jumbo v13, "state"

    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    const-string/jumbo v13, "isSupportDisplayVolumeControl"

    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    sget-boolean v13, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v13, :cond_18

    invoke-static {}, Lcom/android/systemui/volume/VolumeDialogController;->-get0()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "onReceive SEM_WIFI_DISPLAY_SOURCE_STATE = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, ", "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_18
    const/4 v13, 0x1

    if-ne v11, v13, :cond_19

    if-eqz v4, :cond_19

    const/4 v13, 0x1

    sput-boolean v13, Lcom/android/systemui/volume/VolumeDialogController;->mIsSupportTvVolumeControl:Z

    goto/16 :goto_0

    :cond_19
    sget-boolean v13, Lcom/android/systemui/volume/VolumeDialogController;->mIsSupportTvVolumeControl:Z

    if-eqz v13, :cond_0

    const/4 v13, 0x0

    sput-boolean v13, Lcom/android/systemui/volume/VolumeDialogController;->mIsSupportTvVolumeControl:Z

    goto/16 :goto_0
.end method
