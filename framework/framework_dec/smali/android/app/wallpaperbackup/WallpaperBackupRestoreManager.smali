.class public Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager;
.super Ljava/lang/Object;
.source "WallpaperBackupRestoreManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ERR_CODE;,
        Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$RESULT_CODE;,
        Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperData;
    }
.end annotation


# static fields
.field public static final CROP_IMAGE_BACKUP:I = 0x0

.field private static final ERROR_KEY:Ljava/lang/String; = "ERR_CODE"

.field private static final EXTRA_ERR_CODE:Ljava/lang/String; = "EXTRA_ERR_CODE"

.field private static final HIGH:I = 0x1

.field private static final IMAGE_FILE_NAME:Ljava/lang/String; = "wallpaper.png"

.field private static final IMAGE_FOLDER_NAME:Ljava/lang/String; = "wallpaper"

.field private static final IMAGE_ORI_FOLDER_NAME:Ljava/lang/String; = "wallpaper_original"

.field private static final LOCK_IMAGE_FILE_NAME:Ljava/lang/String; = "lockscreen_wallpaper.jpg"

.field private static final NORMAL:I = 0x0

.field public static final ORIGINAL_IMAGE_BACKUP:I = 0x1

.field private static final PERMISSION_COM_WSSNPS:Ljava/lang/String; = "com.wssnps.permission.COM_WSSNPS"

.field private static final REQUIRED_SIZE_KEY:Ljava/lang/String; = "REQ_SIZE"

.field private static final REQ_MINIMUM_SIZE:I = 0xa00000

.field private static final REQ_SUCCESS_SIZE:I = 0x0

.field private static final RESPONSE_BACKUP_LOCKSCREEN:Ljava/lang/String; = "com.samsung.android.intent.action.RESPONSE_BACKUP_LOCKSCREEN"

.field private static final RESPONSE_BACKUP_WALLPAPER:Ljava/lang/String; = "com.samsung.android.intent.action.RESPONSE_BACKUP_WALLPAPER"

.field private static final RESPONSE_RESTORE_LOCKSCREEN:Ljava/lang/String; = "com.samsung.android.intent.action.RESPONSE_RESTORE_LOCKSCREEN"

.field private static final RESPONSE_RESTORE_WALLPAPER:Ljava/lang/String; = "com.samsung.android.intent.action.RESPONSE_RESTORE_WALLPAPER"

.field private static final RESULT_KEY:Ljava/lang/String; = "RESULT"

.field private static final SESSION_TIME_KEY:Ljava/lang/String; = "EXPORT_SESSION_TIME"

.field private static final SETTINGS_SYSTEMUI_TRANSPARENCY:Ljava/lang/String; = "android.wallpaper.settings_systemui_transparency"

.field private static final SOURCE_KEY:Ljava/lang/String; = "SOURCE"

.field public static final SUPPORT_ORIGINAL_IMAGE_BACKUP_RESTORE:Z = false

.field private static final TAG:Ljava/lang/String; = "WallpaperBackupRestoreManager"

.field private static final WALLPAPERCROPPER2_LOCK_FILE_PATH:Ljava/lang/String; = "/Android/data/com.sec.android.wallpapercropper2/files/original_file_lock.jpg"

.field private static final WALLPAPERCROPPER2_LOCK_XML_FILE_PATH:Ljava/lang/String; = "/Android/data/com.sec.android.wallpapercropper2/files/backup_lock.xml"

.field private static final WALLPAPERCROPPER2_SYSTEM_FILE_PATH:Ljava/lang/String; = "/Android/data/com.sec.android.wallpapercropper2/files/original_file_home.jpg"

.field private static final WALLPAPERCROPPER2_SYSTEM_XML_FILE_PATH:Ljava/lang/String; = "/Android/data/com.sec.android.wallpapercropper2/files/backup_home.xml"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private copyBitmapToFile(Ljava/lang/String;Landroid/graphics/Bitmap;)Z
    .locals 7

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    :cond_0
    const/4 v4, 0x0

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_1

    :try_start_1
    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v6, 0x64

    invoke-virtual {p2, v5, v6, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v4, 0x1

    :goto_0
    invoke-virtual {p0, v3}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager;->closeSilently(Ljava/io/Closeable;)V

    move-object v2, v3

    :goto_1
    return v4

    :cond_1
    :try_start_2
    const-string/jumbo v5, "WallpaperBackupRestoreManager"

    const-string/jumbo v6, "out is null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v2, v3

    :goto_2
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-virtual {p0, v2}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_1

    :catchall_0
    move-exception v5

    :goto_3
    invoke-virtual {p0, v2}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager;->closeSilently(Ljava/io/Closeable;)V

    throw v5

    :catchall_1
    move-exception v5

    move-object v2, v3

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_2
.end method

.method private copyEncryptBitmapToFile(Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;)Z
    .locals 9

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->mkdirs()Z

    :cond_0
    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x0

    :try_start_0
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-direct {p0, v4, p3}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager;->encryptStream(Ljava/io/OutputStream;Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object v5

    sget-object v7, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v8, 0x64

    invoke-virtual {p2, v7, v8, v5}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v6, 0x1

    invoke-virtual {p0, v5}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager;->closeSilently(Ljava/io/Closeable;)V

    invoke-virtual {p0, v4}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager;->closeSilently(Ljava/io/Closeable;)V

    move-object v3, v4

    :goto_0
    return v6

    :catch_0
    move-exception v1

    :goto_1
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {p0, v5}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager;->closeSilently(Ljava/io/Closeable;)V

    invoke-virtual {p0, v3}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    :catch_1
    move-exception v0

    :goto_2
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-virtual {p0, v5}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager;->closeSilently(Ljava/io/Closeable;)V

    invoke-virtual {p0, v3}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_0
    move-exception v7

    :goto_3
    invoke-virtual {p0, v5}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager;->closeSilently(Ljava/io/Closeable;)V

    invoke-virtual {p0, v3}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager;->closeSilently(Ljava/io/Closeable;)V

    throw v7

    :catchall_1
    move-exception v7

    move-object v3, v4

    goto :goto_3

    :catch_2
    move-exception v0

    move-object v3, v4

    goto :goto_2

    :catch_3
    move-exception v1

    move-object v3, v4

    goto :goto_1
.end method

.method private copyEncryptFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 17

    const-string/jumbo v14, "WallpaperBackupRestoreManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "copyEncryptFile sourceImagePath="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, " destImagePath="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Ljava/io/File;

    move-object/from16 v0, p2

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v14

    if-nez v14, :cond_0

    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v14

    invoke-virtual {v14}, Ljava/io/File;->mkdirs()Z

    :cond_0
    const/4 v13, 0x0

    const-wide/16 v10, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    :try_start_0
    new-instance v6, Ljava/io/FileInputStream;

    move-object/from16 v0, p1

    invoke-direct {v6, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v8, Ljava/io/FileOutputStream;

    move-object/from16 v0, p2

    invoke-direct {v8, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v8, v1}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager;->encryptStream(Ljava/io/OutputStream;Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object v9

    const/4 v12, 0x0

    const/16 v14, 0x400

    new-array v2, v14, [B

    :goto_0
    const/4 v14, 0x0

    const/16 v15, 0x400

    invoke-virtual {v6, v2, v14, v15}, Ljava/io/FileInputStream;->read([BII)I

    move-result v12

    const/4 v14, -0x1

    if-eq v12, v14, :cond_1

    const/4 v14, 0x0

    invoke-virtual {v9, v2, v14, v12}, Ljava/io/OutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catch_0
    move-exception v3

    move-object v7, v8

    move-object v5, v6

    :goto_1
    :try_start_3
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager;->closeSilently(Ljava/io/Closeable;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager;->closeSilently(Ljava/io/Closeable;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager;->closeSilently(Ljava/io/Closeable;)V

    return v14

    :cond_1
    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager;->closeSilently(Ljava/io/Closeable;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager;->closeSilently(Ljava/io/Closeable;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager;->closeSilently(Ljava/io/Closeable;)V

    return v14

    :catchall_0
    move-exception v14

    :goto_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager;->closeSilently(Ljava/io/Closeable;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager;->closeSilently(Ljava/io/Closeable;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager;->closeSilently(Ljava/io/Closeable;)V

    throw v14

    :catchall_1
    move-exception v14

    move-object v5, v6

    goto :goto_2

    :catchall_2
    move-exception v14

    move-object v7, v8

    move-object v5, v6

    goto :goto_2

    :catch_1
    move-exception v3

    goto :goto_1

    :catch_2
    move-exception v3

    move-object v5, v6

    goto :goto_1
.end method

.method private createBackupCurrentWallpaperFile(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Z
    .locals 8

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    if-ne p2, v6, :cond_3

    invoke-static {p1}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/WallpaperManager;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-direct {p0, v2}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_4

    const-string/jumbo v4, "WallpaperBackupRestoreManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "bitmap is null. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_1
    if-eqz v1, :cond_1

    invoke-direct {p0, p2, p5, p3, v7}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager;->createBackupWallpaperXmlFile(ILjava/lang/String;Ljava/lang/String;I)V

    :cond_1
    return v1

    :cond_2
    const-string/jumbo v4, "WallpaperBackupRestoreManager"

    const-string/jumbo v5, "wallpaperDrawable is null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    invoke-direct {p0, p1}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager;->getWallpaperLockBitmap(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :cond_4
    if-nez p6, :cond_5

    invoke-direct {p0, p4, v0}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager;->copyBitmapToFile(Ljava/lang/String;Landroid/graphics/Bitmap;)Z

    move-result v1

    goto :goto_1

    :cond_5
    if-ne p6, v6, :cond_0

    invoke-direct {p0, p4, v0, p7}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager;->copyEncryptBitmapToFile(Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;)Z

    move-result v1

    goto :goto_1
.end method

.method private createBackupFile(Landroid/content/Context;ILjava/lang/String;ILjava/lang/String;)Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$RESULT_CODE;
    .locals 10

    const-string/jumbo v0, "WallpaperBackupRestoreManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "createBackupFile() which="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " basePath="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    const-string/jumbo v5, "wallpaper/wallpaper.png"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "wallpaper.xml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager;->deleteFile(Ljava/lang/String;)V

    invoke-direct {p0, v8}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager;->deleteFile(Ljava/lang/String;)V

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v6, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager;->createBackupCurrentWallpaperFile(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    sget-object v0, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$RESULT_CODE;->RESULT_OK:Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$RESULT_CODE;

    :goto_1
    return-object v0

    :cond_0
    const-string/jumbo v5, "wallpaper/lockscreen_wallpaper.jpg"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "lockscreen.xml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    :cond_1
    sget-object v0, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$RESULT_CODE;->RESULT_FAIL:Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$RESULT_CODE;

    goto :goto_1
.end method

.method private createBackupOriginalWallpaperFile(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Z
    .locals 7

    const/4 v6, 0x1

    const/4 v1, 0x0

    if-ne p2, v6, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "/Android/data/com.sec.android.wallpapercropper2/files/original_file_home.jpg"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    const/4 v2, 0x0

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v3

    if-eqz v3, :cond_4

    const-string/jumbo v3, "WallpaperBackupRestoreManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "original image file exists. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p6, :cond_3

    invoke-virtual {p0, v1, p4}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager;->copyFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    :cond_0
    :goto_1
    if-eqz v2, :cond_1

    invoke-direct {p0, p2, p5, p3, v6}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager;->createBackupWallpaperXmlFile(ILjava/lang/String;Ljava/lang/String;I)V

    :cond_1
    return v2

    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "/Android/data/com.sec.android.wallpapercropper2/files/original_file_lock.jpg"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_3
    if-ne p6, v6, :cond_0

    invoke-direct {p0, v1, p4, p7}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager;->copyEncryptFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    goto :goto_1

    :cond_4
    const-string/jumbo v3, "WallpaperBackupRestoreManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "original image file does not exists. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private createBackupWallpaperXmlFile(ILjava/lang/String;Ljava/lang/String;I)V
    .locals 9

    const/16 v6, 0x65

    const/4 v1, 0x0

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    new-instance v0, Landroid/app/wallpaperbackup/WallpaperUser;

    const-string/jumbo v4, ""

    const-string/jumbo v5, ""

    move v2, v1

    move-object v3, p2

    invoke-direct/range {v0 .. v6}, Landroid/app/wallpaperbackup/WallpaperUser;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    :goto_0
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v7, Landroid/app/wallpaperbackup/GenerateXML;

    invoke-direct {v7, v8}, Landroid/app/wallpaperbackup/GenerateXML;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v7, p3, p1, p4}, Landroid/app/wallpaperbackup/GenerateXML;->createResultFile(Ljava/lang/String;II)V

    return-void

    :cond_0
    new-instance v0, Landroid/app/wallpaperbackup/WallpaperUser;

    const-string/jumbo v3, ""

    const-string/jumbo v4, ""

    move v2, v1

    move-object v5, p2

    invoke-direct/range {v0 .. v6}, Landroid/app/wallpaperbackup/WallpaperUser;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private decryptStream(Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 13

    const/4 v7, 0x0

    :try_start_0
    const-string/jumbo v12, "AES/CBC/PKCS5Padding"

    invoke-static {v12}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/crypto/Cipher;->getBlockSize()I

    move-result v12

    new-array v6, v12, [B

    invoke-virtual {p1, v6}, Ljava/io/InputStream;->read([B)I

    new-instance v11, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v11, v6}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    const/16 v12, 0x10

    new-array v9, v12, [B

    invoke-virtual {p1, v9}, Ljava/io/InputStream;->read([B)I

    invoke-direct {p0, v9, p2}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager;->generatePBKDF2SecretKey([BLjava/lang/String;)Ljavax/crypto/spec/SecretKeySpec;

    move-result-object v10

    if-eqz v10, :cond_0

    const/4 v12, 0x2

    invoke-virtual {v0, v12, v10, v11}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    new-instance v8, Ljavax/crypto/CipherInputStream;

    invoke-direct {v8, p1, v0}, Ljavax/crypto/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v7, v8

    :cond_0
    :goto_0
    return-object v7

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :catch_3
    move-exception v5

    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :catch_4
    move-exception v4

    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private deleteFile(Ljava/lang/String;)V
    .locals 3

    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 6

    const/4 v5, 0x0

    instance-of v2, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_0

    nop

    nop

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    return-object v2

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    invoke-virtual {p1, v5, v5, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-object v0
.end method

.method private encryptStream(Ljava/io/OutputStream;Ljava/lang/String;)Ljava/io/OutputStream;
    .locals 13

    const/4 v7, 0x0

    :try_start_0
    const-string/jumbo v12, "AES/CBC/PKCS5Padding"

    invoke-static {v12}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/crypto/Cipher;->getBlockSize()I

    move-result v12

    new-array v6, v12, [B

    new-instance v12, Ljava/security/SecureRandom;

    invoke-direct {v12}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v12, v6}, Ljava/security/SecureRandom;->nextBytes([B)V

    new-instance v11, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v11, v6}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    invoke-virtual {p1, v6}, Ljava/io/OutputStream;->write([B)V

    invoke-direct {p0}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager;->generateEncryptSalt()[B

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/OutputStream;->write([B)V

    invoke-direct {p0, v9, p2}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager;->generatePBKDF2SecretKey([BLjava/lang/String;)Ljavax/crypto/spec/SecretKeySpec;

    move-result-object v10

    if-eqz v10, :cond_0

    const/4 v12, 0x1

    invoke-virtual {v0, v12, v10, v11}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    new-instance v8, Ljavax/crypto/CipherOutputStream;

    invoke-direct {v8, p1, v0}, Ljavax/crypto/CipherOutputStream;-><init>(Ljava/io/OutputStream;Ljavax/crypto/Cipher;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v7, v8

    :cond_0
    :goto_0
    return-object v7

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :catch_3
    move-exception v5

    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :catch_4
    move-exception v4

    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private generateEncryptSalt()[B
    .locals 3

    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    const/16 v2, 0x10

    new-array v0, v2, [B

    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    return-object v0
.end method

.method private generatePBKDF2SecretKey([BLjava/lang/String;)Ljavax/crypto/spec/SecretKeySpec;
    .locals 12

    const/16 v3, 0x3e8

    const/16 v6, 0x100

    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    const/4 v8, 0x0

    :try_start_0
    const-string/jumbo v10, "PBKDF2WithHmacSHA1"

    invoke-static {v10}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v5

    new-instance v7, Ljavax/crypto/spec/PBEKeySpec;

    invoke-direct {v7, v0, p1, v3, v6}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C[BII)V

    invoke-virtual {v5, v7}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v4

    new-instance v9, Ljavax/crypto/spec/SecretKeySpec;

    invoke-interface {v4}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v10

    const-string/jumbo v11, "AES"

    invoke-direct {v9, v10, v11}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v8, v9

    :goto_0
    return-object v8

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private getAttributeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I
    .locals 2

    const/4 v1, 0x0

    invoke-interface {p1, v1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return p3

    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method private getWallpaperLockBitmap(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 7

    const/4 v0, 0x0

    invoke-static {p1}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v4

    invoke-virtual {p1}, Landroid/content/Context;->getUserId()I

    move-result v5

    const/4 v6, 0x2

    invoke-virtual {v4, v6, v5}, Landroid/app/WallpaperManager;->getWallpaperFile(II)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    if-eqz v2, :cond_0

    :try_start_0
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v5, v6, v3}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    :try_start_1
    const-string/jumbo v5, "WallpaperBackupRestoreManager"

    const-string/jumbo v6, "Can\'t decode file"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_0

    :catchall_0
    move-exception v5

    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v5
.end method

.method private isLiveWallpaper(Landroid/content/Context;)Z
    .locals 3

    invoke-static {p1}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/WallpaperManager;->getWallpaperInfo()Landroid/app/WallpaperInfo;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v2, 0x0

    return v2

    :cond_0
    const/4 v2, 0x1

    return v2
.end method

.method private loadSettingsLocked(I)Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperData;
    .locals 23

    const/4 v11, 0x0

    const/16 v19, 0x1

    move/from16 v0, p1

    move/from16 v1, v19

    if-ne v0, v1, :cond_1

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, "/Android/data/com.sec.android.wallpapercropper2/files/backup_home.xml"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    :goto_0
    new-instance v9, Lcom/android/internal/util/JournaledFile;

    new-instance v19, Ljava/io/File;

    move-object/from16 v0, v19

    invoke-direct {v0, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v20, Ljava/io/File;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, ".tmp"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v9, v0, v1}, Lcom/android/internal/util/JournaledFile;-><init>(Ljava/io/File;Ljava/io/File;)V

    invoke-virtual {v9}, Lcom/android/internal/util/JournaledFile;->chooseForRead()Ljava/io/File;

    move-result-object v8

    const/4 v12, 0x0

    const/16 v17, 0x0

    const/4 v14, 0x0

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v19

    if-eqz v19, :cond_3

    :try_start_0
    new-instance v13, Ljava/io/FileInputStream;

    invoke-direct {v13, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v10

    sget-object v19, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual/range {v19 .. v19}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-interface {v10, v13, v0}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_c
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_e
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_10

    move-object/from16 v18, v17

    :goto_1
    :try_start_2
    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v16

    const/16 v19, 0x2

    move/from16 v0, v16

    move/from16 v1, v19

    if-ne v0, v1, :cond_7

    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v15

    if-nez v18, :cond_6

    new-instance v17, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperData;

    invoke-direct/range {v17 .. v17}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperData;-><init>()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_9
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_b
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_d
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_f
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_11

    :goto_2
    const/16 v19, 0x1

    move/from16 v0, p1

    move/from16 v1, v19

    if-ne v0, v1, :cond_2

    :try_start_3
    const-string/jumbo v19, "hw"

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v10, v1}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager;->parseWallpaperAttributes(Lorg/xmlpull/v1/XmlPullParser;Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperData;)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_c
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_e
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_10

    :cond_0
    :goto_3
    const/16 v19, 0x1

    move/from16 v0, v16

    move/from16 v1, v19

    if-eq v0, v1, :cond_4

    move-object/from16 v18, v17

    goto :goto_1

    :cond_1
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, "/Android/data/com.sec.android.wallpapercropper2/files/backup_lock.xml"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_0

    :cond_2
    :try_start_4
    const-string/jumbo v19, "lw"

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v10, v1}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager;->parseWallpaperAttributes(Lorg/xmlpull/v1/XmlPullParser;Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperData;)V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_8
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_c
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_e
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_10

    goto :goto_3

    :catch_0
    move-exception v2

    move-object v12, v13

    :goto_4
    const-string/jumbo v19, "WallpaperBackupRestoreManager"

    const-string/jumbo v20, "no current wallpaper"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5
    invoke-static {v12}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    :cond_3
    if-eqz v14, :cond_5

    const-string/jumbo v19, "WallpaperBackupRestoreManager"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "success parsing xml. "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v17

    :cond_4
    const/4 v14, 0x1

    move-object v12, v13

    goto :goto_5

    :catch_1
    move-exception v4

    :goto_6
    const-string/jumbo v19, "WallpaperBackupRestoreManager"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "failed parsing "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, " "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :catch_2
    move-exception v3

    :goto_7
    const-string/jumbo v19, "WallpaperBackupRestoreManager"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "failed parsing "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, " "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :catch_3
    move-exception v7

    :goto_8
    const-string/jumbo v19, "WallpaperBackupRestoreManager"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "failed parsing "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, " "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    :catch_4
    move-exception v6

    :goto_9
    const-string/jumbo v19, "WallpaperBackupRestoreManager"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "failed parsing "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, " "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    :catch_5
    move-exception v5

    :goto_a
    const-string/jumbo v19, "WallpaperBackupRestoreManager"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "failed parsing "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, " "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    :cond_5
    const/16 v19, 0x0

    return-object v19

    :catch_6
    move-exception v2

    goto/16 :goto_4

    :catch_7
    move-exception v2

    move-object/from16 v17, v18

    move-object v12, v13

    goto/16 :goto_4

    :catch_8
    move-exception v5

    move-object v12, v13

    goto :goto_a

    :catch_9
    move-exception v5

    move-object/from16 v17, v18

    move-object v12, v13

    goto :goto_a

    :catch_a
    move-exception v6

    move-object v12, v13

    goto :goto_9

    :catch_b
    move-exception v6

    move-object/from16 v17, v18

    move-object v12, v13

    goto :goto_9

    :catch_c
    move-exception v7

    move-object v12, v13

    goto/16 :goto_8

    :catch_d
    move-exception v7

    move-object/from16 v17, v18

    move-object v12, v13

    goto/16 :goto_8

    :catch_e
    move-exception v3

    move-object v12, v13

    goto/16 :goto_7

    :catch_f
    move-exception v3

    move-object/from16 v17, v18

    move-object v12, v13

    goto/16 :goto_7

    :catch_10
    move-exception v4

    move-object v12, v13

    goto/16 :goto_6

    :catch_11
    move-exception v4

    move-object/from16 v17, v18

    move-object v12, v13

    goto/16 :goto_6

    :cond_6
    move-object/from16 v17, v18

    goto/16 :goto_2

    :cond_7
    move-object/from16 v17, v18

    goto/16 :goto_3
.end method

.method private parseWallpaperAttributes(Lorg/xmlpull/v1/XmlPullParser;Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperData;)V
    .locals 2

    const/4 v1, 0x0

    const-string/jumbo v0, "left"

    invoke-direct {p0, p1, v0, v1}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager;->getAttributeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v0

    iput v0, p2, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperData;->left:I

    const-string/jumbo v0, "top"

    invoke-direct {p0, p1, v0, v1}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager;->getAttributeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v0

    iput v0, p2, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperData;->top:I

    const-string/jumbo v0, "right"

    invoke-direct {p0, p1, v0, v1}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager;->getAttributeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v0

    iput v0, p2, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperData;->right:I

    const-string/jumbo v0, "bottom"

    invoke-direct {p0, p1, v0, v1}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager;->getAttributeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v0

    iput v0, p2, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperData;->bottom:I

    const-string/jumbo v0, "rotation"

    invoke-direct {p0, p1, v0, v1}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager;->getAttributeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v0

    iput v0, p2, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperData;->rotation:I

    return-void
.end method

.method private pushRestoreFiles(Landroid/content/Context;ILjava/lang/String;ILjava/lang/String;)Z
    .locals 11

    const-string/jumbo v0, "WallpaperBackupRestoreManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "pushRestoreFiles which="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " basePath="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    const/4 v10, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    if-nez v8, :cond_1

    const/4 v9, 0x0

    const/4 v0, 0x1

    if-ne p2, v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "wallpaper"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "wallpaper.png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v9, "wallpaper.xml"

    :goto_0
    new-instance v10, Landroid/app/wallpaperbackup/XmlParser;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v10, p1, v0}, Landroid/app/wallpaperbackup/XmlParser;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v10}, Landroid/app/wallpaperbackup/XmlParser;->getObject()Landroid/app/wallpaperbackup/WallpaperUser;

    move-result-object v6

    if-eqz v6, :cond_4

    const/4 v7, 0x0

    const/4 v0, 0x1

    if-ne p2, v0, :cond_3

    invoke-virtual {v6}, Landroid/app/wallpaperbackup/WallpaperUser;->getName()Ljava/lang/String;

    move-result-object v7

    :goto_1
    if-eqz v7, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_0
    :goto_2
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v4, p4

    move-object/from16 v5, p5

    invoke-direct/range {v0 .. v5}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager;->pushRestoreWallpaperFiles(Landroid/content/Context;ILjava/lang/String;ILjava/lang/String;)Z

    move-result v8

    :cond_1
    return v8

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "wallpaper"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "lockscreen_wallpaper.jpg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v9, "lockscreen.xml"

    goto :goto_0

    :cond_3
    invoke-virtual {v6}, Landroid/app/wallpaperbackup/WallpaperUser;->getImagePath()Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    :cond_4
    const-string/jumbo v0, "WallpaperBackupRestoreManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Item value is null. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private pushRestoreOriginalWallpaperFiles(Landroid/content/Context;ILjava/lang/String;Landroid/app/wallpaperbackup/WallpaperUser;ILjava/lang/String;)Z
    .locals 23

    const/16 v20, 0x0

    const/4 v14, 0x0

    const/16 v21, 0x0

    const/16 v16, 0x0

    const/4 v10, 0x0

    const/16 v18, 0x0

    if-eqz p4, :cond_1

    invoke-virtual/range {p4 .. p4}, Landroid/app/wallpaperbackup/WallpaperUser;->getLeftValue()I

    move-result v14

    invoke-virtual/range {p4 .. p4}, Landroid/app/wallpaperbackup/WallpaperUser;->getTopValue()I

    move-result v21

    invoke-virtual/range {p4 .. p4}, Landroid/app/wallpaperbackup/WallpaperUser;->getRightValue()I

    move-result v16

    invoke-virtual/range {p4 .. p4}, Landroid/app/wallpaperbackup/WallpaperUser;->getBottomValue()I

    move-result v10

    invoke-virtual/range {p4 .. p4}, Landroid/app/wallpaperbackup/WallpaperUser;->getRotationValue()I

    move-result v18

    :goto_0
    new-instance v15, Landroid/graphics/Rect;

    move/from16 v0, v21

    move/from16 v1, v16

    invoke-direct {v15, v14, v0, v1, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    const-string/jumbo v4, "WallpaperBackupRestoreManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "pushRestoreOriginalWallpaperFiles which="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " imagePath="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " left="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " top="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " right="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " bottom="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " rotation="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v8, Landroid/graphics/Matrix;

    invoke-direct {v8}, Landroid/graphics/Matrix;-><init>()V

    move/from16 v0, v18

    int-to-float v4, v0

    invoke-virtual {v8, v4}, Landroid/graphics/Matrix;->postRotate(F)Z

    :try_start_0
    invoke-static/range {p1 .. p1}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v22

    if-nez p5, :cond_2

    invoke-static/range {p3 .. p3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v9, 0x1

    invoke-static/range {v3 .. v9}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v17

    const/4 v4, 0x1

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    move/from16 v2, p2

    invoke-virtual {v0, v1, v15, v4, v2}, Landroid/app/WallpaperManager;->setBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;ZI)I
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v20, 0x1

    :cond_0
    :goto_1
    return v20

    :cond_1
    const-string/jumbo v4, "WallpaperBackupRestoreManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Item value is null. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_2
    const/4 v4, 0x1

    move/from16 v0, p5

    if-ne v0, v4, :cond_0

    :try_start_1
    new-instance v19, Ljava/io/FileInputStream;

    move-object/from16 v0, v19

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, p6

    invoke-direct {v0, v1, v2}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager;->decryptStream(Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v11

    invoke-static {v11}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v9, 0x1

    invoke-static/range {v3 .. v9}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v17

    const/4 v4, 0x1

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    move/from16 v2, p2

    invoke-virtual {v0, v1, v15, v4, v2}, Landroid/app/WallpaperManager;->setBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;ZI)I

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager;->closeSilently(Ljava/io/Closeable;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager;->closeSilently(Ljava/io/Closeable;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const/16 v20, 0x1

    goto :goto_1

    :catch_0
    move-exception v13

    invoke-virtual {v13}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v12

    invoke-virtual {v12}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method private pushRestoreWallpaperFiles(Landroid/content/Context;ILjava/lang/String;ILjava/lang/String;)Z
    .locals 10

    const-string/jumbo v7, "WallpaperBackupRestoreManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "pushRestoreWallpaperFiles which="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " imagePath="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    const/4 v3, 0x0

    :try_start_0
    invoke-static {p1}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v6

    if-nez p4, :cond_1

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v7, 0x0

    const/4 v8, 0x1

    :try_start_1
    invoke-virtual {v6, v4, v7, v8, p2}, Landroid/app/WallpaperManager;->setStream(Ljava/io/InputStream;Landroid/graphics/Rect;ZI)I
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v5, 0x1

    move-object v3, v4

    :cond_0
    :goto_0
    invoke-virtual {p0, v3}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager;->closeSilently(Ljava/io/Closeable;)V

    :goto_1
    return v5

    :cond_1
    const/4 v7, 0x1

    if-ne p4, v7, :cond_0

    :try_start_2
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-direct {p0, v4, p5}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager;->decryptStream(Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-virtual {v6, v0, v7, v8, p2}, Landroid/app/WallpaperManager;->setStream(Ljava/io/InputStream;Landroid/graphics/Rect;ZI)I

    invoke-virtual {p0, v0}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager;->closeSilently(Ljava/io/Closeable;)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const/4 v5, 0x1

    move-object v3, v4

    goto :goto_0

    :catch_0
    move-exception v2

    :goto_2
    :try_start_4
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-virtual {p0, v3}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_1

    :catch_1
    move-exception v1

    :goto_3
    :try_start_5
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    invoke-virtual {p0, v3}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_1

    :catchall_0
    move-exception v7

    :goto_4
    invoke-virtual {p0, v3}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager;->closeSilently(Ljava/io/Closeable;)V

    throw v7

    :catchall_1
    move-exception v7

    move-object v3, v4

    goto :goto_4

    :catch_2
    move-exception v1

    move-object v3, v4

    goto :goto_3

    :catch_3
    move-exception v2

    move-object v3, v4

    goto :goto_2
.end method

.method private responseToKies(Landroid/content/Context;ILjava/lang/String;Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$RESULT_CODE;Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ERR_CODE;ILjava/lang/String;Ljava/lang/String;Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$RESULT_CODE;)V
    .locals 4

    const-string/jumbo v1, "WallpaperBackupRestoreManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "responseToKies which="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " action="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " resultCode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " errorCode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " requiredSize="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " extraResultCode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v0, p3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "RESULT"

    invoke-virtual {p4}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$RESULT_CODE;->getValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v1, "ERR_CODE"

    invoke-virtual {p5}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ERR_CODE;->getValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v1, "REQ_SIZE"

    invoke-virtual {v0, v1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v1, "SOURCE"

    invoke-virtual {v0, v1, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p8, :cond_0

    const-string/jumbo v1, "EXPORT_SESSION_TIME"

    invoke-virtual {v0, v1, p8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    const-string/jumbo v1, "com.wssnps.permission.COM_WSSNPS"

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    const-string/jumbo v1, "WallpaperBackupRestoreManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sendBroadcast. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method closeSilently(Ljava/io/Closeable;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-interface {p1}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "WallpaperBackupRestoreManager"

    const-string/jumbo v2, "close fail "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public copyFile(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 12

    new-instance v7, Ljava/io/File;

    invoke-direct {v7, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v7}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    :cond_0
    const-wide/16 v4, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v1, 0x0

    const/4 v6, 0x0

    :try_start_0
    new-instance v9, Ljava/io/FileInputStream;

    invoke-direct {v9, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v11, Ljava/io/FileOutputStream;

    invoke-direct {v11, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v9}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    invoke-virtual {v11}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v6

    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v4

    const-wide/16 v2, 0x0

    invoke-virtual/range {v1 .. v6}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    const/4 v2, 0x1

    invoke-virtual {p0, v1}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager;->closeSilently(Ljava/io/Closeable;)V

    invoke-virtual {p0, v6}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager;->closeSilently(Ljava/io/Closeable;)V

    invoke-virtual {p0, v9}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager;->closeSilently(Ljava/io/Closeable;)V

    invoke-virtual {p0, v11}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager;->closeSilently(Ljava/io/Closeable;)V

    return v2

    :catch_0
    move-exception v0

    :goto_0
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v2, 0x0

    invoke-virtual {p0, v1}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager;->closeSilently(Ljava/io/Closeable;)V

    invoke-virtual {p0, v6}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager;->closeSilently(Ljava/io/Closeable;)V

    invoke-virtual {p0, v8}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager;->closeSilently(Ljava/io/Closeable;)V

    invoke-virtual {p0, v10}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager;->closeSilently(Ljava/io/Closeable;)V

    return v2

    :catchall_0
    move-exception v2

    :goto_1
    invoke-virtual {p0, v1}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager;->closeSilently(Ljava/io/Closeable;)V

    invoke-virtual {p0, v6}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager;->closeSilently(Ljava/io/Closeable;)V

    invoke-virtual {p0, v8}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager;->closeSilently(Ljava/io/Closeable;)V

    invoke-virtual {p0, v10}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager;->closeSilently(Ljava/io/Closeable;)V

    throw v2

    :catchall_1
    move-exception v2

    move-object v8, v9

    goto :goto_1

    :catchall_2
    move-exception v2

    move-object v10, v11

    move-object v8, v9

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v8, v9

    goto :goto_0

    :catch_2
    move-exception v0

    move-object v10, v11

    move-object v8, v9

    goto :goto_0
.end method

.method public startBackupWallpaper(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 26

    const-string/jumbo v2, "WallpaperBackupRestoreManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startBackupWallpaper which="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " basePath="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " source="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v6, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$RESULT_CODE;->RESULT_OK:Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$RESULT_CODE;

    sget-object v11, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$RESULT_CODE;->RESULT_FAIL:Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$RESULT_CODE;

    sget-object v7, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ERR_CODE;->SUCCESS:Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ERR_CODE;

    const/4 v8, 0x0

    const-wide/16 v16, 0x0

    const-wide/16 v18, 0x0

    const-wide/32 v20, 0x40000000

    const/4 v5, 0x0

    const/4 v2, 0x1

    move/from16 v0, p2

    if-ne v0, v2, :cond_1

    const-string/jumbo v5, "com.samsung.android.intent.action.RESPONSE_BACKUP_WALLPAPER"

    :goto_0
    :try_start_0
    new-instance v23, Landroid/os/StatFs;

    move-object/from16 v0, v23

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v23 .. v23}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    move-result-wide v16

    invoke-virtual/range {v23 .. v23}, Landroid/os/StatFs;->getBlockSizeLong()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v18

    mul-long v20, v16, v18

    const-wide/32 v2, 0xa00000

    cmp-long v2, v20, v2

    if-gez v2, :cond_2

    const-string/jumbo v2, "WallpaperBackupRestoreManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "StatFs : availableBlocks="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v16

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " blockSizeInBytes="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v18

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " freeSpaceInBytes="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v20

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v6, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$RESULT_CODE;->RESULT_FAIL:Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$RESULT_CODE;

    sget-object v7, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ERR_CODE;->STORAGE_FULL:Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ERR_CODE;

    const/high16 v8, 0xa00000

    :cond_0
    :goto_1
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v4, p2

    move-object/from16 v9, p4

    move-object/from16 v10, p6

    invoke-direct/range {v2 .. v11}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager;->responseToKies(Landroid/content/Context;ILjava/lang/String;Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$RESULT_CODE;Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ERR_CODE;ILjava/lang/String;Ljava/lang/String;Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$RESULT_CODE;)V

    return-void

    :cond_1
    const-string/jumbo v5, "com.samsung.android.intent.action.RESPONSE_BACKUP_LOCKSCREEN"

    goto :goto_0

    :catch_0
    move-exception v15

    invoke-virtual {v15}, Ljava/lang/Throwable;->printStackTrace()V

    sget-object v6, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$RESULT_CODE;->RESULT_FAIL:Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$RESULT_CODE;

    sget-object v7, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ERR_CODE;->UNKNOWN_ERROR:Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ERR_CODE;

    sget-object v11, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$RESULT_CODE;->INVALID_VALUE:Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$RESULT_CODE;

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v4, p2

    move-object/from16 v9, p4

    move-object/from16 v10, p6

    invoke-direct/range {v2 .. v11}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager;->responseToKies(Landroid/content/Context;ILjava/lang/String;Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$RESULT_CODE;Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ERR_CODE;ILjava/lang/String;Ljava/lang/String;Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$RESULT_CODE;)V

    return-void

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const/16 v22, 0x0

    const/4 v2, 0x1

    move/from16 v0, p2

    if-ne v0, v2, :cond_6

    invoke-direct/range {p0 .. p1}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager;->isLiveWallpaper(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string/jumbo v2, "WallpaperBackupRestoreManager"

    const-string/jumbo v3, "LiveWallpaper is true"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_2
    sget-object v2, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$RESULT_CODE;->RESULT_FAIL:Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$RESULT_CODE;

    if-ne v11, v2, :cond_8

    sget-object v6, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$RESULT_CODE;->RESULT_FAIL:Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$RESULT_CODE;

    sget-object v7, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ERR_CODE;->INVALID_DATA:Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ERR_CODE;

    goto :goto_1

    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "android.wallpaper.settings_systemui_transparency"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_5

    const/16 v22, 0x1

    :goto_3
    const-string/jumbo v2, "WallpaperBackupRestoreManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "FLAG_SYSTEM isCustom="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v22, :cond_3

    const/4 v11, 0x1

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-object/from16 v12, p3

    move/from16 v13, p5

    move-object/from16 v14, p7

    invoke-direct/range {v9 .. v14}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager;->createBackupFile(Landroid/content/Context;ILjava/lang/String;ILjava/lang/String;)Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$RESULT_CODE;

    move-result-object v11

    const-string/jumbo v2, "WallpaperBackupRestoreManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "FLAG_SYSTEM extraResultCode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_5
    const/16 v22, 0x0

    goto :goto_3

    :cond_6
    invoke-static/range {p1 .. p1}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/app/WallpaperManager;->getLockWallpaperType()I

    move-result v24

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "lockscreen_wallpaper_transparent"

    const/4 v4, 0x1

    const/4 v9, -0x2

    invoke-static {v2, v3, v4, v9}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-nez v2, :cond_7

    const/16 v22, 0x1

    :goto_4
    const-string/jumbo v2, "WallpaperBackupRestoreManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "FLAG_LOCK isCustom="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " type="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v24, :cond_3

    if-eqz v22, :cond_3

    const/4 v11, 0x2

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-object/from16 v12, p3

    move/from16 v13, p5

    move-object/from16 v14, p7

    invoke-direct/range {v9 .. v14}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager;->createBackupFile(Landroid/content/Context;ILjava/lang/String;ILjava/lang/String;)Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$RESULT_CODE;

    move-result-object v11

    const-string/jumbo v2, "WallpaperBackupRestoreManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "FLAG_LOCK extraResultCode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_7
    const/16 v22, 0x0

    goto :goto_4

    :cond_8
    sget-object v2, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$RESULT_CODE;->RESULT_OLD_CONCEPT_OK:Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$RESULT_CODE;

    if-eq v11, v2, :cond_9

    sget-object v2, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$RESULT_CODE;->RESULT_NEW_CONCEPT_OK:Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$RESULT_CODE;

    if-ne v11, v2, :cond_0

    :cond_9
    sget-object v7, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ERR_CODE;->PARTIAL_SUCCESS:Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ERR_CODE;

    goto/16 :goto_1
.end method

.method public startBackupWallpaper(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    const-string/jumbo v6, ""

    const-string/jumbo v7, ""

    const/4 v2, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v7}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager;->startBackupWallpaper(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public startRestoreWallpaper(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 24

    const-string/jumbo v2, "WallpaperBackupRestoreManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startRestoreWallpaper which="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " basePath="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " source="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v6, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$RESULT_CODE;->RESULT_OK:Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$RESULT_CODE;

    sget-object v7, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ERR_CODE;->SUCCESS:Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ERR_CODE;

    const/4 v8, 0x0

    const-wide/16 v16, 0x0

    const-wide/16 v18, 0x0

    const-wide/32 v20, 0x40000000

    const/4 v5, 0x0

    const/4 v2, 0x1

    move/from16 v0, p2

    if-ne v0, v2, :cond_0

    const-string/jumbo v5, "com.samsung.android.intent.action.RESPONSE_RESTORE_WALLPAPER"

    :goto_0
    :try_start_0
    new-instance v22, Landroid/os/StatFs;

    move-object/from16 v0, v22

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v22 .. v22}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    move-result-wide v16

    invoke-virtual/range {v22 .. v22}, Landroid/os/StatFs;->getBlockSizeLong()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v18

    mul-long v20, v16, v18

    const-wide/32 v2, 0xa00000

    cmp-long v2, v20, v2

    if-gez v2, :cond_1

    const-string/jumbo v2, "WallpaperBackupRestoreManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "StatFs : availableBlocks="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v16

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " blockSizeInBytes="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v18

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " freeSpaceInBytes="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v20

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v6, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$RESULT_CODE;->RESULT_FAIL:Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$RESULT_CODE;

    sget-object v7, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ERR_CODE;->STORAGE_FULL:Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ERR_CODE;

    const/high16 v8, 0xa00000

    :goto_1
    sget-object v11, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$RESULT_CODE;->INVALID_VALUE:Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$RESULT_CODE;

    const/4 v10, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v4, p2

    move-object/from16 v9, p4

    invoke-direct/range {v2 .. v11}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager;->responseToKies(Landroid/content/Context;ILjava/lang/String;Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$RESULT_CODE;Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ERR_CODE;ILjava/lang/String;Ljava/lang/String;Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$RESULT_CODE;)V

    return-void

    :cond_0
    const-string/jumbo v5, "com.samsung.android.intent.action.RESPONSE_RESTORE_LOCKSCREEN"

    goto :goto_0

    :catch_0
    move-exception v15

    invoke-virtual {v15}, Ljava/lang/Throwable;->printStackTrace()V

    sget-object v6, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$RESULT_CODE;->RESULT_FAIL:Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$RESULT_CODE;

    sget-object v7, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ERR_CODE;->UNKNOWN_ERROR:Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ERR_CODE;

    sget-object v11, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$RESULT_CODE;->INVALID_VALUE:Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$RESULT_CODE;

    const/4 v10, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v4, p2

    move-object/from16 v9, p4

    invoke-direct/range {v2 .. v11}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager;->responseToKies(Landroid/content/Context;ILjava/lang/String;Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$RESULT_CODE;Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ERR_CODE;ILjava/lang/String;Ljava/lang/String;Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$RESULT_CODE;)V

    return-void

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move/from16 v11, p2

    move-object/from16 v12, p3

    move/from16 v13, p5

    move-object/from16 v14, p6

    invoke-direct/range {v9 .. v14}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager;->pushRestoreFiles(Landroid/content/Context;ILjava/lang/String;ILjava/lang/String;)Z

    move-result v23

    if-nez v23, :cond_2

    sget-object v6, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$RESULT_CODE;->RESULT_FAIL:Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$RESULT_CODE;

    sget-object v7, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ERR_CODE;->INVALID_DATA:Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ERR_CODE;

    goto :goto_1

    :cond_2
    const/4 v2, 0x1

    move/from16 v0, p2

    if-ne v0, v2, :cond_3

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "android.wallpaper.settings_systemui_transparency"

    const/4 v4, 0x0

    const/4 v9, -0x2

    invoke-static {v2, v3, v4, v9}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_1

    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "lockscreen_wallpaper_transparent"

    const/4 v4, 0x0

    const/4 v9, -0x2

    invoke-static {v2, v3, v4, v9}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "lockscreen_wallpaper"

    const/4 v4, 0x1

    const/4 v9, -0x2

    invoke-static {v2, v3, v4, v9}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto/16 :goto_1
.end method

.method public startRestoreWallpaper(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    const-string/jumbo v6, ""

    const/4 v2, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v6}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager;->startRestoreWallpaper(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method