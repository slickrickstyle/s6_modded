.class Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen$4;
.super Ljava/lang/Object;
.source "SetupWizardWifiScreen.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->initializeView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen$4;->this$0:Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    const-string/jumbo v2, "SetupWizard --> SetupWizardWifiScreen"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, " OnClick of Positibe Button : Is Wi-Fi connected ?? "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen$4;->this$0:Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;

    invoke-static {v4}, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->-get8(Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen$4;->this$0:Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->-get2(Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen$4;->this$0:Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->-get6(Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/WifiConnectivityUtils;->isDataAvailable(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen$4;->this$0:Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->-get1(Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen$4;->this$0:Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->-get8(Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen$4;->this$0:Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->-get6(Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/WifiConnectivityUtils;->isDataAvailable(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "com.sec.android.app.setupwizard.B2B_CHECK_PROGRESS"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "isLaunchedFromWifi"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen$4;->this$0:Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;

    const/16 v3, 0x3e9

    invoke-virtual {v2, v0, v3}, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_0
    invoke-static {}, Lcom/samsung/android/settings/wifi/WifiConnectivityUtils;->shouldAnimateWifiImage()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen$4;->this$0:Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->-get12(Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;)Landroid/view/ViewGroup;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen$4;->this$0:Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->-get12(Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->cancel()V

    :cond_2
    const/4 v1, 0x0

    :goto_1
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen$4;->this$0:Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->-get13(Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_5

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen$4;->this$0:Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->-get13(Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->cancel()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen$4;->this$0:Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;

    const/4 v3, 0x5

    invoke-static {v2, v3}, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->-wrap3(Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;I)V

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen$4;->this$0:Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;

    const/4 v3, -0x1

    invoke-static {v2, v3}, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->-wrap2(Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;I)V

    goto :goto_0

    :cond_5
    return-void
.end method
