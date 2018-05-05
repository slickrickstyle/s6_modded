.class Lcom/samsung/android/settings/ethernet/EthernetEnabler$1;
.super Landroid/content/BroadcastReceiver;
.source "EthernetEnabler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/ethernet/EthernetEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/ethernet/EthernetEnabler;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/ethernet/EthernetEnabler;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/ethernet/EthernetEnabler$1;->this$0:Lcom/samsung/android/settings/ethernet/EthernetEnabler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    const-string/jumbo v1, "SettingsEthEnabler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "intent.getAction() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "samsung.net.ethernet.ETH_STATE_CHANGED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/ethernet/EthernetEnabler$1;->this$0:Lcom/samsung/android/settings/ethernet/EthernetEnabler;

    invoke-static {v1}, Lcom/samsung/android/settings/ethernet/EthernetEnabler;->-get1(Lcom/samsung/android/settings/ethernet/EthernetEnabler;)Landroid/net/EthernetManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/EthernetManager;->isEthConnected()Z

    move-result v0

    const-string/jumbo v1, "SettingsEthEnabler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Eth receive state : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/settings/ethernet/EthernetEnabler$1;->this$0:Lcom/samsung/android/settings/ethernet/EthernetEnabler;

    invoke-static {v1}, Lcom/samsung/android/settings/ethernet/EthernetEnabler;->-get0(Lcom/samsung/android/settings/ethernet/EthernetEnabler;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/ethernet/EthernetEnabler$1;->this$0:Lcom/samsung/android/settings/ethernet/EthernetEnabler;

    invoke-static {v1}, Lcom/samsung/android/settings/ethernet/EthernetEnabler;->-get0(Lcom/samsung/android/settings/ethernet/EthernetEnabler;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    const v2, 0x7f0b0fdd

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    :cond_0
    return-void
.end method
