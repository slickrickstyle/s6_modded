.class Lcom/android/settings/wfd/WifiDisplaySettings$22;
.super Ljava/lang/Object;
.source "WifiDisplaySettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wfd/WifiDisplaySettings;->createDongleRenameDialog()Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

.field final synthetic val$activeDisplay:Landroid/hardware/display/SemWifiDisplay;

.field final synthetic val$mEditDeviceName:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/android/settings/wfd/WifiDisplaySettings;Landroid/hardware/display/SemWifiDisplay;Landroid/widget/EditText;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings$22;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    iput-object p2, p0, Lcom/android/settings/wfd/WifiDisplaySettings$22;->val$activeDisplay:Landroid/hardware/display/SemWifiDisplay;

    iput-object p3, p0, Lcom/android/settings/wfd/WifiDisplaySettings$22;->val$mEditDeviceName:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings$22;->val$activeDisplay:Landroid/hardware/display/SemWifiDisplay;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings$22;->val$mEditDeviceName:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings$22;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    invoke-static {v1}, Lcom/android/settings/wfd/WifiDisplaySettings;->-get1(Lcom/android/settings/wfd/WifiDisplaySettings;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
