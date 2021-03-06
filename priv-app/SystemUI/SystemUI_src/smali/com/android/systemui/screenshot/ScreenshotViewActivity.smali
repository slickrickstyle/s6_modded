.class public Lcom/android/systemui/screenshot/ScreenshotViewActivity;
.super Landroid/app/Activity;
.source "ScreenshotViewActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mNotificationId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/systemui/screenshot/ScreenshotViewActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/screenshot/ScreenshotViewActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private doFinish()V
    .locals 2

    const v1, 0x7f0f028d

    invoke-static {p0, v1}, Lcom/android/systemui/screenshot/ScreenshotUtils;->showToast(Landroid/content/Context;I)V

    const-string/jumbo v1, "notification"

    invoke-virtual {p0, v1}, Lcom/android/systemui/screenshot/ScreenshotViewActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iget v1, p0, Lcom/android/systemui/screenshot/ScreenshotViewActivity;->mNotificationId:I

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    invoke-virtual {p0}, Lcom/android/systemui/screenshot/ScreenshotViewActivity;->finish()V

    return-void
.end method


# virtual methods
.method public getPathFromUri(Landroid/net/Uri;)Ljava/lang/String;
    .locals 8

    const/4 v2, 0x0

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/screenshot/ScreenshotViewActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v1, p1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_0

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "_data"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    :cond_0
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object v7

    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/4 v8, 0x1

    invoke-virtual {p0, v8}, Lcom/android/systemui/screenshot/ScreenshotViewActivity;->requestWindowFeature(I)Z

    invoke-virtual {p0}, Lcom/android/systemui/screenshot/ScreenshotViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string/jumbo v8, "NotificationId"

    const/4 v9, -0x1

    invoke-virtual {v4, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    iput v8, p0, Lcom/android/systemui/screenshot/ScreenshotViewActivity;->mNotificationId:I

    const-string/jumbo v8, "imageUri"

    invoke-virtual {v4, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    sget-object v8, Lcom/android/systemui/screenshot/ScreenshotViewActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "onCreate : imageUri is null."

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/systemui/screenshot/ScreenshotViewActivity;->doFinish()V

    return-void

    :cond_0
    sget-object v8, Lcom/android/systemui/screenshot/ScreenshotViewActivity;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "imageUri : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/systemui/screenshot/ScreenshotViewActivity;->getPathFromUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_1

    sget-object v8, Lcom/android/systemui/screenshot/ScreenshotViewActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "onCreate : Item is not exist in media provider."

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/systemui/screenshot/ScreenshotViewActivity;->doFinish()V

    return-void

    :cond_1
    sget-object v8, Lcom/android/systemui/screenshot/ScreenshotViewActivity;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "path : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_2

    sget-object v8, Lcom/android/systemui/screenshot/ScreenshotViewActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "onCreate : Item is not exist."

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/systemui/screenshot/ScreenshotViewActivity;->doFinish()V

    return-void

    :cond_2
    :try_start_0
    new-instance v5, Landroid/content/Intent;

    const-string/jumbo v8, "android.intent.action.VIEW"

    invoke-direct {v5, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v8, "image/png"

    invoke-virtual {v5, v7, v8}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v8, 0x10000000

    invoke-virtual {v5, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v5}, Lcom/android/systemui/screenshot/ScreenshotViewActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lcom/android/systemui/screenshot/ScreenshotViewActivity;->finish()V

    :goto_0
    return-void

    :catch_0
    move-exception v1

    :try_start_1
    sget-object v8, Lcom/android/systemui/screenshot/ScreenshotViewActivity;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "ActivityNotFoundException occured. "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/systemui/screenshot/ScreenshotViewActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/screenshot/ScreenshotUtils;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-static {v0}, Lcom/android/systemui/screenshot/ScreenshotUtils;->isUltraPowerSavingMode(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_3

    const v8, 0x7f0f029c

    invoke-static {p0, v8}, Lcom/android/systemui/screenshot/ScreenshotUtils;->showToast(Landroid/content/Context;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui/screenshot/ScreenshotViewActivity;->finish()V

    goto :goto_0

    :cond_3
    const v8, 0x7f0f029b

    :try_start_2
    invoke-static {p0, v8}, Lcom/android/systemui/screenshot/ScreenshotUtils;->showToast(Landroid/content/Context;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v8

    invoke-virtual {p0}, Lcom/android/systemui/screenshot/ScreenshotViewActivity;->finish()V

    throw v8

    :cond_4
    const v8, 0x7f0f0285

    :try_start_3
    invoke-static {p0, v8}, Lcom/android/systemui/screenshot/ScreenshotUtils;->showToast(Landroid/content/Context;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method protected onStart()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/screenshot/ScreenshotViewActivity;->setVisible(Z)V

    return-void
.end method
