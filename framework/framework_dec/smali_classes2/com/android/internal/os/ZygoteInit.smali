.class public Lcom/android/internal/os/ZygoteInit;
.super Ljava/lang/Object;
.source "ZygoteInit.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/ZygoteInit$MethodAndArgsCaller;
    }
.end annotation


# static fields
.field private static final ABI_LIST_ARG:Ljava/lang/String; = "--abi-list="

.field private static final ANDROID_SOCKET_PREFIX:Ljava/lang/String; = "ANDROID_SOCKET_"

.field private static final INITIAL_NUMBER_THREAD1:I = 0x378

.field private static final INITIAL_NUMBER_THREAD2:I = 0x154

.field private static final INITIAL_NUMBER_THREAD3:I = 0x4c9

.field private static final LOG_BOOT_PROGRESS_PRELOAD_END:I = 0xbd6

.field private static final LOG_BOOT_PROGRESS_PRELOAD_START:I = 0xbcc

.field private static final PARALLEL_LOAD:Z = true

.field private static final PRELOADED_CLASSES:Ljava/lang/String; = "/system/etc/preloaded-classes"

.field private static final PRELOAD_GC_THRESHOLD:I

.field public static final PRELOAD_RESOURCES:Z = true

.field private static final PROPERTY_DISABLE_OPENGL_PRELOADING:Ljava/lang/String; = "ro.zygote.disable_gl_preload"

.field private static final PROPERTY_NC_THREAD1:Ljava/lang/String; = "persist.sys.clssprld1"

.field private static final PROPERTY_NC_THREAD2:Ljava/lang/String; = "persist.sys.clssprld2"

.field private static final PROPERTY_NC_THREAD3:Ljava/lang/String; = "persist.sys.clssprld3"

.field private static final PROPERTY_RUNNING_IN_CONTAINER:Ljava/lang/String; = "ro.boot.container"

.field private static final ROOT_GID:I = 0x0

.field private static final ROOT_UID:I = 0x0

.field private static final SOCKET_NAME_ARG:Ljava/lang/String; = "--socket-name="

.field private static final TAG:Ljava/lang/String; = "Zygote"

.field private static final UNPRIVILEGED_GID:I = 0x270f

.field private static final UNPRIVILEGED_UID:I = 0x270f

.field private static final USE_DYNAMIC_BALANCE:Z = true

.field public static debug_flag:Z = false

.field private static endPreloadClsThread1:I = 0x0

.field private static endPreloadClsThread2:I = 0x0

.field private static endPreloadClsThread3:I = 0x0

.field private static endPreloadClsThread4:I = 0x0

.field private static final heapgrowthlimit:Ljava/lang/String; = "64m"

.field static isParallelThreadRunning:Z

.field static isPreloadComplete:Z

.field private static mResources:Landroid/content/res/Resources;

.field private static numberOfPreloadClasses:I

.field private static numberOfPreloadClassesforThread1:I

.field private static numberOfPreloadClassesforThread2:I

.field private static numberOfPreloadClassesforThread3:I

.field public static parallelPCThread1running:Z

.field public static parallelPCThread2running:Z

.field public static parallelPCThread3running:Z

.field public static postLoadClasses:[Ljava/lang/String;

.field public static primaryZygoteThreadRunning:Z

.field private static sServerSocket:Landroid/net/LocalServerSocket;

.field private static startPreloadClsThread1:I

.field private static startPreloadClsThread2:I

.field private static startPreloadClsThread3:I

.field private static startPreloadClsThread4:I

.field private static thread1time:I

.field private static thread2time:I

.field private static thread3time:I

.field private static threadMtime:I


# direct methods
.method static synthetic -get0()I
    .locals 1

    sget v0, Lcom/android/internal/os/ZygoteInit;->PRELOAD_GC_THRESHOLD:I

    return v0
.end method

.method static synthetic -get1()I
    .locals 1

    sget v0, Lcom/android/internal/os/ZygoteInit;->endPreloadClsThread3:I

    return v0
.end method

.method static synthetic -get2()I
    .locals 1

    sget v0, Lcom/android/internal/os/ZygoteInit;->numberOfPreloadClassesforThread1:I

    return v0
.end method

.method static synthetic -get3()I
    .locals 1

    sget v0, Lcom/android/internal/os/ZygoteInit;->numberOfPreloadClassesforThread2:I

    return v0
.end method

.method static synthetic -get4()I
    .locals 1

    sget v0, Lcom/android/internal/os/ZygoteInit;->numberOfPreloadClassesforThread3:I

    return v0
.end method

.method static synthetic -get5()I
    .locals 1

    sget v0, Lcom/android/internal/os/ZygoteInit;->startPreloadClsThread3:I

    return v0
.end method

.method static synthetic -set0(I)I
    .locals 0

    sput p0, Lcom/android/internal/os/ZygoteInit;->thread1time:I

    return p0
.end method

.method static synthetic -set1(I)I
    .locals 0

    sput p0, Lcom/android/internal/os/ZygoteInit;->thread2time:I

    return p0
.end method

.method static synthetic -set2(I)I
    .locals 0

    sput p0, Lcom/android/internal/os/ZygoteInit;->thread3time:I

    return p0
.end method

.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x0

    const-string/jumbo v0, "64m"

    const-string/jumbo v1, "64m"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    mul-int/lit16 v0, v0, 0x400

    mul-int/lit16 v0, v0, 0x400

    div-int/lit8 v0, v0, 0x2

    sput v0, Lcom/android/internal/os/ZygoteInit;->PRELOAD_GC_THRESHOLD:I

    sput-boolean v3, Lcom/android/internal/os/ZygoteInit;->isParallelThreadRunning:Z

    sput-boolean v3, Lcom/android/internal/os/ZygoteInit;->isPreloadComplete:Z

    sput-boolean v3, Lcom/android/internal/os/ZygoteInit;->primaryZygoteThreadRunning:Z

    sput-boolean v3, Lcom/android/internal/os/ZygoteInit;->debug_flag:Z

    sput-boolean v3, Lcom/android/internal/os/ZygoteInit;->parallelPCThread1running:Z

    sput-boolean v3, Lcom/android/internal/os/ZygoteInit;->parallelPCThread2running:Z

    sput-boolean v3, Lcom/android/internal/os/ZygoteInit;->parallelPCThread3running:Z

    sput v3, Lcom/android/internal/os/ZygoteInit;->numberOfPreloadClasses:I

    const/16 v0, 0x378

    sput v0, Lcom/android/internal/os/ZygoteInit;->numberOfPreloadClassesforThread1:I

    const/16 v0, 0x154

    sput v0, Lcom/android/internal/os/ZygoteInit;->numberOfPreloadClassesforThread2:I

    const/16 v0, 0x4c9

    sput v0, Lcom/android/internal/os/ZygoteInit;->numberOfPreloadClassesforThread3:I

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "android.database.CursorWindow"

    aput-object v1, v0, v3

    const-string/jumbo v1, "android.database.CursorWindow$1"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/internal/os/ZygoteInit;->postLoadClasses:[Ljava/lang/String;

    sput v3, Lcom/android/internal/os/ZygoteInit;->thread1time:I

    sput v3, Lcom/android/internal/os/ZygoteInit;->thread2time:I

    sput v3, Lcom/android/internal/os/ZygoteInit;->thread3time:I

    sput v3, Lcom/android/internal/os/ZygoteInit;->threadMtime:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static acceptCommandPeer(Ljava/lang/String;)Lcom/android/internal/os/ZygoteConnection;
    .locals 3

    :try_start_0
    new-instance v1, Lcom/android/internal/os/ZygoteConnection;

    sget-object v2, Lcom/android/internal/os/ZygoteInit;->sServerSocket:Landroid/net/LocalServerSocket;

    invoke-virtual {v2}, Landroid/net/LocalServerSocket;->accept()Landroid/net/LocalSocket;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Lcom/android/internal/os/ZygoteConnection;-><init>(Landroid/net/LocalSocket;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "IOException during accept()"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static adjustClassPreloadBalance()V
    .locals 5

    sget v2, Lcom/android/internal/os/ZygoteInit;->thread1time:I

    if-lez v2, :cond_1

    sget v2, Lcom/android/internal/os/ZygoteInit;->thread2time:I

    if-lez v2, :cond_1

    sget v2, Lcom/android/internal/os/ZygoteInit;->thread3time:I

    if-lez v2, :cond_1

    sget v2, Lcom/android/internal/os/ZygoteInit;->threadMtime:I

    if-lez v2, :cond_1

    sget v2, Lcom/android/internal/os/ZygoteInit;->thread1time:I

    sget v3, Lcom/android/internal/os/ZygoteInit;->thread2time:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    sget v2, Lcom/android/internal/os/ZygoteInit;->thread3time:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    sget v2, Lcom/android/internal/os/ZygoteInit;->threadMtime:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    sget v2, Lcom/android/internal/os/ZygoteInit;->thread1time:I

    sget v3, Lcom/android/internal/os/ZygoteInit;->thread2time:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    sget v2, Lcom/android/internal/os/ZygoteInit;->thread3time:I

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    sget v2, Lcom/android/internal/os/ZygoteInit;->threadMtime:I

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    sub-int v2, v0, v1

    const/16 v3, 0x64

    if-le v2, v3, :cond_1

    const-string/jumbo v2, "Zygote"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, " adjust "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget v2, Lcom/android/internal/os/ZygoteInit;->thread1time:I

    if-ne v0, v2, :cond_2

    const-string/jumbo v2, "persist.sys.clssprld1"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget v4, Lcom/android/internal/os/ZygoteInit;->numberOfPreloadClassesforThread1:I

    add-int/lit8 v4, v4, -0x2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    sget v2, Lcom/android/internal/os/ZygoteInit;->thread1time:I

    if-ne v1, v2, :cond_4

    const-string/jumbo v2, "persist.sys.clssprld1"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget v4, Lcom/android/internal/os/ZygoteInit;->numberOfPreloadClassesforThread1:I

    add-int/lit8 v4, v4, 0x2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    sget v2, Lcom/android/internal/os/ZygoteInit;->thread2time:I

    if-ne v0, v2, :cond_3

    const-string/jumbo v2, "persist.sys.clssprld2"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget v4, Lcom/android/internal/os/ZygoteInit;->numberOfPreloadClassesforThread2:I

    add-int/lit8 v4, v4, -0x2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    sget v2, Lcom/android/internal/os/ZygoteInit;->thread3time:I

    if-ne v0, v2, :cond_0

    const-string/jumbo v2, "persist.sys.clssprld3"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget v4, Lcom/android/internal/os/ZygoteInit;->numberOfPreloadClassesforThread3:I

    add-int/lit8 v4, v4, -0x2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    sget v2, Lcom/android/internal/os/ZygoteInit;->thread2time:I

    if-ne v1, v2, :cond_5

    const-string/jumbo v2, "persist.sys.clssprld2"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget v4, Lcom/android/internal/os/ZygoteInit;->numberOfPreloadClassesforThread2:I

    add-int/lit8 v4, v4, 0x2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    sget v2, Lcom/android/internal/os/ZygoteInit;->thread3time:I

    if-ne v1, v2, :cond_1

    const-string/jumbo v2, "persist.sys.clssprld3"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget v4, Lcom/android/internal/os/ZygoteInit;->numberOfPreloadClassesforThread3:I

    add-int/lit8 v4, v4, 0x2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method private static beginIcuCachePinning()V
    .locals 5

    const/4 v2, 0x0

    const-string/jumbo v3, "Zygote"

    const-string/jumbo v4, "Installing ICU cache reference pinning..."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v3, Landroid/icu/impl/CacheValue$Strength;->STRONG:Landroid/icu/impl/CacheValue$Strength;

    invoke-static {v3}, Landroid/icu/impl/CacheValue;->setStrength(Landroid/icu/impl/CacheValue$Strength;)V

    const-string/jumbo v3, "Zygote"

    const-string/jumbo v4, "Preloading ICU data..."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x3

    new-array v0, v3, [Landroid/icu/util/ULocale;

    sget-object v3, Landroid/icu/util/ULocale;->ROOT:Landroid/icu/util/ULocale;

    aput-object v3, v0, v2

    sget-object v3, Landroid/icu/util/ULocale;->US:Landroid/icu/util/ULocale;

    const/4 v4, 0x1

    aput-object v3, v0, v4

    invoke-static {}, Landroid/icu/util/ULocale;->getDefault()Landroid/icu/util/ULocale;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v0, v4

    array-length v3, v0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    new-instance v4, Landroid/icu/text/DecimalFormatSymbols;

    invoke-direct {v4, v1}, Landroid/icu/text/DecimalFormatSymbols;-><init>(Landroid/icu/util/ULocale;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static closeServerSocket()V
    .locals 6

    const/4 v5, 0x0

    :try_start_0
    sget-object v3, Lcom/android/internal/os/ZygoteInit;->sServerSocket:Landroid/net/LocalServerSocket;

    if-eqz v3, :cond_0

    sget-object v3, Lcom/android/internal/os/ZygoteInit;->sServerSocket:Landroid/net/LocalServerSocket;

    invoke-virtual {v3}, Landroid/net/LocalServerSocket;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    sget-object v3, Lcom/android/internal/os/ZygoteInit;->sServerSocket:Landroid/net/LocalServerSocket;

    invoke-virtual {v3}, Landroid/net/LocalServerSocket;->close()V

    if-eqz v2, :cond_0

    invoke-static {v2}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    sput-object v5, Lcom/android/internal/os/ZygoteInit;->sServerSocket:Landroid/net/LocalServerSocket;

    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v3, "Zygote"

    const-string/jumbo v4, "Zygote:  error closing descriptor"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception v1

    const-string/jumbo v3, "Zygote"

    const-string/jumbo v4, "Zygote:  error closing sockets"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static createSystemServerClassLoader(Ljava/lang/String;I)Ldalvik/system/PathClassLoader;
    .locals 6

    const-string/jumbo v0, "java.library.path"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    const/4 v2, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move v4, p1

    invoke-static/range {v0 .. v5}, Lcom/android/internal/os/PathClassLoaderFactory;->createClassLoader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;IZ)Ldalvik/system/PathClassLoader;

    move-result-object v0

    return-object v0
.end method

.method private static endIcuCachePinning()V
    .locals 2

    sget-object v0, Landroid/icu/impl/CacheValue$Strength;->SOFT:Landroid/icu/impl/CacheValue$Strength;

    invoke-static {v0}, Landroid/icu/impl/CacheValue;->setStrength(Landroid/icu/impl/CacheValue$Strength;)V

    const-string/jumbo v0, "Zygote"

    const-string/jumbo v1, "Uninstalled ICU cache reference pinning..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static gcAndFinalize()V
    .locals 1

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->gc()V

    invoke-virtual {v0}, Ldalvik/system/VMRuntime;->runFinalizationSync()V

    invoke-static {}, Ljava/lang/System;->gc()V

    return-void
.end method

.method static getServerSocketFileDescriptor()Ljava/io/FileDescriptor;
    .locals 1

    sget-object v0, Lcom/android/internal/os/ZygoteInit;->sServerSocket:Landroid/net/LocalServerSocket;

    invoke-virtual {v0}, Landroid/net/LocalServerSocket;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method private static handleSystemServerProcess(Lcom/android/internal/os/ZygoteConnection$Arguments;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/os/ZygoteInit$MethodAndArgsCaller;
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->closeServerSocket()V

    sget v0, Landroid/system/OsConstants;->S_IRWXG:I

    sget v1, Landroid/system/OsConstants;->S_IRWXO:I

    or-int/2addr v0, v1

    invoke-static {v0}, Landroid/system/Os;->umask(I)I

    iget-object v0, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->niceName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->niceName:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/Process;->setArgV0(Ljava/lang/String;)V

    :cond_0
    const-string/jumbo v0, "SYSTEMSERVERCLASSPATH"

    invoke-static {v0}, Landroid/system/Os;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_1

    invoke-static {v8}, Lcom/android/internal/os/ZygoteInit;->performSystemServerDexOpt(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->invokeWith:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v5, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->remainingArgs:[Ljava/lang/String;

    if-eqz v8, :cond_2

    array-length v0, v5

    add-int/lit8 v0, v0, 0x2

    new-array v6, v0, [Ljava/lang/String;

    const-string/jumbo v0, "-cp"

    aput-object v0, v6, v3

    const/4 v0, 0x1

    aput-object v8, v6, v0

    iget-object v0, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->remainingArgs:[Ljava/lang/String;

    iget-object v1, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->remainingArgs:[Ljava/lang/String;

    array-length v1, v1

    const/4 v2, 0x2

    invoke-static {v0, v3, v6, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    iget-object v0, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->invokeWith:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->niceName:Ljava/lang/String;

    iget v2, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->targetSdkVersion:I

    invoke-static {}, Ldalvik/system/VMRuntime;->getCurrentInstructionSet()Ljava/lang/String;

    move-result-object v3

    invoke-static/range {v0 .. v5}, Lcom/android/internal/os/WrapperInit;->execApplication(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/io/FileDescriptor;[Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_3
    const/4 v7, 0x0

    if-eqz v8, :cond_4

    iget v0, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->targetSdkVersion:I

    invoke-static {v8, v0}, Lcom/android/internal/os/ZygoteInit;->createSystemServerClassLoader(Ljava/lang/String;I)Ldalvik/system/PathClassLoader;

    move-result-object v7

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    :cond_4
    iget v0, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->targetSdkVersion:I

    iget-object v1, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->remainingArgs:[Ljava/lang/String;

    invoke-static {v0, v1, v7}, Lcom/android/internal/os/RuntimeInit;->zygoteInit(I[Ljava/lang/String;Ljava/lang/ClassLoader;)V

    goto :goto_0
.end method

.method private static hasSecondZygote(Ljava/lang/String;)Z
    .locals 1

    const-string/jumbo v0, "ro.product.cpu.abilist"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 10

    invoke-static {}, Lcom/android/internal/os/RuntimeInit;->__init__UncaughtHandler()V

    :try_start_0
    const-string/jumbo v6, "ZygoteInit"

    const-wide/16 v8, 0x4000

    invoke-static {v8, v9, v6}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    invoke-static {}, Lcom/android/internal/os/RuntimeInit;->enableDdms()V

    invoke-static {}, Lcom/android/internal/os/SamplingProfilerIntegration;->start()V

    const/4 v5, 0x0

    const-string/jumbo v4, "zygote"

    const/4 v0, 0x0

    const/4 v3, 0x1

    :goto_0
    array-length v6, p0

    if-ge v3, v6, :cond_4

    const-string/jumbo v6, "start-system-server"

    aget-object v7, p0, v3

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    sget-boolean v6, Lcom/android/internal/os/ZygoteInit;->debug_flag:Z

    if-eqz v6, :cond_0

    const-string/jumbo v6, "Zygote"

    const-string/jumbo v7, " Zygote Main Thread : startSystemServer = true & primaryZygoteThreadRunning = true "

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v5, 0x1

    const/4 v6, 0x1

    sput-boolean v6, Lcom/android/internal/os/ZygoteInit;->primaryZygoteThreadRunning:Z

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    aget-object v6, p0, v3

    const-string/jumbo v7, "--abi-list="

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    aget-object v6, p0, v3

    const-string/jumbo v7, "--abi-list="

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    aget-object v6, p0, v3

    const-string/jumbo v7, "--socket-name="

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    aget-object v6, p0, v3

    const-string/jumbo v7, "--socket-name="

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_3
    new-instance v6, Ljava/lang/RuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Unknown command line argument: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, p0, v3

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_0
    .catch Lcom/android/internal/os/ZygoteInit$MethodAndArgsCaller; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lcom/android/internal/os/ZygoteInit$MethodAndArgsCaller;->run()V

    :goto_2
    return-void

    :cond_4
    if-nez v0, :cond_5

    :try_start_1
    new-instance v6, Ljava/lang/RuntimeException;

    const-string/jumbo v7, "No ABI list supplied."

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_1
    .catch Lcom/android/internal/os/ZygoteInit$MethodAndArgsCaller; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    move-exception v2

    const-string/jumbo v6, "Zygote"

    const-string/jumbo v7, "Zygote died with exception"

    invoke-static {v6, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->closeServerSocket()V

    throw v2

    :cond_5
    :try_start_2
    sget-boolean v6, Lcom/android/internal/os/ZygoteInit;->primaryZygoteThreadRunning:Z

    if-eqz v6, :cond_6

    const-string/jumbo v6, "Zygote"

    const-string/jumbo v7, " Zygote Main Thread : Setting priority to Urgent Audio for Zygote64"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v6, -0x13

    invoke-static {v6}, Landroid/os/Process;->setThreadPriority(I)V

    :cond_6
    invoke-static {v4}, Lcom/android/internal/os/ZygoteInit;->registerZygoteSocket(Ljava/lang/String;)V

    const-string/jumbo v6, "ZygotePreload"

    const-wide/16 v8, 0x4000

    invoke-static {v8, v9, v6}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    const/16 v8, 0xbcc

    invoke-static {v8, v6, v7}, Landroid/util/EventLog;->writeEvent(IJ)I

    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->preload()V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    const/16 v8, 0xbd6

    invoke-static {v8, v6, v7}, Landroid/util/EventLog;->writeEvent(IJ)I

    const-wide/16 v6, 0x4000

    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    invoke-static {}, Lcom/android/internal/os/SamplingProfilerIntegration;->writeZygoteSnapshot()V

    const-string/jumbo v6, "PostZygoteInitGC"

    const-wide/16 v8, 0x4000

    invoke-static {v8, v9, v6}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->gcAndFinalize()V

    const-wide/16 v6, 0x4000

    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    const-wide/16 v6, 0x4000

    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    const/4 v6, 0x0

    invoke-static {v6}, Landroid/os/Trace;->setTracingEnabled(Z)V

    invoke-static {}, Lcom/android/internal/os/Zygote;->nativeUnmountStorageOnInit()V

    const/4 v6, 0x0

    invoke-static {v6}, Landroid/os/Process;->setThreadPriority(I)V

    if-eqz v5, :cond_7

    invoke-static {v0, v4}, Lcom/android/internal/os/ZygoteInit;->startSystemServer(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_7
    const-string/jumbo v6, "Zygote"

    const-string/jumbo v7, "Accepting command socket connections"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Lcom/android/internal/os/ZygoteInit;->runSelectLoop(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->closeServerSocket()V
    :try_end_2
    .catch Lcom/android/internal/os/ZygoteInit$MethodAndArgsCaller; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_2
.end method

.method static parallelpreloadClasses()V
    .locals 32

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v17

    new-instance v5, Ljava/util/ArrayList;

    const/16 v28, 0xbc5

    move/from16 v0, v28

    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(I)V

    :try_start_0
    new-instance v13, Ljava/io/FileInputStream;

    const-string/jumbo v28, "/system/etc/preloaded-classes"

    move-object/from16 v0, v28

    invoke-direct {v13, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const-string/jumbo v28, "Zygote"

    const-string/jumbo v29, "Preloading classes..."

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {v17 .. v17}, Ldalvik/system/VMRuntime;->getTargetHeapUtilization()F

    move-result v7

    const v28, 0x3f4ccccd    # 0.8f

    move-object/from16 v0, v17

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ldalvik/system/VMRuntime;->setTargetHeapUtilization(F)F

    invoke-static {}, Ljava/lang/System;->gc()V

    invoke-virtual/range {v17 .. v17}, Ldalvik/system/VMRuntime;->runFinalizationSync()V

    invoke-static {}, Landroid/os/Debug;->startAllocCounting()V

    :try_start_1
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v28, Ljava/io/InputStreamReader;

    move-object/from16 v0, v28

    invoke-direct {v0, v13}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v29, 0x100

    move-object/from16 v0, v28

    move/from16 v1, v29

    invoke-direct {v4, v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    const/4 v6, 0x0

    :cond_0
    :goto_0
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_1

    invoke-virtual {v15}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v15

    const-string/jumbo v28, "#"

    move-object/from16 v0, v28

    invoke-virtual {v15, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v28

    if-nez v28, :cond_0

    const-string/jumbo v28, ""

    move-object/from16 v0, v28

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-nez v28, :cond_0

    invoke-virtual {v5, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :catch_0
    move-exception v8

    const-string/jumbo v28, "Zygote"

    const-string/jumbo v29, "Couldn\'t find /system/etc/preloaded-classes."

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    :try_start_2
    const-string/jumbo v28, "Zygote"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v30, "Number of total Classes to prelaod: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sput v6, Lcom/android/internal/os/ZygoteInit;->numberOfPreloadClasses:I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    const-string/jumbo v28, "persist.sys.clssprld1"

    const-string/jumbo v29, "888"

    invoke-static/range {v28 .. v29}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v28

    sput v28, Lcom/android/internal/os/ZygoteInit;->numberOfPreloadClassesforThread1:I

    const-string/jumbo v28, "persist.sys.clssprld2"

    const-string/jumbo v29, "340"

    invoke-static/range {v28 .. v29}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v28

    sput v28, Lcom/android/internal/os/ZygoteInit;->numberOfPreloadClassesforThread2:I

    const-string/jumbo v28, "persist.sys.clssprld3"

    const-string/jumbo v29, "1225"

    invoke-static/range {v28 .. v29}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v28

    sput v28, Lcom/android/internal/os/ZygoteInit;->numberOfPreloadClassesforThread3:I
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_1
    :try_start_4
    sget v28, Lcom/android/internal/os/ZygoteInit;->numberOfPreloadClassesforThread1:I

    const/16 v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-lt v0, v1, :cond_2

    sget v28, Lcom/android/internal/os/ZygoteInit;->numberOfPreloadClassesforThread2:I

    const/16 v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-ge v0, v1, :cond_9

    :cond_2
    :goto_2
    const-string/jumbo v28, "Zygote"

    const-string/jumbo v29, "!@set default"

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget v28, Lcom/android/internal/os/ZygoteInit;->numberOfPreloadClasses:I

    div-int/lit8 v28, v28, 0x4

    sput v28, Lcom/android/internal/os/ZygoteInit;->numberOfPreloadClassesforThread1:I

    sget v28, Lcom/android/internal/os/ZygoteInit;->numberOfPreloadClasses:I

    div-int/lit8 v28, v28, 0x4

    sput v28, Lcom/android/internal/os/ZygoteInit;->numberOfPreloadClassesforThread2:I

    sget v28, Lcom/android/internal/os/ZygoteInit;->numberOfPreloadClasses:I

    div-int/lit8 v28, v28, 0x4

    sput v28, Lcom/android/internal/os/ZygoteInit;->numberOfPreloadClassesforThread3:I

    const-string/jumbo v28, "persist.sys.clssprld1"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    sget v30, Lcom/android/internal/os/ZygoteInit;->numberOfPreloadClassesforThread1:I

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string/jumbo v30, ""

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v28, "persist.sys.clssprld2"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    sget v30, Lcom/android/internal/os/ZygoteInit;->numberOfPreloadClassesforThread2:I

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string/jumbo v30, ""

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v28, "persist.sys.clssprld3"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    sget v30, Lcom/android/internal/os/ZygoteInit;->numberOfPreloadClassesforThread3:I

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string/jumbo v30, ""

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    const/16 v28, 0x0

    sput v28, Lcom/android/internal/os/ZygoteInit;->startPreloadClsThread1:I

    sget v28, Lcom/android/internal/os/ZygoteInit;->numberOfPreloadClassesforThread1:I

    sput v28, Lcom/android/internal/os/ZygoteInit;->startPreloadClsThread2:I

    sget v28, Lcom/android/internal/os/ZygoteInit;->numberOfPreloadClassesforThread1:I

    sget v29, Lcom/android/internal/os/ZygoteInit;->numberOfPreloadClassesforThread2:I

    add-int v28, v28, v29

    sput v28, Lcom/android/internal/os/ZygoteInit;->startPreloadClsThread3:I

    sget v28, Lcom/android/internal/os/ZygoteInit;->numberOfPreloadClassesforThread1:I

    sget v29, Lcom/android/internal/os/ZygoteInit;->numberOfPreloadClassesforThread2:I

    add-int v28, v28, v29

    sget v29, Lcom/android/internal/os/ZygoteInit;->numberOfPreloadClassesforThread3:I

    add-int v28, v28, v29

    sput v28, Lcom/android/internal/os/ZygoteInit;->startPreloadClsThread4:I

    sget v28, Lcom/android/internal/os/ZygoteInit;->numberOfPreloadClassesforThread1:I

    add-int/lit8 v28, v28, -0x1

    sput v28, Lcom/android/internal/os/ZygoteInit;->endPreloadClsThread1:I

    sget v28, Lcom/android/internal/os/ZygoteInit;->numberOfPreloadClassesforThread1:I

    sget v29, Lcom/android/internal/os/ZygoteInit;->numberOfPreloadClassesforThread2:I

    add-int v28, v28, v29

    add-int/lit8 v28, v28, -0x1

    sput v28, Lcom/android/internal/os/ZygoteInit;->endPreloadClsThread2:I

    sget v28, Lcom/android/internal/os/ZygoteInit;->numberOfPreloadClassesforThread1:I

    sget v29, Lcom/android/internal/os/ZygoteInit;->numberOfPreloadClassesforThread2:I

    add-int v28, v28, v29

    sget v29, Lcom/android/internal/os/ZygoteInit;->numberOfPreloadClassesforThread3:I

    add-int v28, v28, v29

    add-int/lit8 v28, v28, -0x1

    sput v28, Lcom/android/internal/os/ZygoteInit;->endPreloadClsThread3:I

    sget v28, Lcom/android/internal/os/ZygoteInit;->numberOfPreloadClasses:I

    add-int/lit8 v28, v28, -0x1

    sput v28, Lcom/android/internal/os/ZygoteInit;->endPreloadClsThread4:I

    sget-boolean v28, Lcom/android/internal/os/ZygoteInit;->primaryZygoteThreadRunning:Z

    if-eqz v28, :cond_4

    const-string/jumbo v28, "Zygote"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v30, "Classes to load for thread1 "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    sget v30, Lcom/android/internal/os/ZygoteInit;->startPreloadClsThread1:I

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string/jumbo v30, "~"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    sget v30, Lcom/android/internal/os/ZygoteInit;->endPreloadClsThread1:I

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v28, "Zygote"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v30, "Classes to load for thread2 "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    sget v30, Lcom/android/internal/os/ZygoteInit;->startPreloadClsThread2:I

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string/jumbo v30, "~"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    sget v30, Lcom/android/internal/os/ZygoteInit;->endPreloadClsThread2:I

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v28, "Zygote"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v30, "Classes to load for thread3 "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    sget v30, Lcom/android/internal/os/ZygoteInit;->startPreloadClsThread3:I

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string/jumbo v30, "~"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    sget v30, Lcom/android/internal/os/ZygoteInit;->endPreloadClsThread3:I

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v28, "Zygote"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v30, "Classes to load for thread4 "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    sget v30, Lcom/android/internal/os/ZygoteInit;->startPreloadClsThread4:I

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string/jumbo v30, "~"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    sget v30, Lcom/android/internal/os/ZygoteInit;->endPreloadClsThread4:I

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    new-instance v21, Ljava/lang/Thread;

    new-instance v28, Lcom/android/internal/os/ZygoteInit$2;

    move-object/from16 v0, v28

    move-object/from16 v1, v17

    invoke-direct {v0, v5, v1}, Lcom/android/internal/os/ZygoteInit$2;-><init>(Ljava/util/ArrayList;Ldalvik/system/VMRuntime;)V

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Thread;->start()V

    new-instance v22, Ljava/lang/Thread;

    new-instance v28, Lcom/android/internal/os/ZygoteInit$3;

    move-object/from16 v0, v28

    move-object/from16 v1, v17

    invoke-direct {v0, v5, v1}, Lcom/android/internal/os/ZygoteInit$3;-><init>(Ljava/util/ArrayList;Ldalvik/system/VMRuntime;)V

    move-object/from16 v0, v22

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Thread;->start()V

    new-instance v23, Ljava/lang/Thread;

    new-instance v28, Lcom/android/internal/os/ZygoteInit$4;

    move-object/from16 v0, v28

    move-object/from16 v1, v17

    invoke-direct {v0, v5, v1}, Lcom/android/internal/os/ZygoteInit$4;-><init>(Ljava/util/ArrayList;Ldalvik/system/VMRuntime;)V

    move-object/from16 v0, v23

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Thread;->start()V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v18

    const-wide/16 v24, 0x0

    const-wide/16 v26, 0x0

    sget v12, Lcom/android/internal/os/ZygoteInit;->startPreloadClsThread4:I

    :goto_3
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v28

    move/from16 v0, v28

    if-ge v12, v0, :cond_5

    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    if-nez v15, :cond_a

    :cond_5
    sget-boolean v28, Lcom/android/internal/os/ZygoteInit;->primaryZygoteThreadRunning:Z

    if-eqz v28, :cond_6

    const-string/jumbo v28, "Zygote"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v30, "!@prldclssM: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    sget v30, Lcom/android/internal/os/ZygoteInit;->numberOfPreloadClasses:I

    sget v31, Lcom/android/internal/os/ZygoteInit;->numberOfPreloadClassesforThread1:I

    sub-int v30, v30, v31

    sget v31, Lcom/android/internal/os/ZygoteInit;->numberOfPreloadClassesforThread2:I

    sub-int v30, v30, v31

    sget v31, Lcom/android/internal/os/ZygoteInit;->numberOfPreloadClassesforThread3:I

    sub-int v30, v30, v31

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string/jumbo v30, " classes in "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v30

    sub-long v30, v30, v18

    invoke-virtual/range {v29 .. v31}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string/jumbo v30, "ms."

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v28

    move-wide/from16 v0, v28

    long-to-int v0, v0

    move/from16 v28, v0

    sput v28, Lcom/android/internal/os/ZygoteInit;->threadMtime:I

    :goto_4
    sget-boolean v28, Lcom/android/internal/os/ZygoteInit;->parallelPCThread1running:Z

    if-nez v28, :cond_7

    sget-boolean v28, Lcom/android/internal/os/ZygoteInit;->parallelPCThread2running:Z
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v28, :cond_12

    :cond_7
    const-wide/16 v28, 0xa

    :try_start_5
    invoke-static/range {v28 .. v29}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :goto_5
    :try_start_6
    const-string/jumbo v28, "Zygote"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v30, "Wait PC Thread 1="

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    sget-boolean v30, Lcom/android/internal/os/ZygoteInit;->parallelPCThread1running:Z

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string/jumbo v30, " 2="

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    sget-boolean v30, Lcom/android/internal/os/ZygoteInit;->parallelPCThread2running:Z

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string/jumbo v30, " 3="

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    sget-boolean v30, Lcom/android/internal/os/ZygoteInit;->parallelPCThread3running:Z

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_4

    :catch_1
    move-exception v9

    :try_start_7
    const-string/jumbo v28, "Zygote"

    const-string/jumbo v29, "Error reading /system/etc/preloaded-classes."

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-static {v0, v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    const/16 v28, 0x0

    sput-boolean v28, Lcom/android/internal/os/ZygoteInit;->isParallelThreadRunning:Z

    invoke-static {v13}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ldalvik/system/VMRuntime;->setTargetHeapUtilization(F)F

    invoke-virtual/range {v17 .. v17}, Ldalvik/system/VMRuntime;->preloadDexCaches()V

    invoke-static {}, Landroid/os/Debug;->stopAllocCounting()V

    sget-boolean v28, Lcom/android/internal/os/ZygoteInit;->primaryZygoteThreadRunning:Z

    if-eqz v28, :cond_8

    sget-boolean v28, Lcom/android/internal/os/ZygoteInit;->debug_flag:Z

    if-eqz v28, :cond_8

    const-string/jumbo v28, "Zygote"

    const-string/jumbo v29, "!@prldclssM: finally block finished..."

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    :goto_6
    return-void

    :cond_9
    :try_start_8
    sget v28, Lcom/android/internal/os/ZygoteInit;->numberOfPreloadClassesforThread3:I

    const/16 v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-lt v0, v1, :cond_2

    sget v28, Lcom/android/internal/os/ZygoteInit;->numberOfPreloadClassesforThread1:I

    sget v29, Lcom/android/internal/os/ZygoteInit;->numberOfPreloadClassesforThread2:I

    add-int v28, v28, v29

    sget v29, Lcom/android/internal/os/ZygoteInit;->numberOfPreloadClassesforThread3:I

    add-int v28, v28, v29

    sget v29, Lcom/android/internal/os/ZygoteInit;->numberOfPreloadClasses:I
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move/from16 v0, v28

    move/from16 v1, v29

    if-lt v0, v1, :cond_3

    goto/16 :goto_2

    :cond_a
    const/4 v14, 0x0

    :goto_7
    :try_start_9
    sget-object v28, Lcom/android/internal/os/ZygoteInit;->postLoadClasses:[Ljava/lang/String;

    move-object/from16 v0, v28

    array-length v0, v0

    move/from16 v28, v0

    move/from16 v0, v28

    if-ge v14, v0, :cond_b

    sget-object v28, Lcom/android/internal/os/ZygoteInit;->postLoadClasses:[Ljava/lang/String;

    aget-object v28, v28, v14

    move-object/from16 v0, v28

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_d

    const-string/jumbo v28, "Zygote"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v30, "postpone "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v15, 0x0

    :cond_b
    if-nez v15, :cond_e

    :cond_c
    :goto_8
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_3

    :cond_d
    add-int/lit8 v14, v14, 0x1

    goto :goto_7

    :cond_e
    invoke-static {v15}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    invoke-static {}, Landroid/os/Debug;->getGlobalAllocSize()I

    move-result v28

    sget v29, Lcom/android/internal/os/ZygoteInit;->PRELOAD_GC_THRESHOLD:I

    move/from16 v0, v28

    move/from16 v1, v29

    if-le v0, v1, :cond_c

    invoke-static {}, Ljava/lang/System;->gc()V

    invoke-virtual/range {v17 .. v17}, Ldalvik/system/VMRuntime;->runFinalizationSync()V

    invoke-static {}, Landroid/os/Debug;->resetGlobalAllocSize()V
    :try_end_9
    .catch Ljava/lang/ClassNotFoundException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_8

    :catch_2
    move-exception v10

    :try_start_a
    const-string/jumbo v28, "Zygote"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v30, "Class not found for preloading: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_8

    :catchall_0
    move-exception v28

    const/16 v29, 0x0

    sput-boolean v29, Lcom/android/internal/os/ZygoteInit;->isParallelThreadRunning:Z

    invoke-static {v13}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ldalvik/system/VMRuntime;->setTargetHeapUtilization(F)F

    invoke-virtual/range {v17 .. v17}, Ldalvik/system/VMRuntime;->preloadDexCaches()V

    invoke-static {}, Landroid/os/Debug;->stopAllocCounting()V

    sget-boolean v29, Lcom/android/internal/os/ZygoteInit;->primaryZygoteThreadRunning:Z

    if-eqz v29, :cond_f

    sget-boolean v29, Lcom/android/internal/os/ZygoteInit;->debug_flag:Z

    if-eqz v29, :cond_f

    const-string/jumbo v29, "Zygote"

    const-string/jumbo v30, "!@prldclssM: finally block finished..."

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    throw v28

    :catch_3
    move-exception v20

    :try_start_b
    const-string/jumbo v28, "Zygote"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v30, "!@Error preloading "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string/jumbo v30, "."

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object/from16 v0, v20

    instance-of v0, v0, Ljava/lang/Error;

    move/from16 v28, v0

    if-eqz v28, :cond_10

    check-cast v20, Ljava/lang/Error;

    throw v20

    :cond_10
    move-object/from16 v0, v20

    instance-of v0, v0, Ljava/lang/RuntimeException;

    move/from16 v28, v0

    if-eqz v28, :cond_11

    check-cast v20, Ljava/lang/RuntimeException;

    throw v20

    :cond_11
    new-instance v28, Ljava/lang/RuntimeException;

    move-object/from16 v0, v28

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v28

    :cond_12
    sget-boolean v28, Lcom/android/internal/os/ZygoteInit;->parallelPCThread3running:Z

    if-nez v28, :cond_7

    const/4 v14, 0x0

    :goto_9
    sget-object v28, Lcom/android/internal/os/ZygoteInit;->postLoadClasses:[Ljava/lang/String;

    move-object/from16 v0, v28

    array-length v0, v0

    move/from16 v28, v0
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    move/from16 v0, v28

    if-ge v14, v0, :cond_13

    :try_start_c
    sget-object v28, Lcom/android/internal/os/ZygoteInit;->postLoadClasses:[Ljava/lang/String;

    aget-object v28, v28, v14

    invoke-static/range {v28 .. v28}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    const-string/jumbo v28, "Zygote"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v30, "post pld="

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    sget-object v30, Lcom/android/internal/os/ZygoteInit;->postLoadClasses:[Ljava/lang/String;

    aget-object v30, v30, v14

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catch Ljava/lang/ClassNotFoundException; {:try_start_c .. :try_end_c} :catch_5
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_1
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    :goto_a
    add-int/lit8 v14, v14, 0x1

    goto :goto_9

    :catch_4
    move-exception v11

    :try_start_d
    invoke-virtual {v11}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_5

    :catch_5
    move-exception v10

    const-string/jumbo v28, "Zygote"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v30, "Class not found for preloading: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    :cond_13
    sget-boolean v28, Lcom/android/internal/os/ZygoteInit;->primaryZygoteThreadRunning:Z

    if-eqz v28, :cond_14

    sget-boolean v28, Lcom/android/internal/os/ZygoteInit;->debug_flag:Z

    if-eqz v28, :cond_14

    const-string/jumbo v28, "Zygote"

    const-string/jumbo v29, "!@prldclssM: PostLoadClasses Preloading finished..."

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_1
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    :cond_14
    const/16 v28, 0x0

    sput-boolean v28, Lcom/android/internal/os/ZygoteInit;->isParallelThreadRunning:Z

    invoke-static {v13}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ldalvik/system/VMRuntime;->setTargetHeapUtilization(F)F

    invoke-virtual/range {v17 .. v17}, Ldalvik/system/VMRuntime;->preloadDexCaches()V

    invoke-static {}, Landroid/os/Debug;->stopAllocCounting()V

    sget-boolean v28, Lcom/android/internal/os/ZygoteInit;->primaryZygoteThreadRunning:Z

    if-eqz v28, :cond_8

    sget-boolean v28, Lcom/android/internal/os/ZygoteInit;->debug_flag:Z

    if-eqz v28, :cond_8

    const-string/jumbo v28, "Zygote"

    const-string/jumbo v29, "!@prldclssM: finally block finished..."

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    :catch_6
    move-exception v16

    goto/16 :goto_1
.end method

.method private static performSystemServerDexOpt(Ljava/lang/String;)V
    .locals 13

    const/4 v2, 0x0

    const-string/jumbo v5, ":"

    invoke-virtual {p0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    new-instance v0, Lcom/android/internal/os/InstallerConnection;

    invoke-direct {v0}, Lcom/android/internal/os/InstallerConnection;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/os/InstallerConnection;->waitForConnection()V

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v5

    invoke-virtual {v5}, Ldalvik/system/VMRuntime;->vmInstructionSet()Ljava/lang/String;

    move-result-object v3

    :try_start_0
    const-string/jumbo v8, ""

    array-length v12, v9

    move v11, v2

    :goto_0
    if-ge v11, v12, :cond_2

    aget-object v1, v9, v11

    const-string/jumbo v2, "speed"

    const/4 v5, 0x0

    invoke-static {v1, v3, v2, v5}, Ldalvik/system/DexFile;->getDexOptNeeded(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v4

    if-eqz v4, :cond_0

    const-string/jumbo v6, "speed"

    const/16 v2, 0x3e8

    const/4 v5, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v8}, Lcom/android/internal/os/InstallerConnection;->dexopt(Ljava/lang/String;ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v5, ":"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/android/internal/os/InstallerConnection$InstallerException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v8

    add-int/lit8 v2, v11, 0x1

    move v11, v2

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/android/internal/os/InstallerConnection;->disconnect()V

    return-void

    :catch_0
    move-exception v10

    :try_start_1
    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v5, "Error starting system_server"

    invoke-direct {v2, v5, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Lcom/android/internal/os/InstallerConnection;->disconnect()V

    throw v2
.end method

.method private static varargs posixCapabilitiesAsBits([I)J
    .locals 8

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    array-length v4, p0

    :goto_0
    if-ge v1, v4, :cond_2

    aget v0, p0, v1

    if-ltz v0, :cond_0

    sget v5, Landroid/system/OsConstants;->CAP_LAST_CAP:I

    if-le v0, v5, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    const-wide/16 v6, 0x1

    shl-long/2addr v6, v0

    or-long/2addr v2, v6

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-wide v2
.end method

.method static preload()V
    .locals 8

    const/16 v7, 0x270f

    const/4 v6, 0x1

    const/4 v3, 0x0

    const-wide/16 v4, 0x4000

    sget-boolean v1, Lcom/android/internal/os/ZygoteInit;->primaryZygoteThreadRunning:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "Zygote"

    const-string/jumbo v2, "!@Boot: Begin of preload()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string/jumbo v1, "BeginIcuCachePinning"

    invoke-static {v4, v5, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->beginIcuCachePinning()V

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    sget-boolean v1, Lcom/android/internal/os/ZygoteInit;->primaryZygoteThreadRunning:Z

    if-eqz v1, :cond_8

    invoke-static {v7}, Lcom/android/internal/os/ZygoteInit;->setEffectiveGroup(I)V

    invoke-static {v7}, Lcom/android/internal/os/ZygoteInit;->setEffectiveUser(I)V

    sput-boolean v6, Lcom/android/internal/os/ZygoteInit;->isParallelThreadRunning:Z

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/internal/os/ZygoteInit$1;

    invoke-direct {v1}, Lcom/android/internal/os/ZygoteInit$1;-><init>()V

    const-string/jumbo v2, "preloadMonitor"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->parallelpreloadClasses()V

    sput-boolean v6, Lcom/android/internal/os/ZygoteInit;->isPreloadComplete:Z

    sget-boolean v1, Lcom/android/internal/os/ZygoteInit;->primaryZygoteThreadRunning:Z

    if-eqz v1, :cond_1

    const-string/jumbo v1, "Zygote"

    const-string/jumbo v2, "!@preload(): PC Completed!!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->preloadResources()V

    sget-boolean v1, Lcom/android/internal/os/ZygoteInit;->primaryZygoteThreadRunning:Z

    if-eqz v1, :cond_2

    const-string/jumbo v1, "Zygote"

    const-string/jumbo v2, "!@preload(): PR Completed!!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->preloadOpenGL()V

    sget-boolean v1, Lcom/android/internal/os/ZygoteInit;->primaryZygoteThreadRunning:Z

    if-eqz v1, :cond_3

    sget-boolean v1, Lcom/android/internal/os/ZygoteInit;->debug_flag:Z

    if-eqz v1, :cond_3

    const-string/jumbo v1, "Zygote"

    const-string/jumbo v2, "!@preload(): preloadOpenGL Completed"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->preloadSharedLibraries()V

    sget-boolean v1, Lcom/android/internal/os/ZygoteInit;->primaryZygoteThreadRunning:Z

    if-eqz v1, :cond_4

    sget-boolean v1, Lcom/android/internal/os/ZygoteInit;->debug_flag:Z

    if-eqz v1, :cond_4

    const-string/jumbo v1, "Zygote"

    const-string/jumbo v2, "!@preload(): preloadSharedLibraries Completed"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->preloadTextResources()V

    sget-boolean v1, Lcom/android/internal/os/ZygoteInit;->primaryZygoteThreadRunning:Z

    if-eqz v1, :cond_5

    sget-boolean v1, Lcom/android/internal/os/ZygoteInit;->debug_flag:Z

    if-eqz v1, :cond_5

    const-string/jumbo v1, "Zygote"

    const-string/jumbo v2, "!@preload(): preloadTextResources Completed"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    invoke-static {}, Landroid/webkit/WebViewFactory;->prepareWebViewInZygote()V

    sget-boolean v1, Lcom/android/internal/os/ZygoteInit;->primaryZygoteThreadRunning:Z

    if-eqz v1, :cond_6

    sget-boolean v1, Lcom/android/internal/os/ZygoteInit;->debug_flag:Z

    if-eqz v1, :cond_6

    const-string/jumbo v1, "Zygote"

    const-string/jumbo v2, "!@preload(): WebViewFactory.prepareWebViewInZygote Completed"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->endIcuCachePinning()V

    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->warmUpJcaProviders()V

    invoke-static {v3}, Lcom/android/internal/os/ZygoteInit;->setEffectiveUser(I)V

    invoke-static {v3}, Lcom/android/internal/os/ZygoteInit;->setEffectiveGroup(I)V

    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->adjustClassPreloadBalance()V

    :goto_0
    sget-boolean v1, Lcom/android/internal/os/ZygoteInit;->primaryZygoteThreadRunning:Z

    if-eqz v1, :cond_7

    const-string/jumbo v1, "Zygote"

    const-string/jumbo v2, "!@Boot: End of preload()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    return-void

    :cond_8
    const-string/jumbo v1, "PreloadClasses"

    invoke-static {v4, v5, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->preloadClasses()V

    sget-boolean v1, Lcom/android/internal/os/ZygoteInit;->primaryZygoteThreadRunning:Z

    if-eqz v1, :cond_9

    sget-boolean v1, Lcom/android/internal/os/ZygoteInit;->debug_flag:Z

    if-eqz v1, :cond_9

    const-string/jumbo v1, "Zygote"

    const-string/jumbo v2, "preloadClasses() Completed"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    const-string/jumbo v1, "PreloadResources"

    invoke-static {v4, v5, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->preloadResources()V

    sget-boolean v1, Lcom/android/internal/os/ZygoteInit;->primaryZygoteThreadRunning:Z

    if-eqz v1, :cond_a

    sget-boolean v1, Lcom/android/internal/os/ZygoteInit;->debug_flag:Z

    if-eqz v1, :cond_a

    const-string/jumbo v1, "Zygote"

    const-string/jumbo v2, "preloadResources() Completed"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    const-string/jumbo v1, "PreloadOpenGL"

    invoke-static {v4, v5, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->preloadOpenGL()V

    sget-boolean v1, Lcom/android/internal/os/ZygoteInit;->primaryZygoteThreadRunning:Z

    if-eqz v1, :cond_b

    sget-boolean v1, Lcom/android/internal/os/ZygoteInit;->debug_flag:Z

    if-eqz v1, :cond_b

    const-string/jumbo v1, "Zygote"

    const-string/jumbo v2, "preloadOpenGL() Completed"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->preloadSharedLibraries()V

    sget-boolean v1, Lcom/android/internal/os/ZygoteInit;->primaryZygoteThreadRunning:Z

    if-eqz v1, :cond_c

    sget-boolean v1, Lcom/android/internal/os/ZygoteInit;->debug_flag:Z

    if-eqz v1, :cond_c

    const-string/jumbo v1, "Zygote"

    const-string/jumbo v2, "preloadSharedLibraries() Completed"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->preloadTextResources()V

    sget-boolean v1, Lcom/android/internal/os/ZygoteInit;->primaryZygoteThreadRunning:Z

    if-eqz v1, :cond_d

    sget-boolean v1, Lcom/android/internal/os/ZygoteInit;->debug_flag:Z

    if-eqz v1, :cond_d

    const-string/jumbo v1, "Zygote"

    const-string/jumbo v2, "preloadTextResources() Completed"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    invoke-static {}, Landroid/webkit/WebViewFactory;->prepareWebViewInZygote()V

    sget-boolean v1, Lcom/android/internal/os/ZygoteInit;->primaryZygoteThreadRunning:Z

    if-eqz v1, :cond_e

    sget-boolean v1, Lcom/android/internal/os/ZygoteInit;->debug_flag:Z

    if-eqz v1, :cond_e

    const-string/jumbo v1, "Zygote"

    const-string/jumbo v2, "WebViewFactory.prepareWebViewInZygote() Completed"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->endIcuCachePinning()V

    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->warmUpJcaProviders()V

    goto/16 :goto_0
.end method

.method private static preloadClasses()V
    .locals 26

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v17

    :try_start_0
    new-instance v13, Ljava/io/FileInputStream;

    const-string/jumbo v21, "/system/etc/preloaded-classes"

    move-object/from16 v0, v21

    invoke-direct {v13, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    const-string/jumbo v21, "Zygote"

    const-string/jumbo v22, "Preloading classes..."

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v18

    invoke-static {}, Landroid/system/Os;->getuid()I

    move-result v16

    invoke-static {}, Landroid/system/Os;->getgid()I

    move-result v15

    const/4 v7, 0x0

    if-nez v16, :cond_0

    if-nez v15, :cond_0

    const/16 v21, 0x0

    const/16 v22, 0x270f

    :try_start_1
    invoke-static/range {v21 .. v22}, Landroid/system/Os;->setregid(II)V

    const/16 v21, 0x0

    const/16 v22, 0x270f

    invoke-static/range {v21 .. v22}, Landroid/system/Os;->setreuid(II)V
    :try_end_1
    .catch Landroid/system/ErrnoException; {:try_start_1 .. :try_end_1} :catch_2

    const/4 v7, 0x1

    :cond_0
    invoke-virtual/range {v17 .. v17}, Ldalvik/system/VMRuntime;->getTargetHeapUtilization()F

    move-result v6

    const v21, 0x3f4ccccd    # 0.8f

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ldalvik/system/VMRuntime;->setTargetHeapUtilization(F)F

    :try_start_2
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v21, Ljava/io/InputStreamReader;

    move-object/from16 v0, v21

    invoke-direct {v0, v13}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v22, 0x100

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-direct {v4, v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    const/4 v5, 0x0

    :cond_1
    :goto_0
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_6

    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    const-string/jumbo v21, "#"

    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v21

    if-nez v21, :cond_1

    const-string/jumbo v21, ""

    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_1

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "PreloadClass "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    const-wide/16 v22, 0x4000

    move-wide/from16 v0, v22

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/16 v21, 0x1

    const/16 v22, 0x0

    :try_start_3
    move/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v14, v0, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    add-int/lit8 v5, v5, 0x1

    :goto_1
    const-wide/16 v22, 0x4000

    :try_start_4
    invoke-static/range {v22 .. v23}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v9

    :try_start_5
    const-string/jumbo v21, "Zygote"

    const-string/jumbo v22, "Error reading /system/etc/preloaded-classes."

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    invoke-static {v13}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ldalvik/system/VMRuntime;->setTargetHeapUtilization(F)F

    const-string/jumbo v21, "PreloadDexCaches"

    const-wide/16 v22, 0x4000

    move-wide/from16 v0, v22

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    invoke-virtual/range {v17 .. v17}, Ldalvik/system/VMRuntime;->preloadDexCaches()V

    const-wide/16 v22, 0x4000

    invoke-static/range {v22 .. v23}, Landroid/os/Trace;->traceEnd(J)V

    if-eqz v7, :cond_2

    const/16 v21, 0x0

    const/16 v22, 0x0

    :try_start_6
    invoke-static/range {v21 .. v22}, Landroid/system/Os;->setreuid(II)V

    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-static/range {v21 .. v22}, Landroid/system/Os;->setregid(II)V
    :try_end_6
    .catch Landroid/system/ErrnoException; {:try_start_6 .. :try_end_6} :catch_7

    :cond_2
    :goto_2
    return-void

    :catch_1
    move-exception v8

    const-string/jumbo v21, "Zygote"

    const-string/jumbo v22, "Couldn\'t find /system/etc/preloaded-classes."

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_2
    move-exception v12

    new-instance v21, Ljava/lang/RuntimeException;

    const-string/jumbo v22, "Failed to drop root"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-direct {v0, v1, v12}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v21

    :catch_3
    move-exception v20

    :try_start_7
    const-string/jumbo v21, "Zygote"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "Error preloading "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, "."

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object/from16 v0, v20

    instance-of v0, v0, Ljava/lang/Error;

    move/from16 v21, v0

    if-eqz v21, :cond_4

    check-cast v20, Ljava/lang/Error;

    throw v20
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :catchall_0
    move-exception v21

    invoke-static {v13}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ldalvik/system/VMRuntime;->setTargetHeapUtilization(F)F

    const-string/jumbo v22, "PreloadDexCaches"

    const-wide/16 v24, 0x4000

    move-wide/from16 v0, v24

    move-object/from16 v2, v22

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    invoke-virtual/range {v17 .. v17}, Ldalvik/system/VMRuntime;->preloadDexCaches()V

    const-wide/16 v22, 0x4000

    invoke-static/range {v22 .. v23}, Landroid/os/Trace;->traceEnd(J)V

    if-eqz v7, :cond_3

    const/16 v22, 0x0

    const/16 v23, 0x0

    :try_start_8
    invoke-static/range {v22 .. v23}, Landroid/system/Os;->setreuid(II)V

    const/16 v22, 0x0

    const/16 v23, 0x0

    invoke-static/range {v22 .. v23}, Landroid/system/Os;->setregid(II)V
    :try_end_8
    .catch Landroid/system/ErrnoException; {:try_start_8 .. :try_end_8} :catch_8

    :cond_3
    throw v21

    :cond_4
    :try_start_9
    move-object/from16 v0, v20

    instance-of v0, v0, Ljava/lang/RuntimeException;

    move/from16 v21, v0

    if-eqz v21, :cond_5

    check-cast v20, Ljava/lang/RuntimeException;

    throw v20

    :cond_5
    new-instance v21, Ljava/lang/RuntimeException;

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v21

    :catch_4
    move-exception v11

    const-string/jumbo v21, "Zygote"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "Problem preloading "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, ": "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :catch_5
    move-exception v10

    const-string/jumbo v21, "Zygote"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "Class not found for preloading: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_6
    const-string/jumbo v21, "Zygote"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "...preloaded "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, " classes in "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v24

    sub-long v24, v24, v18

    move-object/from16 v0, v22

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, "ms."

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    invoke-static {v13}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ldalvik/system/VMRuntime;->setTargetHeapUtilization(F)F

    const-string/jumbo v21, "PreloadDexCaches"

    const-wide/16 v22, 0x4000

    move-wide/from16 v0, v22

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    invoke-virtual/range {v17 .. v17}, Ldalvik/system/VMRuntime;->preloadDexCaches()V

    const-wide/16 v22, 0x4000

    invoke-static/range {v22 .. v23}, Landroid/os/Trace;->traceEnd(J)V

    if-eqz v7, :cond_2

    const/16 v21, 0x0

    const/16 v22, 0x0

    :try_start_a
    invoke-static/range {v21 .. v22}, Landroid/system/Os;->setreuid(II)V

    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-static/range {v21 .. v22}, Landroid/system/Os;->setregid(II)V
    :try_end_a
    .catch Landroid/system/ErrnoException; {:try_start_a .. :try_end_a} :catch_6

    goto/16 :goto_2

    :catch_6
    move-exception v12

    new-instance v21, Ljava/lang/RuntimeException;

    const-string/jumbo v22, "Failed to restore root"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-direct {v0, v1, v12}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v21

    :catch_7
    move-exception v12

    new-instance v21, Ljava/lang/RuntimeException;

    const-string/jumbo v22, "Failed to restore root"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-direct {v0, v1, v12}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v21

    :catch_8
    move-exception v12

    new-instance v21, Ljava/lang/RuntimeException;

    const-string/jumbo v22, "Failed to restore root"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-direct {v0, v1, v12}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v21
.end method

.method private static preloadColorStateLists(Landroid/content/res/TypedArray;)I
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    if-eqz v2, :cond_0

    sget-object v3, Lcom/android/internal/os/ZygoteInit;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v3, v2, v5}, Landroid/content/res/Resources;->getColorStateList(ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v3

    if-nez v3, :cond_0

    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unable to find preloaded color resource #0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private static preloadDrawables(Landroid/content/res/TypedArray;)I
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    if-eqz v2, :cond_0

    sget-object v3, Lcom/android/internal/os/ZygoteInit;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v3, v2, v5}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-nez v3, :cond_0

    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unable to find preloaded drawable resource #0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private static preloadOpenGL()V
    .locals 2

    const/4 v1, 0x0

    const-string/jumbo v0, "ro.zygote.disable_gl_preload"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {v1}, Landroid/opengl/EGL14;->eglGetDisplay(I)Landroid/opengl/EGLDisplay;

    :cond_0
    return-void
.end method

.method private static preloadResources()V
    .locals 10

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v3

    :try_start_0
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v6

    sput-object v6, Lcom/android/internal/os/ZygoteInit;->mResources:Landroid/content/res/Resources;

    sget-object v6, Lcom/android/internal/os/ZygoteInit;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v6}, Landroid/content/res/Resources;->startPreloading()V

    const-string/jumbo v6, "Zygote"

    const-string/jumbo v7, "Preloading resources..."

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sget-object v6, Lcom/android/internal/os/ZygoteInit;->mResources:Landroid/content/res/Resources;

    const v7, 0x1070006

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/os/ZygoteInit;->preloadDrawables(Landroid/content/res/TypedArray;)I

    move-result v0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    const-string/jumbo v6, "Zygote"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "...preloaded "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " resources in "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v4

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "ms."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sget-object v6, Lcom/android/internal/os/ZygoteInit;->mResources:Landroid/content/res/Resources;

    const v7, 0x1070007

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/os/ZygoteInit;->preloadColorStateLists(Landroid/content/res/TypedArray;)I

    move-result v0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    const-string/jumbo v6, "Zygote"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "...preloaded "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " resources in "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v4

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "ms."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v6, Lcom/android/internal/os/ZygoteInit;->mResources:Landroid/content/res/Resources;

    const v7, 0x11200ac

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sget-object v6, Lcom/android/internal/os/ZygoteInit;->mResources:Landroid/content/res/Resources;

    const v7, 0x1070008

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/os/ZygoteInit;->preloadDrawables(Landroid/content/res/TypedArray;)I

    move-result v0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    const-string/jumbo v6, "Zygote"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "...preloaded "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " resource in "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v4

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "ms."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v6, Lcom/android/internal/os/ZygoteInit;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v6}, Landroid/content/res/Resources;->finishPreloading()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v2

    const-string/jumbo v6, "Zygote"

    const-string/jumbo v7, "Failure preloading resources"

    invoke-static {v6, v7, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static preloadSharedLibraries()V
    .locals 2

    const-string/jumbo v0, "Zygote"

    const-string/jumbo v1, "Preloading shared libraries..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "android"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string/jumbo v0, "compiler_rt"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string/jumbo v0, "jnigraphics"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method private static preloadTextResources()V
    .locals 0

    invoke-static {}, Landroid/text/Hyphenator;->init()V

    invoke-static {}, Landroid/widget/TextView;->preloadFontCache()V

    return-void
.end method

.method private static registerZygoteSocket(Ljava/lang/String;)V
    .locals 9

    sget-object v6, Lcom/android/internal/os/ZygoteInit;->sServerSocket:Landroid/net/LocalServerSocket;

    if-nez v6, :cond_0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "ANDROID_SOCKET_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :try_start_0
    invoke-static {v5}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    :try_start_1
    new-instance v3, Ljava/io/FileDescriptor;

    invoke-direct {v3}, Ljava/io/FileDescriptor;-><init>()V

    invoke-virtual {v3, v4}, Ljava/io/FileDescriptor;->setInt$(I)V

    new-instance v6, Landroid/net/LocalServerSocket;

    invoke-direct {v6, v3}, Landroid/net/LocalServerSocket;-><init>(Ljava/io/FileDescriptor;)V

    sput-object v6, Lcom/android/internal/os/ZygoteInit;->sServerSocket:Landroid/net/LocalServerSocket;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_0
    return-void

    :catch_0
    move-exception v2

    new-instance v6, Ljava/lang/RuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " unset or invalid"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    :catch_1
    move-exception v1

    new-instance v6, Ljava/lang/RuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Error binding to local socket \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6
.end method

.method private static runSelectLoop(Ljava/lang/String;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/os/ZygoteInit$MethodAndArgsCaller;
        }
    .end annotation

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    sget-object v7, Lcom/android/internal/os/ZygoteInit;->sServerSocket:Landroid/net/LocalServerSocket;

    invoke-virtual {v7}, Landroid/net/LocalServerSocket;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v6, v7, [Landroid/system/StructPollfd;

    const/4 v3, 0x0

    :goto_0
    array-length v7, v6

    if-ge v3, v7, :cond_1

    new-instance v7, Landroid/system/StructPollfd;

    invoke-direct {v7}, Landroid/system/StructPollfd;-><init>()V

    aput-object v7, v6, v3

    aget-object v8, v6, v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/io/FileDescriptor;

    iput-object v7, v8, Landroid/system/StructPollfd;->fd:Ljava/io/FileDescriptor;

    aget-object v7, v6, v3

    sget v8, Landroid/system/OsConstants;->POLLIN:I

    int-to-short v8, v8

    iput-short v8, v7, Landroid/system/StructPollfd;->events:S

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v7, -0x1

    :try_start_0
    invoke-static {v6, v7}, Landroid/system/Os;->poll([Landroid/system/StructPollfd;I)I
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    array-length v7, v6

    add-int/lit8 v3, v7, -0x1

    :goto_1
    if-ltz v3, :cond_0

    aget-object v7, v6, v3

    iget-short v7, v7, Landroid/system/StructPollfd;->revents:S

    sget v8, Landroid/system/OsConstants;->POLLIN:I

    and-int/2addr v7, v8

    if-nez v7, :cond_3

    :cond_2
    :goto_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :catch_0
    move-exception v1

    new-instance v7, Ljava/lang/RuntimeException;

    const-string/jumbo v8, "poll failed"

    invoke-direct {v7, v8, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    :cond_3
    if-nez v3, :cond_4

    invoke-static {p0}, Lcom/android/internal/os/ZygoteInit;->acceptCommandPeer(Ljava/lang/String;)Lcom/android/internal/os/ZygoteConnection;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4}, Lcom/android/internal/os/ZygoteConnection;->getFileDesciptor()Ljava/io/FileDescriptor;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/os/ZygoteConnection;

    invoke-virtual {v7}, Lcom/android/internal/os/ZygoteConnection;->runOnce()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_2
.end method

.method private static setEffectiveGroup(I)V
    .locals 3

    const/4 v1, 0x0

    :try_start_0
    invoke-static {v1, p0}, Landroid/system/Os;->setregid(II)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "Failed sets effective group ID"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static setEffectiveUser(I)V
    .locals 3

    const/4 v1, 0x0

    :try_start_0
    invoke-static {v1, p0}, Landroid/system/Os;->setreuid(II)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "Failed sets effective user ID"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static startSystemServer(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/os/ZygoteInit$MethodAndArgsCaller;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    const/16 v1, 0xb

    new-array v1, v1, [I

    sget v2, Landroid/system/OsConstants;->CAP_IPC_LOCK:I

    const/4 v3, 0x0

    aput v2, v1, v3

    sget v2, Landroid/system/OsConstants;->CAP_KILL:I

    const/4 v3, 0x1

    aput v2, v1, v3

    sget v2, Landroid/system/OsConstants;->CAP_NET_ADMIN:I

    const/4 v3, 0x2

    aput v2, v1, v3

    sget v2, Landroid/system/OsConstants;->CAP_NET_BIND_SERVICE:I

    const/4 v3, 0x3

    aput v2, v1, v3

    sget v2, Landroid/system/OsConstants;->CAP_NET_BROADCAST:I

    const/4 v3, 0x4

    aput v2, v1, v3

    sget v2, Landroid/system/OsConstants;->CAP_NET_RAW:I

    const/4 v3, 0x5

    aput v2, v1, v3

    sget v2, Landroid/system/OsConstants;->CAP_SYS_MODULE:I

    const/4 v3, 0x6

    aput v2, v1, v3

    sget v2, Landroid/system/OsConstants;->CAP_SYS_NICE:I

    const/4 v3, 0x7

    aput v2, v1, v3

    sget v2, Landroid/system/OsConstants;->CAP_SYS_RESOURCE:I

    const/16 v3, 0x8

    aput v2, v1, v3

    sget v2, Landroid/system/OsConstants;->CAP_SYS_TIME:I

    const/16 v3, 0x9

    aput v2, v1, v3

    sget v2, Landroid/system/OsConstants;->CAP_SYS_TTY_CONFIG:I

    const/16 v3, 0xa

    aput v2, v1, v3

    invoke-static {v1}, Lcom/android/internal/os/ZygoteInit;->posixCapabilitiesAsBits([I)J

    move-result-wide v10

    const-string/jumbo v1, "ro.boot.container"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    new-array v1, v1, [I

    sget v2, Landroid/system/OsConstants;->CAP_BLOCK_SUSPEND:I

    const/4 v3, 0x0

    aput v2, v1, v3

    invoke-static {v1}, Lcom/android/internal/os/ZygoteInit;->posixCapabilitiesAsBits([I)J

    move-result-wide v2

    or-long/2addr v10, v2

    :cond_0
    const/4 v1, 0x7

    new-array v0, v1, [Ljava/lang/String;

    const-string/jumbo v1, "--setuid=1000"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "--setgid=1000"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "--setgroups=1001,1002,1003,1004,1005,1006,1007,1008,1009,1010,1018,1021,1023,1032,3001,3002,3003,3004,3005,3006,3007,3008,3009,3010"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "--capabilities="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string/jumbo v1, "--nice-name=system_server"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string/jumbo v1, "--runtime-args"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.android.server.SystemServer"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const/4 v13, 0x0

    :try_start_0
    new-instance v14, Lcom/android/internal/os/ZygoteConnection$Arguments;

    invoke-direct {v14, v0}, Lcom/android/internal/os/ZygoteConnection$Arguments;-><init>([Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-static {v14}, Lcom/android/internal/os/ZygoteConnection;->applyDebuggerSystemProperty(Lcom/android/internal/os/ZygoteConnection$Arguments;)V

    invoke-static {v14}, Lcom/android/internal/os/ZygoteConnection;->applyInvokeWithSystemProperty(Lcom/android/internal/os/ZygoteConnection$Arguments;)V

    iget v1, v14, Lcom/android/internal/os/ZygoteConnection$Arguments;->uid:I

    iget v2, v14, Lcom/android/internal/os/ZygoteConnection$Arguments;->gid:I

    iget-object v3, v14, Lcom/android/internal/os/ZygoteConnection$Arguments;->gids:[I

    iget v4, v14, Lcom/android/internal/os/ZygoteConnection$Arguments;->debugFlags:I

    iget-wide v6, v14, Lcom/android/internal/os/ZygoteConnection$Arguments;->permittedCapabilities:J

    iget-wide v8, v14, Lcom/android/internal/os/ZygoteConnection$Arguments;->effectiveCapabilities:J

    const/4 v5, 0x0

    invoke-static/range {v1 .. v9}, Lcom/android/internal/os/Zygote;->forkSystemServer(II[II[[IJJ)I
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v15

    if-nez v15, :cond_2

    invoke-static/range {p0 .. p0}, Lcom/android/internal/os/ZygoteInit;->hasSecondZygote(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static/range {p1 .. p1}, Lcom/android/internal/os/ZygoteInit;->waitForSecondaryZygote(Ljava/lang/String;)V

    :cond_1
    invoke-static {v14}, Lcom/android/internal/os/ZygoteInit;->handleSystemServerProcess(Lcom/android/internal/os/ZygoteConnection$Arguments;)V

    :cond_2
    const/4 v1, 0x1

    return v1

    :catch_0
    move-exception v12

    :goto_0
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v12}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v12

    move-object v13, v14

    goto :goto_0
.end method

.method private static waitForSecondaryZygote(Ljava/lang/String;)V
    .locals 7

    const-string/jumbo v4, "zygote"

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string/jumbo v2, "zygote_secondary"

    :goto_0
    :try_start_0
    invoke-static {v2}, Landroid/os/Process$ZygoteState;->connect(Ljava/lang/String;)Landroid/os/Process$ZygoteState;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Process$ZygoteState;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :cond_0
    const-string/jumbo v2, "zygote"

    goto :goto_0

    :catch_0
    move-exception v1

    const-string/jumbo v4, "Zygote"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Got error connecting to zygote, retrying. msg= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v4, 0x3e8

    :try_start_1
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method private static warmUpJcaProviders()V
    .locals 10

    const-wide/16 v8, 0x4000

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const-string/jumbo v1, "Starting installation of AndroidKeyStoreProvider"

    invoke-static {v8, v9, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    invoke-static {}, Landroid/security/keystore/AndroidKeyStoreProvider;->install()V

    const-string/jumbo v1, "Zygote"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Installed AndroidKeyStoreProvider in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v2

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "ms."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const-string/jumbo v1, "Starting warm up of JCA providers"

    invoke-static {v8, v9, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    invoke-static {}, Ljava/security/Security;->getProviders()[Ljava/security/Provider;

    move-result-object v4

    const/4 v1, 0x0

    array-length v5, v4

    :goto_0
    if-ge v1, v5, :cond_0

    aget-object v0, v4, v1

    invoke-virtual {v0}, Ljava/security/Provider;->warmUpServiceProvision()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const-string/jumbo v1, "Zygote"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Warmed up JCA providers in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v2

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "ms."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    return-void
.end method
