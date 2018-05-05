.class public Lcom/samsung/android/settings/networklock/NetworkLockUtils;
.super Ljava/lang/Object;
.source "NetworkLockUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/networklock/NetworkLockUtils$1;,
        Lcom/samsung/android/settings/networklock/NetworkLockUtils$2;,
        Lcom/samsung/android/settings/networklock/NetworkLockUtils$3;,
        Lcom/samsung/android/settings/networklock/NetworkLockUtils$4;,
        Lcom/samsung/android/settings/networklock/NetworkLockUtils$OnLockStatusListener;
    }
.end annotation


# static fields
.field private static isSimLocked:Z


# instance fields
.field private final CMD:[B

.field private final EVENT_PERSO_GET_LOCK_STATUS_DONE:I

.field private mContext:Landroid/content/Context;

.field private mFactoryPhone:Lcom/samsung/android/sec_platform_library/FactoryPhone;

.field private mHandler:Landroid/os/Handler;

.field private mLockStatusListener:Lcom/samsung/android/settings/networklock/NetworkLockUtils$OnLockStatusListener;

.field public mNoResponseTimer:Landroid/os/CountDownTimer;

.field private mRilHandler:Landroid/os/Handler;

.field private mSecPhoneServiceConnection:Landroid/content/ServiceConnection;

.field private mServiceMessenger:Landroid/os/Messenger;

.field private mSvcModeMessenger:Landroid/os/Messenger;

.field private mWaitingMessage:I


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/android/settings/networklock/NetworkLockUtils;->isSimLocked:Z

    return v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/networklock/NetworkLockUtils;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/networklock/NetworkLockUtils;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/networklock/NetworkLockUtils;)Lcom/samsung/android/sec_platform_library/FactoryPhone;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/networklock/NetworkLockUtils;->mFactoryPhone:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    return-object v0
.end method

.method static synthetic -get3(Lcom/samsung/android/settings/networklock/NetworkLockUtils;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/networklock/NetworkLockUtils;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get4(Lcom/samsung/android/settings/networklock/NetworkLockUtils;)Lcom/samsung/android/settings/networklock/NetworkLockUtils$OnLockStatusListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/networklock/NetworkLockUtils;->mLockStatusListener:Lcom/samsung/android/settings/networklock/NetworkLockUtils$OnLockStatusListener;

    return-object v0
.end method

.method static synthetic -get5(Lcom/samsung/android/settings/networklock/NetworkLockUtils;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/networklock/NetworkLockUtils;->mWaitingMessage:I

    return v0
.end method

.method static synthetic -set0(Z)Z
    .locals 0

    sput-boolean p0, Lcom/samsung/android/settings/networklock/NetworkLockUtils;->isSimLocked:Z

    return p0
.end method

.method static synthetic -set1(Lcom/samsung/android/settings/networklock/NetworkLockUtils;Lcom/samsung/android/sec_platform_library/FactoryPhone;)Lcom/samsung/android/sec_platform_library/FactoryPhone;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/networklock/NetworkLockUtils;->mFactoryPhone:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    return-object p1
.end method

.method static synthetic -set2(Lcom/samsung/android/settings/networklock/NetworkLockUtils;Lcom/samsung/android/settings/networklock/NetworkLockUtils$OnLockStatusListener;)Lcom/samsung/android/settings/networklock/NetworkLockUtils$OnLockStatusListener;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/networklock/NetworkLockUtils;->mLockStatusListener:Lcom/samsung/android/settings/networklock/NetworkLockUtils$OnLockStatusListener;

    return-object p1
.end method

.method static synthetic -set3(Lcom/samsung/android/settings/networklock/NetworkLockUtils;Landroid/os/Messenger;)Landroid/os/Messenger;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/networklock/NetworkLockUtils;->mServiceMessenger:Landroid/os/Messenger;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/networklock/NetworkLockUtils;)Z
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/settings/networklock/NetworkLockUtils;->getOemSimLock()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/samsung/android/settings/networklock/NetworkLockUtils;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/networklock/NetworkLockUtils;->handleGetSimLockResponse(Landroid/os/Message;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/samsung/android/settings/networklock/NetworkLockUtils;->isSimLocked:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/samsung/android/settings/networklock/NetworkLockUtils;->CMD:[B

    iput-object v1, p0, Lcom/samsung/android/settings/networklock/NetworkLockUtils;->mFactoryPhone:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    const/16 v0, 0x64

    iput v0, p0, Lcom/samsung/android/settings/networklock/NetworkLockUtils;->EVENT_PERSO_GET_LOCK_STATUS_DONE:I

    new-instance v0, Lcom/samsung/android/settings/networklock/NetworkLockUtils$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/networklock/NetworkLockUtils$1;-><init>(Lcom/samsung/android/settings/networklock/NetworkLockUtils;)V

    iput-object v0, p0, Lcom/samsung/android/settings/networklock/NetworkLockUtils;->mRilHandler:Landroid/os/Handler;

    iput-object v1, p0, Lcom/samsung/android/settings/networklock/NetworkLockUtils;->mLockStatusListener:Lcom/samsung/android/settings/networklock/NetworkLockUtils$OnLockStatusListener;

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/settings/networklock/NetworkLockUtils;->mWaitingMessage:I

    iput-object v1, p0, Lcom/samsung/android/settings/networklock/NetworkLockUtils;->mServiceMessenger:Landroid/os/Messenger;

    new-instance v0, Lcom/samsung/android/settings/networklock/NetworkLockUtils$2;

    const-wide/16 v2, 0x4e20

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/settings/networklock/NetworkLockUtils$2;-><init>(Lcom/samsung/android/settings/networklock/NetworkLockUtils;JJ)V

    iput-object v0, p0, Lcom/samsung/android/settings/networklock/NetworkLockUtils;->mNoResponseTimer:Landroid/os/CountDownTimer;

    new-instance v0, Lcom/samsung/android/settings/networklock/NetworkLockUtils$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/networklock/NetworkLockUtils$3;-><init>(Lcom/samsung/android/settings/networklock/NetworkLockUtils;)V

    iput-object v0, p0, Lcom/samsung/android/settings/networklock/NetworkLockUtils;->mHandler:Landroid/os/Handler;

    new-instance v0, Landroid/os/Messenger;

    iget-object v1, p0, Lcom/samsung/android/settings/networklock/NetworkLockUtils;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/networklock/NetworkLockUtils;->mSvcModeMessenger:Landroid/os/Messenger;

    new-instance v0, Lcom/samsung/android/settings/networklock/NetworkLockUtils$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/networklock/NetworkLockUtils$4;-><init>(Lcom/samsung/android/settings/networklock/NetworkLockUtils;)V

    iput-object v0, p0, Lcom/samsung/android/settings/networklock/NetworkLockUtils;->mSecPhoneServiceConnection:Landroid/content/ServiceConnection;

    iput-object p1, p0, Lcom/samsung/android/settings/networklock/NetworkLockUtils;->mContext:Landroid/content/Context;

    return-void

    :array_0
    .array-data 1
        0x4t
        0x2t
        0x0t
        0x4t
    .end array-data
.end method

.method private getOemSimLock()Z
    .locals 6

    const-string/jumbo v3, "network_lock"

    const-string/jumbo v4, "getOemSimLock"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/16 v3, 0x51

    :try_start_0
    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/16 v3, 0x42

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    const/16 v4, 0x6d

    const/16 v5, 0x14

    invoke-direct {p0, v3, v4, v5}, Lcom/samsung/android/settings/networklock/NetworkLockUtils;->sendRilRequest([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    const/4 v3, 0x1

    return v3

    :catch_0
    move-exception v2

    const-string/jumbo v3, "network_lock"

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v2

    :try_start_2
    const-string/jumbo v3, "network_lock"

    const-string/jumbo v4, "getOemSimLock exception occured during operation"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v3, 0x0

    :try_start_3
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    :goto_1
    return v3

    :catch_2
    move-exception v2

    const-string/jumbo v4, "network_lock"

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catchall_0
    move-exception v3

    :try_start_4
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    :goto_2
    throw v3

    :catch_3
    move-exception v2

    const-string/jumbo v4, "network_lock"

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private handleGetSimLockResponse(Landroid/os/Message;)V
    .locals 5

    const/4 v4, 0x0

    const-string/jumbo v1, "network_lock"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "handleGetSimLockResponse"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "response"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_0

    array-length v1, v0

    if-nez v1, :cond_1

    :cond_0
    const-string/jumbo v1, "network_lock"

    const-string/jumbo v2, "response is null or empty"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    aget-byte v1, v0, v4

    if-nez v1, :cond_2

    const-string/jumbo v1, "sprnetwork_lock"

    const-string/jumbo v2, "checklock lock: "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/settings/networklock/NetworkLockUtils;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/settings/networklock/NetworkLockUtils;->setSPRNetworkLocked(Landroid/content/Context;)V

    :goto_0
    const-string/jumbo v1, "network_lock"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "handleGetSimLockResponse buf.length "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " buf is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    const-string/jumbo v1, "sprnetwork_lock"

    const-string/jumbo v2, "checklock unlock: "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/settings/networklock/NetworkLockUtils;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/settings/networklock/NetworkLockUtils;->setSPRNetworkUnLocked(Landroid/content/Context;)V

    goto :goto_0
.end method

.method private invokeOemRilRequestRaw([BLandroid/os/Message;)V
    .locals 4

    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "request"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    invoke-virtual {p2, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v2, p0, Lcom/samsung/android/settings/networklock/NetworkLockUtils;->mSvcModeMessenger:Landroid/os/Messenger;

    iput-object v2, p2, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/settings/networklock/NetworkLockUtils;->mServiceMessenger:Landroid/os/Messenger;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/networklock/NetworkLockUtils;->mServiceMessenger:Landroid/os/Messenger;

    invoke-virtual {v2, p2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v2, "network_lock"

    const-string/jumbo v3, "mServiceMessenger is null. Do nothing."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static isSPRNetworkUnLocked(Landroid/content/Context;)Z
    .locals 4

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "spr_network_lock"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string/jumbo v1, "network_lock"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isSPRNetworkUnLocked: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isVzwNetworkUnLocked(Landroid/content/Context;)Z
    .locals 4

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "vzw_network_lock"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string/jumbo v1, "network_lock"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isVzwNetworkUnLocked: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private sendRilRequest([BII)V
    .locals 3

    const-string/jumbo v0, "network_lock"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendRilRequest invokeOemRilRequestRaw message "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput p2, p0, Lcom/samsung/android/settings/networklock/NetworkLockUtils;->mWaitingMessage:I

    iget-object v0, p0, Lcom/samsung/android/settings/networklock/NetworkLockUtils;->mNoResponseTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    iget-object v0, p0, Lcom/samsung/android/settings/networklock/NetworkLockUtils;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/settings/networklock/NetworkLockUtils;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    return-void
.end method

.method public static setSPRNetworkLocked(Landroid/content/Context;)V
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "spr_network_lock"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string/jumbo v0, "network_lock"

    const-string/jumbo v1, "setSPRNetworkLocked to 0"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static setSPRNetworkUnLocked(Landroid/content/Context;)V
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "spr_network_lock"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string/jumbo v0, "network_lock"

    const-string/jumbo v1, "setSPRNetworkUnLocked to 1"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static setVzwNetworkUnLocked(Landroid/content/Context;)V
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "vzw_network_lock"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string/jumbo v0, "network_lock"

    const-string/jumbo v1, "setVzwNetworkUnLocked to 1"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public checkLockStatus()V
    .locals 5

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/settings/networklock/NetworkLockUtils;->mFactoryPhone:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    if-nez v1, :cond_0

    new-instance v1, Lcom/samsung/android/sec_platform_library/FactoryPhone;

    iget-object v2, p0, Lcom/samsung/android/settings/networklock/NetworkLockUtils;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/samsung/android/sec_platform_library/FactoryPhone;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/settings/networklock/NetworkLockUtils;->mFactoryPhone:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/networklock/NetworkLockUtils;->mFactoryPhone:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    iget-object v2, p0, Lcom/samsung/android/settings/networklock/NetworkLockUtils;->CMD:[B

    iget-object v3, p0, Lcom/samsung/android/settings/networklock/NetworkLockUtils;->mRilHandler:Landroid/os/Handler;

    const/16 v4, 0x64

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/sec_platform_library/FactoryPhone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0
.end method

.method public checkLockStatus(Lcom/samsung/android/settings/networklock/NetworkLockUtils$OnLockStatusListener;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/networklock/NetworkLockUtils;->mLockStatusListener:Lcom/samsung/android/settings/networklock/NetworkLockUtils$OnLockStatusListener;

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/samsung/android/settings/networklock/NetworkLockUtils;->mLockStatusListener:Lcom/samsung/android/settings/networklock/NetworkLockUtils$OnLockStatusListener;

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/networklock/NetworkLockUtils;->checkLockStatus()V

    return-void
.end method

.method public getSPROemSimLock(Landroid/content/Context;)V
    .locals 3

    const-string/jumbo v1, "network_lock"

    const-string/jumbo v2, "getSPROemSimLock()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "com.sec.phone"

    const-string/jumbo v2, "com.sec.phone.SecPhoneService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/android/settings/networklock/NetworkLockUtils;->mSecPhoneServiceConnection:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method
