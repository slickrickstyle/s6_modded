.class Lcom/samsung/android/settings/notification/SoundModeSettings$4;
.super Ljava/lang/Object;
.source "SoundModeSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/notification/SoundModeSettings;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/notification/SoundModeSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/notification/SoundModeSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/notification/SoundModeSettings$4;->this$0:Lcom/samsung/android/settings/notification/SoundModeSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 7

    const/4 v2, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v1, p0, Lcom/samsung/android/settings/notification/SoundModeSettings$4;->this$0:Lcom/samsung/android/settings/notification/SoundModeSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/notification/SoundModeSettings;->-get2(Lcom/samsung/android/settings/notification/SoundModeSettings;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v5

    :cond_0
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/notification/SoundModeSettings$4;->this$0:Lcom/samsung/android/settings/notification/SoundModeSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/notification/SoundModeSettings;->-wrap4(Lcom/samsung/android/settings/notification/SoundModeSettings;)V

    return v5

    :cond_1
    invoke-static {}, Lcom/samsung/android/settings/notification/SoundModeSettings;->-get0()Landroid/media/AudioManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result v1

    if-ne v2, v1, :cond_2

    return v6

    :cond_2
    invoke-static {}, Lcom/samsung/android/settings/notification/SoundModeSettings;->-get0()Landroid/media/AudioManager;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->setRingerModeInternal(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/notification/SoundModeSettings$4;->this$0:Lcom/samsung/android/settings/notification/SoundModeSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/notification/SoundModeSettings;->-wrap0(Lcom/samsung/android/settings/notification/SoundModeSettings;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "mode_ringer_time_on"

    invoke-static {v1, v2, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-static {}, Lcom/samsung/android/settings/notification/SoundModeSettings;->-get0()Landroid/media/AudioManager;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/notification/SoundModeSettings$4;->this$0:Lcom/samsung/android/settings/notification/SoundModeSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/notification/SoundModeSettings;->-wrap0(Lcom/samsung/android/settings/notification/SoundModeSettings;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "init_ramining_time"

    invoke-static {}, Lcom/samsung/android/settings/notification/SoundModeSettings;->-get0()Landroid/media/AudioManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/AudioManager;->getMuteInterval()I

    move-result v4

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->setMuteInterval(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/notification/SoundModeSettings$4;->this$0:Lcom/samsung/android/settings/notification/SoundModeSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/notification/SoundModeSettings;->-wrap1(Lcom/samsung/android/settings/notification/SoundModeSettings;)V

    iget-object v1, p0, Lcom/samsung/android/settings/notification/SoundModeSettings$4;->this$0:Lcom/samsung/android/settings/notification/SoundModeSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/notification/SoundModeSettings;->-get1(Lcom/samsung/android/settings/notification/SoundModeSettings;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/notification/SoundModeSettings$4;->this$0:Lcom/samsung/android/settings/notification/SoundModeSettings;

    invoke-virtual {v2}, Lcom/samsung/android/settings/notification/SoundModeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f100110

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    return v6
.end method
