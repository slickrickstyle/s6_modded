.class public Lcom/android/systemui/wifi/WifiStatusReceiver;
.super Landroid/content/BroadcastReceiver;
.source "WifiStatusReceiver.java"


# static fields
.field static final CSC_EAP_METHOD:Ljava/lang/String;

.field static final CSC_ENABLE_WIFI_CONNECTION_TYPE:Z

.field private static final CSC_VENDOR_NOTI_STYLE:Ljava/lang/String;

.field static final CSC_WIFI_ERRORCODE:Z

.field static final DEBUG:Z

.field private static mShownConnectedToast:Z

.field public static sShowOnceFlag:Z


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/wifi/WifiStatusReceiver;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/wifi/WifiStatusReceiver;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/systemui/wifi/WifiStatusReceiver;Landroid/content/Context;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/wifi/WifiStatusReceiver;->connectToWifiAfterP2pDisconnectedForSCC(Landroid/content/Context;I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/wifi/WifiStatusReceiver;->DEBUG:Z

    sput-boolean v1, Lcom/android/systemui/wifi/WifiStatusReceiver;->sShowOnceFlag:Z

    sput-boolean v1, Lcom/android/systemui/wifi/WifiStatusReceiver;->mShownConnectedToast:Z

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string/jumbo v1, "CscFeature_Wifi_EnableDetailEapErrorCodesAndState"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/wifi/WifiStatusReceiver;->CSC_WIFI_ERRORCODE:Z

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string/jumbo v1, "CscFeature_Wifi_EapMethodSetting"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/wifi/WifiStatusReceiver;->CSC_EAP_METHOD:Ljava/lang/String;

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string/jumbo v1, "CscFeature_Wifi_EnableMenuConnectionType"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/wifi/WifiStatusReceiver;->CSC_ENABLE_WIFI_CONNECTION_TYPE:Z

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string/jumbo v1, "CscFeature_Wifi_ConfigWifiNotificationStyle"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/wifi/WifiStatusReceiver;->CSC_VENDOR_NOTI_STYLE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private connectToWifiAfterP2pDisconnectedForSCC(Landroid/content/Context;I)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "CONNECT_WIFI_AFTER_P2P_DISCONNECTED_AS_SCC"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "netid"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    sget-object v1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method public static enableToShowWifiPickerDialog(Z)V
    .locals 3

    sget-boolean v0, Lcom/android/systemui/wifi/WifiStatusReceiver;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "WifiStatusReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Want to show AP LIST:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sput-boolean p0, Lcom/android/systemui/wifi/WifiStatusReceiver;->sShowOnceFlag:Z

    return-void
.end method

.method public static getConfiguredNetworks(Landroid/net/wifi/WifiManager;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/wifi/WifiManager;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, -0x1

    const/16 v4, 0x3c

    move v5, v4

    :goto_0
    add-int/lit8 v4, v5, -0x1

    if-lez v5, :cond_1

    invoke-virtual {p0, v3}, Landroid/net/wifi/WifiManager;->semGetConfiguredNetworks(I)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_1

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    goto :goto_1

    :cond_0
    move v5, v4

    goto :goto_0

    :cond_1
    return-object v6
.end method

.method private static isSameSecurity(Landroid/net/wifi/ScanResult;Landroid/net/wifi/WifiConfiguration;)Z
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string/jumbo v1, "EAP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return v3

    :cond_1
    return v2

    :cond_2
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string/jumbo v1, "PSK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_3

    return v3

    :cond_3
    return v2

    :cond_4
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string/jumbo v1, "WEP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aget-object v0, v0, v2

    if-eqz v0, :cond_5

    return v3

    :cond_5
    return v2

    :cond_6
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aget-object v0, v0, v2

    if-nez v0, :cond_7

    return v3

    :cond_7
    return v2
.end method

.method public static removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/16 v3, 0x22

    const/4 v2, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v2, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_0

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_0

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_0
    return-object p0
.end method

.method private startWifiPickerDialog(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    sget-boolean v1, Lcom/android/systemui/wifi/WifiStatusReceiver;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "WifiStatusReceiver"

    const-string/jumbo v2, "SystemUI Call AP LIST dialog"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.android.net.wifi.SEC_PICK_WIFI_NETWORK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "type"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    sget-object v1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 43

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/wifi/WifiStatusReceiver;->mContext:Landroid/content/Context;

    sget-boolean v39, Lcom/android/systemui/wifi/WifiStatusReceiver;->DEBUG:Z

    if-eqz v39, :cond_0

    const-string/jumbo v39, "WifiStatusReceiver"

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v41, "action: "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    invoke-static/range {v39 .. v40}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string/jumbo v39, "com.samsung.android.net.wifi.SHOW_AP_LIST_DIALOG"

    move-object/from16 v0, v39

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_2

    sget-boolean v39, Lcom/android/systemui/wifi/WifiStatusReceiver;->DEBUG:Z

    if-eqz v39, :cond_1

    const-string/jumbo v39, "WifiStatusReceiver"

    const-string/jumbo v40, "ACTION CAME : com.samsung.android.net.wifi.SHOW_AP_LIST_DIALOG"

    invoke-static/range {v39 .. v40}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string/jumbo v39, "com.samsung.android.net.wifi.SHOW_INFO_MESSAGE"

    move-object/from16 v0, v39

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_12

    const-string/jumbo v39, "info_type"

    const/16 v40, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v39

    move/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v22

    sparse-switch v22, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const v39, 0x7f0f0354

    const/16 v40, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v39

    move/from16 v2, v40

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :sswitch_1
    const v39, 0x7f0f0355

    const/16 v40, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v39

    move/from16 v2, v40

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Landroid/widget/Toast;->setShowForAllUsers()V

    invoke-virtual/range {v33 .. v33}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :sswitch_2
    const v39, 0x7f0f0356

    const/16 v40, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v39

    move/from16 v2, v40

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :sswitch_3
    const v39, 0x7f0f0357

    const/16 v40, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v39

    move/from16 v2, v40

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :sswitch_4
    const v39, 0x7f0f0358

    const/16 v40, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v39

    move/from16 v2, v40

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :sswitch_5
    const v39, 0x7f0f0359

    const/16 v40, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v39

    move/from16 v2, v40

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :sswitch_6
    const v39, 0x7f0f035a

    const/16 v40, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v39

    move/from16 v2, v40

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :sswitch_7
    sget-boolean v39, Lcom/android/systemui/wifi/WifiStatusReceiver;->CSC_WIFI_ERRORCODE:Z

    if-eqz v39, :cond_e

    const-string/jumbo v39, "message"

    move-object/from16 v0, p2

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    const-string/jumbo v39, "ssid"

    move-object/from16 v0, p2

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    const-string/jumbo v39, "WifiStatusReceiver"

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v41, "SHOW EAP SIM MESSAGE ACTION: "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    invoke-static/range {v39 .. v40}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v20, :cond_3

    return-void

    :cond_3
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v39

    const-string/jumbo v40, "CscFeature_Wifi_SupportEapAka"

    invoke-virtual/range {v39 .. v40}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v39

    if-nez v39, :cond_6

    const-string/jumbo v39, "General failure"

    move-object/from16 v0, v20

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_5

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v39

    const v40, 0x7f0f035c

    invoke-virtual/range {v39 .. v40}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    :cond_4
    :goto_1
    const/16 v39, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move/from16 v2, v39

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :cond_5
    const-string/jumbo v39, "Not subscribed to the requested service"

    move-object/from16 v0, v20

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_4

    if-eqz v30, :cond_4

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v39

    const/16 v40, 0x1

    move/from16 v0, v40

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v40, v0

    const/16 v41, 0x0

    aput-object v30, v40, v41

    const v41, 0x7f0f035f

    move-object/from16 v0, v39

    move/from16 v1, v41

    move-object/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    goto :goto_1

    :cond_6
    const/16 v18, 0x1

    const-string/jumbo v39, "There is a problem connecting you to Verizon Wi-Fi Access"

    move-object/from16 v0, v20

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_7

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v39

    const v40, 0x7f0f0360

    invoke-virtual/range {v39 .. v40}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    :goto_2
    if-eqz v18, :cond_1

    const/16 v39, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move/from16 v2, v39

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :cond_7
    const-string/jumbo v39, "There is a problem with your Verizon Wi-Fi Access account"

    move-object/from16 v0, v20

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_8

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v39

    const v40, 0x7f0f0361

    invoke-virtual/range {v39 .. v40}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    goto :goto_2

    :cond_8
    const-string/jumbo v39, "You are not subscribed to Verizon Wi-Fi Access"

    move-object/from16 v0, v20

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_9

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v39

    const v40, 0x7f0f0362

    invoke-virtual/range {v39 .. v40}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    goto :goto_2

    :cond_9
    const-string/jumbo v39, "You can\'t connect to Verizon Wi-Fi Access from outside the Verizon coverage area"

    move-object/from16 v0, v20

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_a

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v39

    const v40, 0x7f0f0363

    invoke-virtual/range {v39 .. v40}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    goto :goto_2

    :cond_a
    const-string/jumbo v39, "There is a problem with your Verizon Wi-Fi Access account2"

    move-object/from16 v0, v20

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_b

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v39

    const v40, 0x7f0f0361

    invoke-virtual/range {v39 .. v40}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    goto :goto_2

    :cond_b
    const-string/jumbo v39, "You are already connected to Verizon Wi-Fi Access"

    move-object/from16 v0, v20

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_c

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v39

    const v40, 0x7f0f0364

    invoke-virtual/range {v39 .. v40}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    goto/16 :goto_2

    :cond_c
    const-string/jumbo v39, "Verizon Wi-Fi Access is not available from your location"

    move-object/from16 v0, v20

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_d

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v39

    const v40, 0x7f0f0365

    invoke-virtual/range {v39 .. v40}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    goto/16 :goto_2

    :cond_d
    const/16 v18, 0x0

    goto/16 :goto_2

    :cond_e
    sget-object v39, Lcom/android/systemui/wifi/WifiStatusReceiver;->CSC_EAP_METHOD:Ljava/lang/String;

    const-string/jumbo v40, "AKA"

    invoke-virtual/range {v39 .. v40}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v39

    if-eqz v39, :cond_1

    const-string/jumbo v39, "message"

    move-object/from16 v0, p2

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    const-string/jumbo v39, "WifiStatusReceiver"

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v41, "onReceive, message of received: "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    invoke-static/range {v39 .. v40}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v20, :cond_f

    return-void

    :cond_f
    const-string/jumbo v39, "KTT"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v40

    const-string/jumbo v41, "CscFeature_Wifi_ConfigAuthMsgDisplayPolicy"

    invoke-virtual/range {v40 .. v41}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v40

    invoke-virtual/range {v39 .. v40}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_1

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v39

    const v40, 0x7f0f035b

    invoke-virtual/range {v39 .. v40}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, v20

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_10

    return-void

    :cond_10
    const-string/jumbo v39, "General failure KT_AKA"

    move-object/from16 v0, v20

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-nez v39, :cond_1

    const/16 v39, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move/from16 v2, v39

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :sswitch_8
    const v39, 0x7f0f0369

    const/16 v40, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v39

    move/from16 v2, v40

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v39

    const v40, 0x102000b

    invoke-virtual/range {v39 .. v40}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v34

    check-cast v34, Landroid/widget/TextView;

    const/16 v39, 0x11

    move-object/from16 v0, v34

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    invoke-virtual/range {v32 .. v32}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :sswitch_9
    const-string/jumbo v39, "ssid"

    move-object/from16 v0, p2

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    if-eqz v30, :cond_1

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v26

    const v39, 0x7f0b0023

    move-object/from16 v0, v26

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v39

    const-string/jumbo v40, "#ff"

    const-string/jumbo v41, "#"

    invoke-virtual/range {v39 .. v41}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v39, "#DEAD00"

    move-object/from16 v0, v39

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_11

    const/16 v39, 0x1

    move/from16 v0, v39

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v39, v0

    const/16 v40, 0x0

    aput-object v30, v39, v40

    const v40, 0x7f0f0353

    move-object/from16 v0, v26

    move/from16 v1, v40

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    const/16 v39, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    move/from16 v2, v39

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :cond_11
    const/16 v39, 0x1

    :try_start_0
    move/from16 v0, v39

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v39, v0

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v41, "<font color="

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string/jumbo v41, ">"

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-static/range {v30 .. v30}, Landroid/text/Html;->escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v41

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string/jumbo v41, "</font>"

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    const/16 v41, 0x0

    aput-object v40, v39, v41

    const v40, 0x7f0f0353

    move-object/from16 v0, v26

    move/from16 v1, v40

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v39

    const/16 v40, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v39

    move/from16 v2, v40

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v39

    const v40, 0x102000b

    invoke-virtual/range {v39 .. v40}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v34

    check-cast v34, Landroid/widget/TextView;

    const/16 v39, 0x11

    move-object/from16 v0, v34

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    invoke-virtual/range {v32 .. v32}, Landroid/widget/Toast;->show()V

    const-string/jumbo v39, "WifiStatusReceiver"

    const-string/jumbo v40, "Show NETWORK_NOT_FOUND Toast"

    invoke-static/range {v39 .. v40}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/util/UnknownFormatConversionException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v14

    const-string/jumbo v39, "WifiStatusReceiver"

    invoke-virtual {v14}, Ljava/util/UnknownFormatConversionException;->toString()Ljava/lang/String;

    move-result-object v40

    invoke-static/range {v39 .. v40}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_12
    const-string/jumbo v39, "KTT"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v40

    const-string/jumbo v41, "CscFeature_Wifi_ConfigAuthMsgDisplayPolicy"

    invoke-virtual/range {v40 .. v41}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v40

    invoke-virtual/range {v39 .. v40}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_17

    const-string/jumbo v39, "com.kt.wifiapi.OEMExtension.NOTIFICATION"

    move-object/from16 v0, v39

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_17

    const-string/jumbo v39, "ERROR_NOTIFICATION"

    const/16 v40, -0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v39

    move/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v15

    const/16 v20, 0x0

    if-nez v15, :cond_13

    return-void

    :cond_13
    const/16 v39, 0x4

    move/from16 v0, v39

    if-ne v15, v0, :cond_14

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v39

    const v40, 0x7f0f0367

    invoke-virtual/range {v39 .. v40}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    :goto_3
    const/16 v39, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move/from16 v2, v39

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :cond_14
    const/16 v39, 0x5

    move/from16 v0, v39

    if-ne v15, v0, :cond_15

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v39

    const v40, 0x7f0f035e

    invoke-virtual/range {v39 .. v40}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    goto :goto_3

    :cond_15
    const/16 v39, 0x6

    move/from16 v0, v39

    if-ne v15, v0, :cond_16

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v39

    const v40, 0x7f0f0366

    invoke-virtual/range {v39 .. v40}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    return-void

    :cond_16
    return-void

    :cond_17
    const-string/jumbo v39, "com.samsung.intent.action.BCS_REQUEST"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v40

    invoke-virtual/range {v39 .. v40}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_1c

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v12

    if-nez v12, :cond_18

    const-string/jumbo v39, "WifiStatusReceiver"

    const-string/jumbo v40, "there is no extras"

    invoke-static/range {v39 .. v40}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_18
    const-string/jumbo v39, "command"

    move-object/from16 v0, v39

    invoke-virtual {v12, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_19

    const-string/jumbo v39, " "

    const-string/jumbo v40, ""

    move-object/from16 v0, v39

    move-object/from16 v1, v40

    invoke-virtual {v7, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    :cond_19
    const-string/jumbo v39, "AT+WIFIVALUE"

    move-object/from16 v0, v39

    invoke-virtual {v0, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v39

    if-eqz v39, :cond_1

    const-string/jumbo v39, "wifi"

    move-object/from16 v0, p1

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Landroid/net/wifi/WifiManager;

    invoke-virtual/range {v36 .. v36}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v38

    const/16 v39, 0x2

    move/from16 v0, v38

    move/from16 v1, v39

    if-eq v0, v1, :cond_1a

    const/16 v39, 0x3

    move/from16 v0, v38

    move/from16 v1, v39

    if-ne v0, v1, :cond_1b

    :cond_1a
    new-instance v39, Landroid/content/Intent;

    const-string/jumbo v40, "com.samsung.intent.action.BCS_RESPONSE"

    invoke-direct/range {v39 .. v40}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v40, "response"

    const-string/jumbo v41, "ON"

    invoke-virtual/range {v39 .. v41}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v39

    move-object/from16 v0, p1

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_1b
    new-instance v39, Landroid/content/Intent;

    const-string/jumbo v40, "com.samsung.intent.action.BCS_RESPONSE"

    invoke-direct/range {v39 .. v40}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v40, "response"

    const-string/jumbo v41, "OFF"

    invoke-virtual/range {v39 .. v41}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v39

    move-object/from16 v0, p1

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_1c
    const-string/jumbo v39, "android.net.wifi.SCAN_RESULTS"

    move-object/from16 v0, v39

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-nez v39, :cond_1d

    const-string/jumbo v39, "com.sec.android.wifi.scan.result"

    move-object/from16 v0, v39

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_2b

    :cond_1d
    sget-boolean v39, Lcom/android/systemui/wifi/WifiStatusReceiver;->sShowOnceFlag:Z

    if-eqz v39, :cond_1

    const/16 v39, 0x0

    sput-boolean v39, Lcom/android/systemui/wifi/WifiStatusReceiver;->sShowOnceFlag:Z

    const-string/jumbo v39, "wifi"

    move-object/from16 v0, p1

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Landroid/net/wifi/WifiManager;

    invoke-virtual/range {v36 .. v36}, Landroid/net/wifi/WifiManager;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v37

    if-eqz v37, :cond_1e

    invoke-virtual/range {v37 .. v37}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v39

    if-eqz v39, :cond_1e

    return-void

    :cond_1e
    const/4 v10, 0x0

    invoke-virtual/range {v36 .. v36}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v29

    invoke-virtual/range {v36 .. v36}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v39

    if-eqz v39, :cond_1f

    invoke-static/range {v36 .. v36}, Lcom/android/systemui/wifi/WifiStatusReceiver;->getConfiguredNetworks(Landroid/net/wifi/WifiManager;)Ljava/util/List;

    move-result-object v10

    :cond_1f
    const/16 v31, 0x0

    if-nez v10, :cond_22

    const-string/jumbo v39, "WifiStatusReceiver"

    const-string/jumbo v40, "constructAccessPoints config is null"

    invoke-static/range {v39 .. v40}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20
    :goto_4
    const-string/jumbo v39, "WifiStatusReceiver"

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v41, "SCAN_RESULTS_AVAILABLE_ACTION RECEIVED : sShowOnceFlag - true, ssid_count - "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    invoke-static/range {v39 .. v40}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {v36 .. v36}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v39

    if-eqz v39, :cond_29

    sget-boolean v39, Lcom/android/systemui/wifi/WifiStatusReceiver;->CSC_ENABLE_WIFI_CONNECTION_TYPE:Z

    if-eqz v39, :cond_29

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v39

    const-string/jumbo v40, "wifi_cmcc_manual"

    const/16 v41, 0x0

    invoke-static/range {v39 .. v41}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v35

    const-string/jumbo v39, "WifiStatusReceiver"

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v41, "wifiConnectionType is"

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    invoke-static/range {v39 .. v40}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v39, 0x2

    move/from16 v0, v35

    move/from16 v1, v39

    if-eq v0, v1, :cond_21

    if-eqz v31, :cond_28

    if-nez v35, :cond_28

    :cond_21
    return-void

    :cond_22
    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_23
    :goto_5
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v39

    if-eqz v39, :cond_20

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/wifi/WifiConfiguration;

    if-nez v8, :cond_24

    const-string/jumbo v39, "WifiStatusReceiver"

    const-string/jumbo v40, "constructAccessPoints config is null"

    invoke-static/range {v39 .. v40}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_24
    iget-object v0, v8, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v39, v0

    if-nez v39, :cond_27

    const-string/jumbo v30, ""

    :goto_6
    invoke-interface/range {v29 .. v29}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v28

    :cond_25
    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->hasNext()Z

    move-result v39

    if-eqz v39, :cond_26

    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/net/wifi/ScanResult;

    move-object/from16 v0, v27

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_25

    move-object/from16 v0, v27

    invoke-static {v0, v8}, Lcom/android/systemui/wifi/WifiStatusReceiver;->isSameSecurity(Landroid/net/wifi/ScanResult;Landroid/net/wifi/WifiConfiguration;)Z

    move-result v39

    if-eqz v39, :cond_25

    add-int/lit8 v31, v31, 0x1

    :cond_26
    if-eqz v31, :cond_23

    goto/16 :goto_4

    :cond_27
    iget-object v0, v8, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v39, v0

    invoke-static/range {v39 .. v39}, Lcom/android/systemui/wifi/WifiStatusReceiver;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    goto :goto_6

    :cond_28
    invoke-direct/range {p0 .. p2}, Lcom/android/systemui/wifi/WifiStatusReceiver;->startWifiPickerDialog(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_29
    if-nez v31, :cond_1

    invoke-virtual/range {v36 .. v36}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v39

    if-eqz v39, :cond_2a

    invoke-direct/range {p0 .. p2}, Lcom/android/systemui/wifi/WifiStatusReceiver;->startWifiPickerDialog(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_2a
    const/16 v39, 0x1

    sput-boolean v39, Lcom/android/systemui/wifi/WifiStatusReceiver;->sShowOnceFlag:Z

    const-string/jumbo v39, "WifiStatusReceiver"

    const-string/jumbo v40, "!wifiManager.isWifiEnabled(), sShowOnceFlag = true"

    invoke-static/range {v39 .. v40}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_2b
    const-string/jumbo v39, "android.intent.action.BOOT_COMPLETED"

    move-object/from16 v0, v39

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_2d

    const-string/jumbo v39, "wifi"

    move-object/from16 v0, p1

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Landroid/net/wifi/WifiManager;

    invoke-virtual/range {v36 .. v36}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v39

    if-eqz v39, :cond_1

    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    move-result v39

    if-eqz v39, :cond_1

    const-string/jumbo v39, "WifiStatusReceiver"

    const-string/jumbo v40, "Factory Mode is ON. Turn off Wi-Fi"

    invoke-static/range {v39 .. v40}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v39, 0x0

    move-object/from16 v0, v36

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    const-string/jumbo v39, "ATT"

    sget-object v40, Lcom/android/systemui/wifi/WifiStatusReceiver;->CSC_VENDOR_NOTI_STYLE:Ljava/lang/String;

    invoke-virtual/range {v39 .. v40}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_2c

    const-string/jumbo v39, "WifiStatusReceiver"

    const-string/jumbo v40, "Factory Mode is ON. Disabled internet service check"

    invoke-static/range {v39 .. v40}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v39

    const-string/jumbo v40, "wifi_watchdog_poor_network_test_enabled"

    const/16 v41, 0x0

    invoke-static/range {v39 .. v41}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_2c
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v39

    const v40, 0x7f0f036b

    invoke-virtual/range {v39 .. v40}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v39

    const/16 v40, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v39

    move/from16 v2, v40

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :cond_2d
    const-string/jumbo v39, "ACTION_AGGREGATION_DELAY"

    move-object/from16 v0, v39

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_30

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v39

    const-string/jumbo v40, "CscFeature_Wifi_SupportWifiAggregation"

    invoke-virtual/range {v39 .. v40}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v39

    if-eqz v39, :cond_30

    const-string/jumbo v39, "wifi"

    move-object/from16 v0, p1

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Landroid/net/wifi/WifiManager;

    const/16 v30, 0x0

    if-eqz v36, :cond_2e

    invoke-virtual/range {v36 .. v36}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v17

    if-eqz v17, :cond_2e

    invoke-virtual/range {v17 .. v17}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v30

    :cond_2e
    if-eqz v30, :cond_1

    const-string/jumbo v39, "ro.build.scafe.cream"

    invoke-static/range {v39 .. v39}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    const-string/jumbo v40, "white"

    invoke-virtual/range {v39 .. v40}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v39

    if-eqz v39, :cond_2f

    new-instance v11, Landroid/view/ContextThemeWrapper;

    const v39, 0x103012b

    move-object/from16 v0, p1

    move/from16 v1, v39

    invoke-direct {v11, v0, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    move-object/from16 p1, v11

    :cond_2f
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v39

    const v40, 0x7f0b0023

    invoke-virtual/range {v39 .. v40}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v39

    const-string/jumbo v40, "#ff"

    const-string/jumbo v41, "#"

    invoke-virtual/range {v39 .. v41}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v39

    const/16 v40, 0x1

    move/from16 v0, v40

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v40, v0

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v42, "<font color="

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    const-string/jumbo v42, ">"

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-static/range {v30 .. v30}, Landroid/text/Html;->escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v42

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    const-string/jumbo v42, "</font>"

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    const/16 v42, 0x0

    aput-object v41, v40, v42

    const v41, 0x7f0f009f

    move-object/from16 v0, v39

    move/from16 v1, v41

    move-object/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v39

    const/16 v40, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v39

    move/from16 v2, v40

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v39

    const v40, 0x102000b

    invoke-virtual/range {v39 .. v40}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v34

    check-cast v34, Landroid/widget/TextView;

    const/16 v39, 0x11

    move-object/from16 v0, v34

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    invoke-virtual/range {v32 .. v32}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :cond_30
    const-string/jumbo v39, "ACTION_AGGREGATION_DISCONNECT"

    move-object/from16 v0, v39

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_31

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v39

    const-string/jumbo v40, "CscFeature_Wifi_SupportWifiAggregation"

    invoke-virtual/range {v39 .. v40}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v39

    if-eqz v39, :cond_31

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v39

    const v40, 0x7f0f0368

    invoke-virtual/range {v39 .. v40}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v21

    const/16 v39, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    move/from16 v2, v39

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :cond_31
    const-string/jumbo v39, "com.samsung.android.net.wifi.SHOW_SCC_DIALOG"

    move-object/from16 v0, v39

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_1

    const-string/jumbo v39, "netid"

    const/16 v40, -0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v39

    move/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v23

    const-string/jumbo v39, "wifip2p"

    move-object/from16 v0, p1

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/net/wifi/p2p/WifiP2pManager;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v39

    const/16 v40, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, p1

    move-object/from16 v2, v39

    move-object/from16 v3, v40

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/wifi/p2p/WifiP2pManager;->initialize(Landroid/content/Context;Landroid/os/Looper;Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v24

    new-instance v39, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, v39

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v40

    const v41, 0x7f0f036a

    invoke-virtual/range {v40 .. v41}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v40

    invoke-virtual/range {v39 .. v40}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v39

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v40

    const v41, 0x7f0f0045

    invoke-virtual/range {v40 .. v41}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v40

    new-instance v41, Lcom/android/systemui/wifi/WifiStatusReceiver$1;

    move-object/from16 v0, v41

    move-object/from16 v1, p0

    move-object/from16 v2, v25

    move-object/from16 v3, v24

    move/from16 v4, v23

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/systemui/wifi/WifiStatusReceiver$1;-><init>(Lcom/android/systemui/wifi/WifiStatusReceiver;Landroid/net/wifi/p2p/WifiP2pManager;Landroid/net/wifi/p2p/WifiP2pManager$Channel;I)V

    invoke-virtual/range {v39 .. v41}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v39

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v40

    const v41, 0x7f0f0018

    invoke-virtual/range {v40 .. v41}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v40

    new-instance v41, Lcom/android/systemui/wifi/WifiStatusReceiver$2;

    move-object/from16 v0, v41

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/systemui/wifi/WifiStatusReceiver$2;-><init>(Lcom/android/systemui/wifi/WifiStatusReceiver;)V

    invoke-virtual/range {v39 .. v41}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v39

    const/16 v40, 0x7d8

    invoke-virtual/range {v39 .. v40}, Landroid/view/Window;->setType(I)V

    invoke-virtual {v13}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x5 -> :sswitch_3
        0x6 -> :sswitch_4
        0x7 -> :sswitch_5
        0xa -> :sswitch_6
        0x14 -> :sswitch_7
        0x1e -> :sswitch_8
        0x32 -> :sswitch_9
    .end sparse-switch
.end method
