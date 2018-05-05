.class public Lcom/samsung/android/settings/rcs/RcsUtils;
.super Ljava/lang/Object;
.source "RcsUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/rcs/RcsUtils$CustomCscParser;,
        Lcom/samsung/android/settings/rcs/RcsUtils$RcsFeatures;,
        Lcom/samsung/android/settings/rcs/RcsUtils$RcsMpsStatus;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;

.field private static sInstance:Lcom/samsung/android/settings/rcs/RcsUtils;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIsOmcSupport:Z

.field private mRcsFeatures:Lcom/samsung/android/settings/rcs/RcsUtils$RcsFeatures;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/rcs/RcsUtils;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/settings/rcs/RcsUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/rcs/RcsUtils;->LOG_TAG:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/settings/rcs/RcsUtils;->sInstance:Lcom/samsung/android/settings/rcs/RcsUtils;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/rcs/RcsUtils;->mRcsFeatures:Lcom/samsung/android/settings/rcs/RcsUtils$RcsFeatures;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcom/samsung/android/settings/rcs/RcsUtils;->mRcsFeatures:Lcom/samsung/android/settings/rcs/RcsUtils$RcsFeatures;

    if-nez p1, :cond_0

    sget-object v3, Lcom/samsung/android/settings/rcs/RcsUtils;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v4, "The given context is null"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iput-object p1, p0, Lcom/samsung/android/settings/rcs/RcsUtils;->mContext:Landroid/content/Context;

    new-instance v0, Ljava/io/File;

    const-string/jumbo v3, "/system/etc/support_omc"

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    move v3, v4

    :goto_0
    iput-boolean v3, p0, Lcom/samsung/android/settings/rcs/RcsUtils;->mIsOmcSupport:Z

    iget-boolean v3, p0, Lcom/samsung/android/settings/rcs/RcsUtils;->mIsOmcSupport:Z

    if-nez v3, :cond_1

    const-string/jumbo v3, "persist.sys.omc_path"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "persist.sys.omcnw_path"

    invoke-static {v3, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    iput-boolean v4, p0, Lcom/samsung/android/settings/rcs/RcsUtils;->mIsOmcSupport:Z

    :cond_1
    new-instance v3, Lcom/samsung/android/settings/rcs/RcsUtils$RcsFeatures;

    invoke-direct {v3}, Lcom/samsung/android/settings/rcs/RcsUtils$RcsFeatures;-><init>()V

    iput-object v3, p0, Lcom/samsung/android/settings/rcs/RcsUtils;->mRcsFeatures:Lcom/samsung/android/settings/rcs/RcsUtils$RcsFeatures;

    return-void

    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private getEnabledRcsFromMps(Ljava/lang/String;)Lcom/samsung/android/settings/rcs/RcsUtils$RcsMpsStatus;
    .locals 9

    const/4 v5, 0x0

    new-instance v3, Lcom/samsung/android/settings/rcs/RcsUtils$CustomCscParser;

    invoke-virtual {p0}, Lcom/samsung/android/settings/rcs/RcsUtils;->isOmcDevice()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-direct {v3, v6}, Lcom/samsung/android/settings/rcs/RcsUtils$CustomCscParser;-><init>(Ljava/lang/Boolean;)V

    const-string/jumbo v6, "Settings.IMSSetting"

    invoke-virtual {v3, v6}, Lcom/samsung/android/settings/rcs/RcsUtils$CustomCscParser;->search(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v1

    if-nez v1, :cond_0

    sget-object v6, Lcom/samsung/android/settings/rcs/RcsUtils;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v7, "getEnabledRcsFromMps: No Settings.IMSSetting node"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v6, Lcom/samsung/android/settings/rcs/RcsUtils$RcsMpsStatus;->NO_FEATURE_TAG:Lcom/samsung/android/settings/rcs/RcsUtils$RcsMpsStatus;

    return-object v6

    :cond_0
    const-string/jumbo v6, "Setting"

    invoke-virtual {v3, v1, v6}, Lcom/samsung/android/settings/rcs/RcsUtils$CustomCscParser;->searchList(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    if-nez v2, :cond_1

    sget-object v6, Lcom/samsung/android/settings/rcs/RcsUtils;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v7, "getEnabledRcsFromMps: No Setting node"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v6, Lcom/samsung/android/settings/rcs/RcsUtils$RcsMpsStatus;->NO_FEATURE_TAG:Lcom/samsung/android/settings/rcs/RcsUtils$RcsMpsStatus;

    return-object v6

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v6

    if-ge v0, v6, :cond_7

    invoke-interface {v2, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    const-string/jumbo v7, "NetworkName"

    invoke-virtual {v3, v6, v7}, Lcom/samsung/android/settings/rcs/RcsUtils$CustomCscParser;->search(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/rcs/RcsUtils$CustomCscParser;->getValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    sget-object v6, Lcom/samsung/android/settings/rcs/RcsUtils;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getEnabledRcsFromMps: Found matched node for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v2, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    const-string/jumbo v7, "RCS"

    invoke-virtual {v3, v6, v7}, Lcom/samsung/android/settings/rcs/RcsUtils$CustomCscParser;->search(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v4

    if-eqz v4, :cond_3

    const-string/jumbo v6, "EnableRCS"

    invoke-virtual {v3, v4, v6}, Lcom/samsung/android/settings/rcs/RcsUtils$CustomCscParser;->search(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/rcs/RcsUtils$CustomCscParser;->getValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_4

    :cond_2
    sget-object v6, Lcom/samsung/android/settings/rcs/RcsUtils;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v7, "getEnabledRcsFromMps: EnableRCS is null"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v6, Lcom/samsung/android/settings/rcs/RcsUtils$RcsMpsStatus;->NO_FEATURE_TAG:Lcom/samsung/android/settings/rcs/RcsUtils$RcsMpsStatus;

    return-object v6

    :cond_3
    sget-object v6, Lcom/samsung/android/settings/rcs/RcsUtils;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v7, "getEnabledRcsFromMps: No RCS node"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v6, Lcom/samsung/android/settings/rcs/RcsUtils$RcsMpsStatus;->NO_FEATURE_TAG:Lcom/samsung/android/settings/rcs/RcsUtils$RcsMpsStatus;

    return-object v6

    :cond_4
    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "true"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    sget-object v6, Lcom/samsung/android/settings/rcs/RcsUtils$RcsMpsStatus;->ENABLED:Lcom/samsung/android/settings/rcs/RcsUtils$RcsMpsStatus;

    :goto_1
    return-object v6

    :cond_5
    sget-object v6, Lcom/samsung/android/settings/rcs/RcsUtils$RcsMpsStatus;->DISABLED:Lcom/samsung/android/settings/rcs/RcsUtils$RcsMpsStatus;

    goto :goto_1

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_7
    sget-object v6, Lcom/samsung/android/settings/rcs/RcsUtils$RcsMpsStatus;->NO_FEATURE_TAG:Lcom/samsung/android/settings/rcs/RcsUtils$RcsMpsStatus;

    return-object v6
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/rcs/RcsUtils;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/rcs/RcsUtils;->sInstance:Lcom/samsung/android/settings/rcs/RcsUtils;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/settings/rcs/RcsUtils;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/rcs/RcsUtils;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/samsung/android/settings/rcs/RcsUtils;->sInstance:Lcom/samsung/android/settings/rcs/RcsUtils;

    :cond_0
    sget-object v0, Lcom/samsung/android/settings/rcs/RcsUtils;->sInstance:Lcom/samsung/android/settings/rcs/RcsUtils;

    return-object v0
.end method

.method private getMccMnc()Ljava/lang/String;
    .locals 5

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/samsung/android/settings/rcs/RcsUtils;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    return-object v4

    :cond_1
    return-object v0
.end method

.method private getNetworkName(Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    const/4 v8, 0x0

    const/4 v5, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_0
    sget-object v6, Lcom/samsung/android/settings/rcs/RcsUtils;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v7, "getNetworkName: MCCMNC is null"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    return-object v8

    :cond_1
    new-instance v3, Lcom/samsung/android/settings/rcs/RcsUtils$CustomCscParser;

    invoke-virtual {p0}, Lcom/samsung/android/settings/rcs/RcsUtils;->isOmcDevice()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-direct {v3, v6}, Lcom/samsung/android/settings/rcs/RcsUtils$CustomCscParser;-><init>(Ljava/lang/Boolean;)V

    const-string/jumbo v6, "GeneralInfo"

    invoke-virtual {v3, v6}, Lcom/samsung/android/settings/rcs/RcsUtils$CustomCscParser;->search(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v1

    if-nez v1, :cond_2

    sget-object v6, Lcom/samsung/android/settings/rcs/RcsUtils;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v7, "getNetworkName: No GenralInfo node"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    return-object v8

    :cond_2
    const-string/jumbo v6, "NetworkInfo"

    invoke-virtual {v3, v1, v6}, Lcom/samsung/android/settings/rcs/RcsUtils$CustomCscParser;->searchList(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    if-nez v2, :cond_3

    sget-object v6, Lcom/samsung/android/settings/rcs/RcsUtils;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v7, "getNetworkName: No NetworkInfo node"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    return-object v8

    :cond_3
    const/4 v0, 0x0

    :goto_0
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v6

    if-ge v0, v6, :cond_4

    invoke-interface {v2, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    const-string/jumbo v7, "MCCMNC"

    invoke-virtual {v3, v6, v7}, Lcom/samsung/android/settings/rcs/RcsUtils$CustomCscParser;->search(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/rcs/RcsUtils$CustomCscParser;->getValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    sget-object v6, Lcom/samsung/android/settings/rcs/RcsUtils;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getNetworkName: Found matched network name by "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v2, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    const-string/jumbo v7, "NetworkName"

    invoke-virtual {v3, v6, v7}, Lcom/samsung/android/settings/rcs/RcsUtils$CustomCscParser;->search(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/rcs/RcsUtils$CustomCscParser;->getValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v5

    :cond_4
    return-object v5

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getRcsFeatures()Lcom/samsung/android/settings/rcs/RcsUtils$RcsFeatures;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/rcs/RcsUtils;->mRcsFeatures:Lcom/samsung/android/settings/rcs/RcsUtils$RcsFeatures;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/settings/rcs/RcsUtils$RcsFeatures;

    invoke-direct {v0}, Lcom/samsung/android/settings/rcs/RcsUtils$RcsFeatures;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/rcs/RcsUtils;->mRcsFeatures:Lcom/samsung/android/settings/rcs/RcsUtils$RcsFeatures;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/rcs/RcsUtils;->mRcsFeatures:Lcom/samsung/android/settings/rcs/RcsUtils$RcsFeatures;

    return-object v0
.end method

.method public isOmcDevice()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/rcs/RcsUtils;->mIsOmcSupport:Z

    return v0
.end method

.method public isRcsEnabledInCsc()Z
    .locals 9

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v6

    const-string/jumbo v7, "CscFeature_IMS_EnableRCSe"

    invoke-virtual {v6, v7}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v6

    const-string/jumbo v7, "CscFeature_RIL_UseMpsForImsSetting"

    invoke-virtual {v6, v7}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iget-object v6, p0, Lcom/samsung/android/settings/rcs/RcsUtils;->mRcsFeatures:Lcom/samsung/android/settings/rcs/RcsUtils$RcsFeatures;

    invoke-virtual {v6}, Lcom/samsung/android/settings/rcs/RcsUtils$RcsFeatures;->isRcsUiForOpen()Z

    move-result v3

    sget-object v6, Lcom/samsung/android/settings/rcs/RcsUtils;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "isRcsEnabledInCsc: cscRcsEnabled("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "), useMpsForIms("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "), isRcsUiForOpen("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v0

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    if-eqz v3, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/settings/rcs/RcsUtils;->getMccMnc()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/samsung/android/settings/rcs/RcsUtils;->getNetworkName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget-object v2, Lcom/samsung/android/settings/rcs/RcsUtils$RcsMpsStatus;->NO_FEATURE_TAG:Lcom/samsung/android/settings/rcs/RcsUtils$RcsMpsStatus;

    if-nez v4, :cond_1

    const/4 v5, 0x0

    sget-object v6, Lcom/samsung/android/settings/rcs/RcsUtils;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v7, "isRcsEnabledInCsc: RCS service is not availble(couldn\'t find matched network name)"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    sget-object v6, Lcom/samsung/android/settings/rcs/RcsUtils;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "isRcsEnabledInCsc: RCS availability is ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_1
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-direct {p0, v4}, Lcom/samsung/android/settings/rcs/RcsUtils;->getEnabledRcsFromMps(Ljava/lang/String;)Lcom/samsung/android/settings/rcs/RcsUtils$RcsMpsStatus;

    move-result-object v2

    sget-object v6, Lcom/samsung/android/settings/rcs/RcsUtils$RcsMpsStatus;->NO_FEATURE_TAG:Lcom/samsung/android/settings/rcs/RcsUtils$RcsMpsStatus;

    if-ne v2, v6, :cond_2

    const/4 v5, 0x0

    sget-object v6, Lcom/samsung/android/settings/rcs/RcsUtils;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v7, "isRcsEnabledInCsc: RCS service is not available(couldn\'t find feature tag)"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    sget-object v6, Lcom/samsung/android/settings/rcs/RcsUtils$RcsMpsStatus;->ENABLED:Lcom/samsung/android/settings/rcs/RcsUtils$RcsMpsStatus;

    if-ne v2, v6, :cond_3

    const/4 v5, 0x1

    :goto_1
    sget-object v6, Lcom/samsung/android/settings/rcs/RcsUtils;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "isRcsEnabledInCsc: RCS service is available(found feature tag: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    const/4 v5, 0x0

    goto :goto_1
.end method
