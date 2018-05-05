.class public Lcom/samsung/android/rlc/receiver/handler/CertHandler;
.super Ljava/lang/Object;
.source "CertHandler.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field response:Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler$RESPONSE;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/rlc/receiver/handler/CertHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/rlc/receiver/handler/CertHandler;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/rlc/receiver/handler/CertHandler;->response:Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler$RESPONSE;

    return-void
.end method

.method private static getCertBody(Landroid/content/Context;)Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;
    .locals 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-static {p0}, Lcom/samsung/android/rlc/util/RLCUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/rlc/util/RLCUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/rlc/util/RLCUtil;->getRLCID()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    new-instance v4, Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;

    invoke-direct {v4}, Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;-><init>()V

    if-nez v0, :cond_2

    sget-object v0, Lcom/samsung/android/rlc/receiver/handler/CertHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "There is RLC ID in secure area"

    invoke-static {v0, v1}, Lcom/samsung/android/rlc/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;->setRlcId(Ljava/lang/String;)V

    :cond_0
    :goto_1
    return-object v4

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/samsung/android/rlc/receiver/handler/CertHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Use device id instead of RLC"

    invoke-static {v0, v3}, Lcom/samsung/android/rlc/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-static {p0}, Lcom/samsung/android/rlc/util/DeviceUtil;->getDualSIMDeviceID(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    :cond_3
    :goto_2
    if-eqz v0, :cond_0

    array-length v1, v0

    if-le v1, v2, :cond_0

    aget-object v1, v0, v2

    if-eqz v1, :cond_0

    aget-object v0, v0, v2

    invoke-virtual {v4, v0}, Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;->setImei2(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    aget-object v3, v0, v1

    if-eqz v3, :cond_3

    aget-object v1, v0, v1

    invoke-virtual {v4, v1}, Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;->setImei(Ljava/lang/String;)V

    goto :goto_2
.end method


# virtual methods
.method public encryptData(Landroid/content/Context;Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;)Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;
    .locals 5

    const/4 v4, 0x0

    sget-object v0, Lcom/samsung/android/rlc/receiver/handler/CertHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "[getEncrytedData]"

    invoke-static {v0, v1}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/samsung/android/rlc/receiver/handler/CertHandler;->getCertBody(Landroid/content/Context;)Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;

    move-result-object v0

    const-string/jumbo v1, "https://%s/dm/v1/dev/getCert"

    invoke-static {p1, v1}, Lcom/samsung/android/rlc/util/PushUtil;->getDMURL(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler;->httpRequest(Landroid/content/Context;Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;Ljava/lang/String;)Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler$RESPONSE;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/rlc/receiver/handler/CertHandler;->response:Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler$RESPONSE;

    iget-object v0, p0, Lcom/samsung/android/rlc/receiver/handler/CertHandler;->response:Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler$RESPONSE;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-object v4

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/rlc/receiver/handler/CertHandler;->response:Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler$RESPONSE;

    invoke-virtual {v0}, Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler$RESPONSE;->getHttpStatusCode()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/samsung/android/rlc/receiver/handler/CertHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "To receive cert data success"

    invoke-static {v0, v1}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/rlc/receiver/handler/CertHandler;->response:Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler$RESPONSE;

    invoke-virtual {v0}, Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler$RESPONSE;->getResponseBean()Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->getCertByte()[B

    move-result-object v0

    :try_start_0
    invoke-static {p1}, Lcom/samsung/android/rlc/util/RLCUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/rlc/util/RLCUtil;

    move-result-object v1

    invoke-virtual {p2}, Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;->getData()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/rlc/util/RLCUtil;->encryptData([B[B)[B

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p2, v1}, Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;->setDataByte([B)V

    iget-object v1, p0, Lcom/samsung/android/rlc/receiver/handler/CertHandler;->response:Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler$RESPONSE;

    invoke-virtual {v1}, Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler$RESPONSE;->getResponseBean()Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->getImei()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    :goto_1
    return-object p2

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/rlc/receiver/handler/CertHandler;->response:Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler$RESPONSE;

    invoke-virtual {v1}, Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler$RESPONSE;->getResponseBean()Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->getImei()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;->setImei(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/samsung/android/rlc/util/RLCUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/rlc/util/RLCUtil;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/rlc/receiver/handler/CertHandler;->response:Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler$RESPONSE;

    invoke-virtual {v2}, Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler$RESPONSE;->getResponseBean()Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->getImei()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/rlc/receiver/handler/CertHandler;->response:Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler$RESPONSE;

    invoke-virtual {v3}, Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler$RESPONSE;->getResponseBean()Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->getImei()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/rlc/util/HMACUtil;->encryption(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/rlc/util/RLCUtil;->encryptData([B[B)[B

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;->setDataByte([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getResponse()Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler$RESPONSE;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/rlc/receiver/handler/CertHandler;->response:Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler$RESPONSE;

    return-object v0
.end method

.method public setResponse(Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler$RESPONSE;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/rlc/receiver/handler/CertHandler;->response:Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler$RESPONSE;

    return-void
.end method
