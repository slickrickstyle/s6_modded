.class final Lcom/sec/android/app/camera/engine/CommonEngine$RawPictureCallback;
.super Ljava/lang/Object;
.source "CommonEngine.java"

# interfaces
.implements Lcom/samsung/android/camera/core/SemCamera$PictureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/engine/CommonEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "RawPictureCallback"
.end annotation


# instance fields
.field private isJpegCallbackCompleted:Z

.field private isRawCallbackCompleted:Z

.field private mJpegData:[B

.field private mJpegInfo:Lcom/sec/android/app/camera/util/ImageStoringInfo;

.field private mRawFilePath:Ljava/lang/String;

.field final synthetic this$0:Lcom/sec/android/app/camera/engine/CommonEngine;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/camera/engine/CommonEngine;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/CommonEngine$RawPictureCallback;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/sec/android/app/camera/engine/CommonEngine$RawPictureCallback;->isRawCallbackCompleted:Z

    iput-boolean v1, p0, Lcom/sec/android/app/camera/engine/CommonEngine$RawPictureCallback;->isJpegCallbackCompleted:Z

    iput-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine$RawPictureCallback;->mRawFilePath:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine$RawPictureCallback;->mJpegData:[B

    iput-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine$RawPictureCallback;->mJpegInfo:Lcom/sec/android/app/camera/util/ImageStoringInfo;

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/camera/engine/CommonEngine;Lcom/sec/android/app/camera/engine/CommonEngine$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/engine/CommonEngine$RawPictureCallback;-><init>(Lcom/sec/android/app/camera/engine/CommonEngine;)V

    return-void
.end method

.method private getRawPictureSize(I)[I
    .locals 12

    const/4 v8, 0x2

    new-array v2, v8, [I

    fill-array-data v2, :array_0

    invoke-static {p1}, Lcom/sec/android/app/camera/util/CameraResolution;->getAspectRatio(I)D

    move-result-wide v0

    iget-object v8, p0, Lcom/sec/android/app/camera/engine/CommonEngine$RawPictureCallback;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-static {v8}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$2000(Lcom/sec/android/app/camera/engine/CommonEngine;)Lcom/samsung/android/camera/core/SemCamera$Parameters;

    move-result-object v8

    const-string v9, "dng-picture-size-values"

    invoke-virtual {v8, v9}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    const-string v8, ","

    invoke-virtual {v4, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v9, v3

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v9, :cond_0

    aget-object v5, v3, v8

    const-string v10, "x"

    invoke-virtual {v5, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    const/4 v10, 0x0

    const/4 v11, 0x0

    aget-object v11, v6, v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    aput v11, v2, v10

    const/4 v10, 0x1

    const/4 v11, 0x1

    aget-object v11, v6, v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    aput v11, v2, v10

    const/4 v10, 0x0

    aget v10, v2, v10

    const/4 v11, 0x1

    aget v11, v2, v11

    invoke-static {v10, v11}, Lcom/sec/android/app/camera/util/Util;->getAspectRatio(II)D

    move-result-wide v10

    invoke-static {v0, v1, v10, v11}, Lcom/sec/android/app/camera/util/Util;->doubleEquals(DD)Z

    move-result v10

    if-eqz v10, :cond_3

    :cond_0
    const/4 v8, 0x0

    aget v8, v2, v8

    if-eqz v8, :cond_1

    const/4 v8, 0x1

    aget v8, v2, v8

    if-nez v8, :cond_2

    :cond_1
    const-wide v8, 0x3ffc71c71c71c71cL    # 1.7777777777777777

    invoke-static {v0, v1, v8, v9}, Lcom/sec/android/app/camera/util/Util;->doubleEquals(DD)Z

    move-result v8

    if-eqz v8, :cond_4

    sget-object v7, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_RESOLUTION_16BY9_LARGE:Ljava/lang/String;

    :goto_1
    const/4 v8, 0x0

    invoke-static {v7}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Lcom/sec/android/app/camera/util/CameraResolution;->getIntWidth(I)I

    move-result v9

    aput v9, v2, v8

    const/4 v8, 0x1

    invoke-static {v7}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Lcom/sec/android/app/camera/util/CameraResolution;->getIntHeight(I)I

    move-result v9

    aput v9, v2, v8

    :cond_2
    const-string v8, "CommonEngine"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "RawPictureCallback.getRawPictureSize rawPictureSize="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x0

    aget v10, v2, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "x"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x1

    aget v10, v2, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    :cond_4
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    invoke-static {v0, v1, v8, v9}, Lcom/sec/android/app/camera/util/Util;->doubleEquals(DD)Z

    move-result v8

    if-eqz v8, :cond_5

    sget-object v7, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_RESOLUTION_1BY1_LARGE:Ljava/lang/String;

    goto :goto_1

    :cond_5
    sget-object v7, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_RESOLUTION_4BY3_LARGE:Ljava/lang/String;

    goto :goto_1

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method private insertToDBForRawImage(Ljava/lang/String;Ljava/lang/String;JI)V
    .locals 13

    const-string v7, "CommonEngine"

    const-string v8, "insertToDBForRawImage"

    invoke-static {v7, v8}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    iget-object v7, p0, Lcom/sec/android/app/camera/engine/CommonEngine$RawPictureCallback;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    iget-object v7, v7, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v7}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraResolution()I

    move-result v7

    invoke-direct {p0, v7}, Lcom/sec/android/app/camera/engine/CommonEngine$RawPictureCallback;->getRawPictureSize(I)[I

    move-result-object v3

    const/4 v7, 0x0

    aget v6, v3, v7

    const/4 v7, 0x1

    aget v1, v3, v7

    const-string v7, "title"

    iget-object v8, p0, Lcom/sec/android/app/camera/engine/CommonEngine$RawPictureCallback;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-static {v8, p2}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$6200(Lcom/sec/android/app/camera/engine/CommonEngine;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "_display_name"

    invoke-virtual {v5, v7, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "datetaken"

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v7, "date_modified"

    const-wide/16 v8, 0x3e8

    div-long v8, p3, v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v7, "mime_type"

    const-string v8, "image/x-adobe-dng"

    invoke-virtual {v5, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "_data"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "height"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v7, "width"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v7, "orientation"

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v7, "langagecode"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "addr"

    iget-object v8, p0, Lcom/sec/android/app/camera/engine/CommonEngine$RawPictureCallback;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-static {v8}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$4100(Lcom/sec/android/app/camera/engine/CommonEngine;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    iget-object v7, p0, Lcom/sec/android/app/camera/engine/CommonEngine$RawPictureCallback;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    iget-object v7, v7, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/sec/android/app/camera/engine/CommonEngine$RawPictureCallback;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    iget-object v7, v7, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v7}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCurrentLocation()Landroid/location/Location;

    move-result-object v2

    :cond_0
    if-eqz v2, :cond_1

    const-string v7, "latitude"

    invoke-virtual {v2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v8

    double-to-float v8, v8

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    const-string v7, "longitude"

    invoke-virtual {v2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v8

    double-to-float v8, v8

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    :cond_1
    const-string v7, "_size"

    new-instance v8, Ljava/io/File;

    invoke-direct {v8, p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->length()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :try_start_0
    const-string v7, "DB Insert"

    invoke-static {v7}, Lcom/sec/android/app/TraceWrapper;->traceBegin(Ljava/lang/String;)V

    const-string v7, "AXLOG"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "DB Insert**StartU["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]**"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/sec/android/app/camera/engine/CommonEngine$RawPictureCallback;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-static {v7}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$4200(Lcom/sec/android/app/camera/engine/CommonEngine;)Landroid/content/ContentResolver;

    move-result-object v7

    sget-object v8, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v7, v8, v5}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    const-string v7, "AXLOG"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "DB Insert**EndU["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]**"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/app/TraceWrapper;->traceEnd()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-void

    :catch_0
    move-exception v4

    const-string v7, "CommonEngine"

    const-string v8, "Not enough space in database"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/sec/android/app/camera/engine/CommonEngine$RawPictureCallback;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    iget-object v7, v7, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const v8, 0x7f0a01bc

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Lcom/sec/android/app/camera/widget/CameraToast;->makeText(Lcom/sec/android/app/camera/interfaces/CameraContext;II)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v7, "CommonEngine"

    const-string v8, "ContentResolver insert failed"

    invoke-static {v7, v8}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private storeRawImage(Ljava/lang/String;Lcom/sec/android/app/camera/util/ImageStoringInfo;)V
    .locals 7

    const-string v1, "CommonEngine"

    const-string v2, "RawPictureCallback.storeRawImage"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CommonEngine$RawPictureCallback;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {p2}, Lcom/sec/android/app/camera/util/ImageStoringInfo;->getFileName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/sec/android/app/camera/util/ImageStoringInfo;->getDirectory()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v4}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$6300(Lcom/sec/android/app/camera/engine/CommonEngine;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    const-string v4, ".jpg"

    invoke-virtual {v0, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".dng"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CommonEngine$RawPictureCallback;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/sec/android/app/camera/util/ImageStoringInfo;->getDirectory()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, p1, v2}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$6400(Lcom/sec/android/app/camera/engine/CommonEngine;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/sec/android/app/camera/util/ImageStoringInfo;->getDirectory()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/sec/android/app/camera/util/ImageStoringInfo;->getDateTaken()J

    move-result-wide v4

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CommonEngine$RawPictureCallback;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    iget-object v6, p0, Lcom/sec/android/app/camera/engine/CommonEngine$RawPictureCallback;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-static {v6}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$4000(Lcom/sec/android/app/camera/engine/CommonEngine;)I

    move-result v6

    invoke-virtual {v1, v6}, Lcom/sec/android/app/camera/engine/CommonEngine;->calculateOrientationForPicture(I)I

    move-result v6

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/app/camera/engine/CommonEngine$RawPictureCallback;->insertToDBForRawImage(Ljava/lang/String;Ljava/lang/String;JI)V

    return-void
.end method


# virtual methods
.method public handleJpegPictureTaken([BLcom/sec/android/app/camera/util/ImageStoringInfo;)V
    .locals 2

    const-string v0, "CommonEngine"

    const-string v1, "RawPictureCallback.handleJpegPictureTaken"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine$RawPictureCallback;->isJpegCallbackCompleted:Z

    iget-boolean v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine$RawPictureCallback;->isRawCallbackCompleted:Z

    if-eqz v0, :cond_1

    const-string v0, "CommonEngine"

    const-string v1, "Both JPEG and RAW callback state are completed"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine$RawPictureCallback;->mRawFilePath:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine$RawPictureCallback;->mRawFilePath:Ljava/lang/String;

    invoke-direct {p0, v0, p2}, Lcom/sec/android/app/camera/engine/CommonEngine$RawPictureCallback;->storeRawImage(Ljava/lang/String;Lcom/sec/android/app/camera/util/ImageStoringInfo;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-object p1, p0, Lcom/sec/android/app/camera/engine/CommonEngine$RawPictureCallback;->mJpegData:[B

    iput-object p2, p0, Lcom/sec/android/app/camera/engine/CommonEngine$RawPictureCallback;->mJpegInfo:Lcom/sec/android/app/camera/util/ImageStoringInfo;

    goto :goto_0
.end method

.method public initialize()V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    const-string v1, "CommonEngine"

    const-string v2, "RawPictureCallback.initialize"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v4, p0, Lcom/sec/android/app/camera/engine/CommonEngine$RawPictureCallback;->isRawCallbackCompleted:Z

    iput-boolean v4, p0, Lcom/sec/android/app/camera/engine/CommonEngine$RawPictureCallback;->isJpegCallbackCompleted:Z

    iput-object v3, p0, Lcom/sec/android/app/camera/engine/CommonEngine$RawPictureCallback;->mRawFilePath:Ljava/lang/String;

    iput-object v3, p0, Lcom/sec/android/app/camera/engine/CommonEngine$RawPictureCallback;->mJpegData:[B

    iput-object v3, p0, Lcom/sec/android/app/camera/engine/CommonEngine$RawPictureCallback;->mJpegInfo:Lcom/sec/android/app/camera/util/ImageStoringInfo;

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CommonEngine$RawPictureCallback;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-static {v1}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$700(Lcom/sec/android/app/camera/engine/CommonEngine;)Lcom/samsung/android/camera/core/SemCamera;

    move-result-object v1

    const/16 v2, 0x100

    new-array v2, v2, [B

    invoke-virtual {v1, v2}, Lcom/samsung/android/camera/core/SemCamera;->addRawImageCallbackBuffer([B)V

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CommonEngine$RawPictureCallback;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-static {v1}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$5700(Lcom/sec/android/app/camera/engine/CommonEngine;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CommonEngine$RawPictureCallback;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-static {v1}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$2000(Lcom/sec/android/app/camera/engine/CommonEngine;)Lcom/samsung/android/camera/core/SemCamera$Parameters;

    move-result-object v1

    const-string v2, "capture-raw-filepath"

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public isRawPictureCallbackCompleted()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine$RawPictureCallback;->isRawCallbackCompleted:Z

    return v0
.end method

.method public onPictureTaken([BLcom/samsung/android/camera/core/SemCamera;)V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x6

    const/4 v4, 0x3

    const-string v1, "CommonEngine"

    const-string v2, "RawPictureCallback.onPictureTaken"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CommonEngine$RawPictureCallback;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/engine/CommonEngine;->mCurrentState:Lcom/sec/android/app/camera/engine/AbstractCeState;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/engine/AbstractCeState;->getId()I

    move-result v1

    if-ne v1, v5, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CommonEngine$RawPictureCallback;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-static {v1}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$5800(Lcom/sec/android/app/camera/engine/CommonEngine;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "CommonEngine"

    const-string v2, "Returned because RawPictureFormat is not enabled"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/app/camera/engine/CommonEngine$RawPictureCallback;->isRawCallbackCompleted:Z

    iget-boolean v1, p0, Lcom/sec/android/app/camera/engine/CommonEngine$RawPictureCallback;->isJpegCallbackCompleted:Z

    if-eqz v1, :cond_7

    const-string v1, "CommonEngine"

    const-string v2, "Both JPEG and RAW callback state are completed"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_3

    new-instance v0, Ljava/lang/String;

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CommonEngine$RawPictureCallback;->mJpegInfo:Lcom/sec/android/app/camera/util/ImageStoringInfo;

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/camera/util/Util;->convertVirtualFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/engine/CommonEngine$RawPictureCallback;->mJpegInfo:Lcom/sec/android/app/camera/util/ImageStoringInfo;

    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/camera/engine/CommonEngine$RawPictureCallback;->storeRawImage(Ljava/lang/String;Lcom/sec/android/app/camera/util/ImageStoringInfo;)V

    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CommonEngine$RawPictureCallback;->mJpegData:[B

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CommonEngine$RawPictureCallback;->mJpegInfo:Lcom/sec/android/app/camera/util/ImageStoringInfo;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CommonEngine$RawPictureCallback;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    iget-object v2, p0, Lcom/sec/android/app/camera/engine/CommonEngine$RawPictureCallback;->mJpegData:[B

    iget-object v3, p0, Lcom/sec/android/app/camera/engine/CommonEngine$RawPictureCallback;->mJpegInfo:Lcom/sec/android/app/camera/util/ImageStoringInfo;

    invoke-static {v1, v2, v3}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$5900(Lcom/sec/android/app/camera/engine/CommonEngine;[BLcom/sec/android/app/camera/util/ImageStoringInfo;)V

    iput-object v6, p0, Lcom/sec/android/app/camera/engine/CommonEngine$RawPictureCallback;->mJpegData:[B

    iput-object v6, p0, Lcom/sec/android/app/camera/engine/CommonEngine$RawPictureCallback;->mJpegInfo:Lcom/sec/android/app/camera/util/ImageStoringInfo;

    :cond_4
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CommonEngine$RawPictureCallback;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/engine/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/engine/CeRequestQueue;

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/engine/CeRequestQueue;->isFirstRequest(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CommonEngine$RawPictureCallback;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/engine/CommonEngine;->mStateMessageHandler:Lcom/sec/android/app/camera/engine/CommonEngine$StateMessageHandler;

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/engine/CommonEngine$StateMessageHandler;->sendEmptyMessage(I)Z

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CommonEngine$RawPictureCallback;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-static {v1}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$4300(Lcom/sec/android/app/camera/engine/CommonEngine;)Lcom/sec/android/app/camera/interfaces/Engine$SingleCaptureEventListener;

    move-result-object v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CommonEngine$RawPictureCallback;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-static {v1}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$4300(Lcom/sec/android/app/camera/engine/CommonEngine;)Lcom/sec/android/app/camera/interfaces/Engine$SingleCaptureEventListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine$SingleCaptureEventListener;->onSingleCaptureCompleted()V

    :cond_5
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CommonEngine$RawPictureCallback;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-static {v1}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$6000(Lcom/sec/android/app/camera/engine/CommonEngine;)I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CommonEngine$RawPictureCallback;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-static {v1}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$6008(Lcom/sec/android/app/camera/engine/CommonEngine;)I

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CommonEngine$RawPictureCallback;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-static {v1}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$6000(Lcom/sec/android/app/camera/engine/CommonEngine;)I

    move-result v1

    if-le v1, v4, :cond_6

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CommonEngine$RawPictureCallback;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$6002(Lcom/sec/android/app/camera/engine/CommonEngine;I)I

    goto/16 :goto_0

    :cond_6
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CommonEngine$RawPictureCallback;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-static {v1}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$6100(Lcom/sec/android/app/camera/engine/CommonEngine;)V

    goto/16 :goto_0

    :cond_7
    const-string v1, "CommonEngine"

    const-string v2, "RawPictureCallback.onPictureTaken - JPEG callback state is not completed"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    new-instance v0, Ljava/lang/String;

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/camera/util/Util;->convertVirtualFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/camera/engine/CommonEngine$RawPictureCallback;->mRawFilePath:Ljava/lang/String;

    goto/16 :goto_0
.end method
