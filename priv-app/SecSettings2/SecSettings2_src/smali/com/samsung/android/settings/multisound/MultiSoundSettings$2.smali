.class Lcom/samsung/android/settings/multisound/MultiSoundSettings$2;
.super Ljava/lang/Object;
.source "MultiSoundSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/multisound/MultiSoundSettings;->onSwitchChanged(Landroid/widget/Switch;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/multisound/MultiSoundSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/multisound/MultiSoundSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/multisound/MultiSoundSettings$2;->this$0:Lcom/samsung/android/settings/multisound/MultiSoundSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7

    const/4 v6, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/samsung/android/settings/multisound/MultiSoundSettings$2;->this$0:Lcom/samsung/android/settings/multisound/MultiSoundSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/multisound/MultiSoundSettings;->-get0(Lcom/samsung/android/settings/multisound/MultiSoundSettings;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "multisound_init"

    const/4 v3, 0x1

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/samsung/android/settings/multisound/MultiSoundSettings$2;->this$0:Lcom/samsung/android/settings/multisound/MultiSoundSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/multisound/MultiSoundSettings;->-get0(Lcom/samsung/android/settings/multisound/MultiSoundSettings;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "multisound_app"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/multisound/MultiSoundSettings$2;->this$0:Lcom/samsung/android/settings/multisound/MultiSoundSettings;

    invoke-virtual {v0, v6}, Lcom/samsung/android/settings/multisound/MultiSoundSettings;->moveSelectApp(Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/multisound/MultiSoundSettings$2;->this$0:Lcom/samsung/android/settings/multisound/MultiSoundSettings;

    invoke-virtual {v0}, Lcom/samsung/android/settings/multisound/MultiSoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    const-class v1, Lcom/samsung/android/settings/multisound/AudioDeviceType;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0b0a63

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto :goto_0
.end method
