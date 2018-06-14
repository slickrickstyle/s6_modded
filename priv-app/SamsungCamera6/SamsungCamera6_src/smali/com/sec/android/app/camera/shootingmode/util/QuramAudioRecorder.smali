.class public Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder;
.super Ljava/lang/Object;
.source "QuramAudioRecorder.java"


# static fields
.field private static QURAM_RECORDER_BITS_PER_SAMPLE:I = 0x0

.field private static final QURAM_RECORDER_DURATION:J = 0x2328L

.field private static QURAM_RECORDER_NUM_CHANNELS:I = 0x0

.field private static QURAM_RECORDER_SAMPLERATE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "QuramAudioRecorder"

.field private static audioThread:Ljava/lang/Thread; = null

.field private static mLock:Ljava/lang/Object; = null

.field private static final threadInterval:J = 0x32L

.field private static final threadSleep:J = 0xaL


# instance fields
.field private audio_window_frame:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/camera/shootingmode/util/QuramAudioFrameData;",
            ">;"
        }
    .end annotation
.end field

.field private isRunning:Z

.field private qrecorder:Lcom/samsung/android/media/soundshot/SemAudioRecorder;

.field private readAudioStreamBuffer:[B

.field private readAudioStreamBufferSize:I

.field private segIdx:I

.field private time_s:J

.field private time_t:J

.field private visualization:[I

.field private visualization_duration:J

.field private visualizer:Lcom/samsung/android/media/soundshot/SemAudioVisualization;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder;->audioThread:Ljava/lang/Thread;

    const/16 v0, 0x10

    sput v0, Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder;->QURAM_RECORDER_BITS_PER_SAMPLE:I

    const v0, 0xac44

    sput v0, Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder;->QURAM_RECORDER_SAMPLERATE:I

    const/4 v0, 0x1

    sput v0, Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder;->QURAM_RECORDER_NUM_CHANNELS:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder;->mLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder;->visualization:[I

    iput v1, p0, Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder;->segIdx:I

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder;->qrecorder:Lcom/samsung/android/media/soundshot/SemAudioRecorder;

    new-instance v0, Lcom/samsung/android/media/soundshot/SemAudioVisualization;

    invoke-direct {v0}, Lcom/samsung/android/media/soundshot/SemAudioVisualization;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder;->visualizer:Lcom/samsung/android/media/soundshot/SemAudioVisualization;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder;->audio_window_frame:Ljava/util/ArrayList;

    iput-boolean v1, p0, Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder;->isRunning:Z

    const-wide/16 v0, 0xc8

    iput-wide v0, p0, Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder;->visualization_duration:J

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder;)Lcom/samsung/android/media/soundshot/SemAudioRecorder;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder;->qrecorder:Lcom/samsung/android/media/soundshot/SemAudioRecorder;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder;)J
    .locals 2

    iget-wide v0, p0, Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder;->visualization_duration:J

    return-wide v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder;)[I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder;->visualization:[I

    return-object v0
.end method

.method static synthetic access$202(Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder;[I)[I
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder;->visualization:[I

    return-object p1
.end method

.method static synthetic access$300(Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder;->isRunning:Z

    return v0
.end method

.method static synthetic access$302(Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder;->isRunning:Z

    return p1
.end method

.method static synthetic access$400(Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder;)J
    .locals 2

    iget-wide v0, p0, Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder;->time_t:J

    return-wide v0
.end method

.method static synthetic access$402(Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder;J)J
    .locals 1

    iput-wide p1, p0, Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder;->time_t:J

    return-wide p1
.end method

.method static synthetic access$500(Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder;)J
    .locals 2

    iget-wide v0, p0, Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder;->time_s:J

    return-wide v0
.end method

.method static synthetic access$502(Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder;J)J
    .locals 1

    iput-wide p1, p0, Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder;->time_s:J

    return-wide p1
.end method

.method static synthetic access$600(Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder;->readAudioStreamBufferSize:I

    return v0
.end method

.method static synthetic access$700(Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder;)[B
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder;->readAudioStreamBuffer:[B

    return-object v0
.end method

.method static synthetic access$802(Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder;I)I
    .locals 0

    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder;->segIdx:I

    return p1
.end method

.method static synthetic access$900(Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder;->releaseRecorder()V

    return-void
.end method

.method private getVisualizationAmplitude()I
    .locals 10

    const/4 v1, 0x0

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder;->visualization:[I

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder;->visualization:[I

    array-length v2, v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder;->segIdx:I

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder;->visualization:[I

    array-length v3, v3

    if-lt v2, v3, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder;->visualization:[I

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder;->segIdx:I

    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder;->visualization:[I

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder;->segIdx:I

    aget v0, v2, v3

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder;->segIdx:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder;->segIdx:I

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder;->segIdx:I

    const-wide/16 v4, 0xc8

    iget-wide v6, p0, Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder;->visualization_duration:J

    const-wide/16 v8, 0x2

    div-long/2addr v6, v8

    add-long/2addr v4, v6

    iget-wide v6, p0, Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder;->visualization_duration:J

    div-long/2addr v4, v6

    long-to-int v3, v4

    if-le v2, v3, :cond_3

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder;->segIdx:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder;->segIdx:I

    :cond_3
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder;->segIdx:I

    if-gtz v2, :cond_4

    iput v1, p0, Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder;->segIdx:I

    :cond_4
    move v1, v0

    goto :goto_0
.end method

.method private releaseRecorder()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder;->isRunning:Z

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder;->qrecorder:Lcom/samsung/android/media/soundshot/SemAudioRecorder;

    if-eqz v0, :cond_0

    const-string v0, "QURAM"

    const-string v1, "recorder release start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder;->qrecorder:Lcom/samsung/android/media/soundshot/SemAudioRecorder;

    invoke-virtual {v0}, Lcom/samsung/android/media/soundshot/SemAudioRecorder;->stop()V

    const-string v0, "QURAM"

    const-string v1, "recorder release end"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private writeAudioFrame()[B
    .locals 9

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder;->deleteOverTimeFrame()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder;->audio_window_frame:Ljava/util/ArrayList;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder;->audio_window_frame:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_2

    const/4 v5, 0x0

    :goto_0
    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder;->audio_window_frame:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_1

    const/4 v4, 0x0

    :try_start_0
    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder;->audio_window_frame:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/camera/shootingmode/util/QuramAudioFrameData;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v4, :cond_0

    iget-wide v6, v4, Lcom/sec/android/app/camera/shootingmode/util/QuramAudioFrameData;->frameDataEndTime:J

    cmp-long v6, v2, v6

    if-lez v6, :cond_0

    :try_start_1
    iget-object v6, v4, Lcom/sec/android/app/camera/shootingmode/util/QuramAudioFrameData;->frameData:[B

    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_0
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v6, "QuramAudioRecorder"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "writeAudioFrame : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/IndexOutOfBoundsException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    :goto_2
    return-object v6

    :catch_1
    move-exception v1

    const-string v6, "QuramAudioRecorder"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "writeAudioFrame : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    const/4 v6, 0x0

    goto :goto_2
.end method

.method private writeHeader([BIIII)[B
    .locals 8

    const/16 v3, 0x46

    const/16 v7, 0x20

    const/16 v6, 0x10

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/16 v2, 0x2c

    new-array v1, v2, [B

    array-length v2, p1

    add-int/lit8 v0, v2, 0x24

    const/16 v2, 0x52

    aput-byte v2, v1, v4

    const/16 v2, 0x49

    aput-byte v2, v1, v5

    const/4 v2, 0x2

    aput-byte v3, v1, v2

    const/4 v2, 0x3

    aput-byte v3, v1, v2

    const/4 v2, 0x4

    and-int/lit16 v3, v0, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    const/4 v2, 0x5

    shr-int/lit8 v3, v0, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    const/4 v2, 0x6

    shr-int/lit8 v3, v0, 0x10

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    const/4 v2, 0x7

    shr-int/lit8 v3, v0, 0x18

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    const/16 v2, 0x8

    const/16 v3, 0x57

    aput-byte v3, v1, v2

    const/16 v2, 0x9

    const/16 v3, 0x41

    aput-byte v3, v1, v2

    const/16 v2, 0xa

    const/16 v3, 0x56

    aput-byte v3, v1, v2

    const/16 v2, 0xb

    const/16 v3, 0x45

    aput-byte v3, v1, v2

    const/16 v2, 0xc

    const/16 v3, 0x66

    aput-byte v3, v1, v2

    const/16 v2, 0xd

    const/16 v3, 0x6d

    aput-byte v3, v1, v2

    const/16 v2, 0xe

    const/16 v3, 0x74

    aput-byte v3, v1, v2

    const/16 v2, 0xf

    aput-byte v7, v1, v2

    aput-byte v6, v1, v6

    const/16 v2, 0x11

    aput-byte v4, v1, v2

    const/16 v2, 0x12

    aput-byte v4, v1, v2

    const/16 v2, 0x13

    aput-byte v4, v1, v2

    const/16 v2, 0x14

    aput-byte v5, v1, v2

    const/16 v2, 0x15

    aput-byte v4, v1, v2

    const/16 v2, 0x16

    int-to-byte v3, p2

    aput-byte v3, v1, v2

    const/16 v2, 0x17

    aput-byte v4, v1, v2

    const/16 v2, 0x18

    and-int/lit16 v3, p3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    const/16 v2, 0x19

    shr-int/lit8 v3, p3, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    const/16 v2, 0x1a

    shr-int/lit8 v3, p3, 0x10

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    const/16 v2, 0x1b

    shr-int/lit8 v3, p3, 0x18

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    const/16 v2, 0x1c

    and-int/lit16 v3, p4, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    const/16 v2, 0x1d

    shr-int/lit8 v3, p4, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    const/16 v2, 0x1e

    shr-int/lit8 v3, p4, 0x10

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    const/16 v2, 0x1f

    shr-int/lit8 v3, p4, 0x18

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    mul-int v2, p5, p2

    div-int/lit8 v2, v2, 0x8

    int-to-byte v2, v2

    aput-byte v2, v1, v7

    const/16 v2, 0x21

    aput-byte v4, v1, v2

    const/16 v2, 0x22

    int-to-byte v3, p5

    aput-byte v3, v1, v2

    const/16 v2, 0x23

    aput-byte v4, v1, v2

    const/16 v2, 0x24

    const/16 v3, 0x64

    aput-byte v3, v1, v2

    const/16 v2, 0x25

    const/16 v3, 0x61

    aput-byte v3, v1, v2

    const/16 v2, 0x26

    const/16 v3, 0x74

    aput-byte v3, v1, v2

    const/16 v2, 0x27

    const/16 v3, 0x61

    aput-byte v3, v1, v2

    const/16 v2, 0x28

    array-length v3, p1

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    const/16 v2, 0x29

    array-length v3, p1

    shr-int/lit8 v3, v3, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    const/16 v2, 0x2a

    array-length v3, p1

    shr-int/lit8 v3, v3, 0x10

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    const/16 v2, 0x2b

    array-length v3, p1

    shr-int/lit8 v3, v3, 0x18

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    return-object v1
.end method


# virtual methods
.method public addRecord()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder;->readAudioStreamBuffer:[B

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder;->readAudioStreamBufferSize:I

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder;->addRecord([BI)V

    return-void
.end method

.method public addRecord([BI)V
    .locals 2

    new-instance v0, Lcom/sec/android/app/camera/shootingmode/util/QuramAudioFrameData;

    invoke-direct {v0}, Lcom/sec/android/app/camera/shootingmode/util/QuramAudioFrameData;-><init>()V

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/app/camera/shootingmode/util/QuramAudioFrameData;->setBuffer([BI)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder;->audio_window_frame:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public deleteAllRecord()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder;->audio_window_frame:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public deleteOverTimeFrame()V
    .locals 10

    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder;->audio_window_frame:Ljava/util/ArrayList;

    if-nez v5, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v4, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/4 v4, 0x0

    :goto_0
    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder;->audio_window_frame:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_2

    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder;->audio_window_frame:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/shootingmode/util/QuramAudioFrameData;

    const-wide/16 v6, 0x2328

    sub-long v6, v0, v6

    iget-wide v8, v2, Lcom/sec/android/app/camera/shootingmode/util/QuramAudioFrameData;->frameDataEndTime:J

    cmp-long v5, v6, v8

    if-gez v5, :cond_3

    :cond_2
    const/4 v3, 0x0

    :goto_1
    if-ge v3, v4, :cond_0

    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder;->deleteRecord(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method public deleteRecord(I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder;->audio_window_frame:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method public emptyBuffer()V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder;->deleteAllRecord()V

    return-void
.end method

.method public getRecordedAudioDuration()J
    .locals 12

    const-wide/16 v6, 0x2328

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder;->audio_window_frame:Ljava/util/ArrayList;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder;->audio_window_frame:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_1

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder;->audio_window_frame:Ljava/util/ArrayList;

    const/4 v8, 0x0

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/shootingmode/util/QuramAudioFrameData;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v8, v2, Lcom/sec/android/app/camera/shootingmode/util/QuramAudioFrameData;->frameDataEndTime:J

    sub-long v8, v0, v8

    const-wide/16 v10, 0xc8

    add-long v4, v8, v10

    cmp-long v3, v4, v6

    if-lez v3, :cond_0

    move-wide v4, v6

    :cond_0
    :goto_0
    return-wide v4

    :cond_1
    const-wide/16 v4, 0x0

    goto :goto_0
.end method

.method public getRecordedAudioStream()[B
    .locals 10

    const/4 v6, 0x0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder;->writeAudioFrame()[B

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    sget v2, Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder;->QURAM_RECORDER_NUM_CHANNELS:I

    sget v3, Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder;->QURAM_RECORDER_SAMPLERATE:I

    sget v0, Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder;->QURAM_RECORDER_SAMPLERATE:I

    sget v4, Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder;->QURAM_RECORDER_BITS_PER_SAMPLE:I

    mul-int/2addr v0, v4

    sget v4, Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder;->QURAM_RECORDER_NUM_CHANNELS:I

    mul-int/2addr v0, v4

    div-int/lit8 v4, v0, 0x8

    sget v5, Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder;->QURAM_RECORDER_BITS_PER_SAMPLE:I

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder;->writeHeader([BIIII)[B

    move-result-object v9

    :try_start_0
    new-instance v7, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v7}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {v7, v9}, Ljava/io/ByteArrayOutputStream;->write([B)V

    invoke-virtual {v7, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v6, v7

    :goto_1
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v8

    :goto_2
    const-string v0, "QuramAudioRecorder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getRecordedAudioStream : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_1
    move-exception v8

    move-object v6, v7

    goto :goto_2
.end method

.method public getRecordedAudioStream(Landroid/content/res/AssetFileDescriptor;)[B
    .locals 8

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const v5, 0x57800

    :try_start_0
    new-array v4, v5, [B

    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->createInputStream()Ljava/io/FileInputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :goto_0
    :try_start_1
    invoke-virtual {v2, v4}, Ljava/io/FileInputStream;->read([B)I

    move-result v3

    const/4 v5, -0x1

    if-eq v3, v5, :cond_0

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v5

    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->close()V

    throw v5
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v1

    const-string v5, "QuramAudioRecorder"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getRecordedAudioStream : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    return-object v5

    :cond_0
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1
.end method

.method public getVisualizationBands()[I
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder;->visualizer:Lcom/samsung/android/media/soundshot/SemAudioVisualization;

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder;->getVisualizationAmplitude()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/media/soundshot/SemAudioVisualization;->getVisualizationBands(I)[I

    move-result-object v0

    return-object v0
.end method

.method public readRecord()Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder;->qrecorder:Lcom/samsung/android/media/soundshot/SemAudioRecorder;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder;->qrecorder:Lcom/samsung/android/media/soundshot/SemAudioRecorder;

    invoke-virtual {v1}, Lcom/samsung/android/media/soundshot/SemAudioRecorder;->getBufferSize()I

    move-result v1

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder;->readAudioStreamBuffer:[B

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder;->qrecorder:Lcom/samsung/android/media/soundshot/SemAudioRecorder;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder;->readAudioStreamBuffer:[B

    invoke-virtual {v1, v2}, Lcom/samsung/android/media/soundshot/SemAudioRecorder;->read([B)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder;->readAudioStreamBufferSize:I

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder;->readAudioStreamBufferSize:I

    if-gez v1, :cond_1

    const-string v1, "QURAM"

    const-string v2, "error read buffer size is zero!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder;->readAudioStreamBufferSize:I

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setVisualizationDuration(J)V
    .locals 1

    iput-wide p1, p0, Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder;->visualization_duration:J

    return-void
.end method

.method public startRecorder()V
    .locals 6

    sget-object v2, Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-static {}, Lcom/samsung/android/media/soundshot/SemAudioRecorder;->getInstance()Lcom/samsung/android/media/soundshot/SemAudioRecorder;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder;->qrecorder:Lcom/samsung/android/media/soundshot/SemAudioRecorder;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder;->time_t:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder;->time_s:J

    sget-object v1, Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder;->audioThread:Ljava/lang/Thread;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder;->audioThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder;->isRunning:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    sget-object v1, Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder;->audioThread:Ljava/lang/Thread;

    const-wide/16 v4, 0x2710

    invoke-virtual {v1, v4, v5}, Ljava/lang/Thread;->join(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    const/4 v1, 0x1

    :try_start_2
    iput-boolean v1, p0, Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder;->isRunning:Z

    new-instance v1, Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder$1;-><init>(Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder;)V

    sput-object v1, Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder;->audioThread:Ljava/lang/Thread;

    sget-object v1, Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder;->audioThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    monitor-exit v2

    return-void

    :catch_0
    move-exception v0

    const-string v1, "QuramAudioRecorder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startRecorder : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public stopRecorder()V
    .locals 2

    const-string v0, "QURAM"

    const-string v1, "stopRecorder start"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder;->isRunning:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder;->isRunning:Z

    :cond_0
    const-string v0, "QURAM"

    const-string v1, "stopRecorder end"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public waitForAudioThread()V
    .locals 2

    const-string v0, "QURAM"

    const-string v1, "waitForAudioThread - start"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    sget-object v0, Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder;->audioThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder;->audioThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    const-string v0, "QURAM"

    const-string v1, "waitForAudioThread - end"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
