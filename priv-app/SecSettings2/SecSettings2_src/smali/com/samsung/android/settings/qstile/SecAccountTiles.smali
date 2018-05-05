.class public Lcom/samsung/android/settings/qstile/SecAccountTiles;
.super Landroid/service/quicksettings/TileService;
.source "SecAccountTiles.java"


# instance fields
.field private mAlertDialog:Landroid/app/AlertDialog;

.field mContext:Landroid/content/Context;

.field private mSyncOn:Z


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/qstile/SecAccountTiles;)Landroid/app/AlertDialog;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/qstile/SecAccountTiles;->mAlertDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/qstile/SecAccountTiles;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/qstile/SecAccountTiles;->mSyncOn:Z

    return v0
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/qstile/SecAccountTiles;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/qstile/SecAccountTiles;->showConfirmPopup(Z)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/service/quicksettings/TileService;-><init>()V

    return-void
.end method

.method private isBlockedEdmSettingsChange()Z
    .locals 6

    const/4 v4, 0x0

    const/4 v3, 0x1

    new-array v2, v3, [Ljava/lang/String;

    const-string/jumbo v3, "false"

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/samsung/android/settings/qstile/SecAccountTiles;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "content://com.sec.knox.provider/RestrictionPolicy3"

    const-string/jumbo v5, "isSettingsChangesAllowed"

    invoke-static {v3, v4, v5, v2}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    if-nez v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private showConfirmPopup(Z)V
    .locals 4

    iget-object v1, p0, Lcom/samsung/android/settings/qstile/SecAccountTiles;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/qstile/SecAccountTiles;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/qstile/SecAccountTiles;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget-object v1, p0, Lcom/samsung/android/settings/qstile/SecAccountTiles;->mContext:Landroid/content/Context;

    const v2, 0x103012b

    invoke-direct {v0, v1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    if-eqz p1, :cond_1

    const v1, 0x7f0b1778

    :goto_0
    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    if-eqz p1, :cond_2

    const v1, 0x7f0b1779

    :goto_1
    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/qstile/SecAccountTiles$2;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/qstile/SecAccountTiles$2;-><init>(Lcom/samsung/android/settings/qstile/SecAccountTiles;)V

    const v3, 0x104000a

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/qstile/SecAccountTiles$3;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/qstile/SecAccountTiles$3;-><init>(Lcom/samsung/android/settings/qstile/SecAccountTiles;)V

    const/high16 v3, 0x1040000

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/qstile/SecAccountTiles;->mAlertDialog:Landroid/app/AlertDialog;

    iget-object v1, p0, Lcom/samsung/android/settings/qstile/SecAccountTiles;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d9

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/qstile/SecAccountTiles;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/qstile/SecAccountTiles;->showDialog(Landroid/app/Dialog;)V

    return-void

    :cond_1
    const v1, 0x7f0b177a

    goto :goto_0

    :cond_2
    const v1, 0x7f0b177b

    goto :goto_1
.end method

.method private showItPolicyToast()V
    .locals 7

    const/4 v6, 0x0

    iget-object v1, p0, Lcom/samsung/android/settings/qstile/SecAccountTiles;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/settings/qstile/SecAccountTiles;->mContext:Landroid/content/Context;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/samsung/android/settings/qstile/SecAccountTiles;->mContext:Landroid/content/Context;

    const v5, 0x7f0b16a1

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    const v4, 0x7f0b0fb7

    invoke-virtual {v2, v4, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/Toast;->setShowForAllUsers()V

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method

.method private updateState()V
    .locals 3

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    invoke-static {v2}, Landroid/content/ContentResolver;->getMasterSyncAutomaticallyAsUser(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/samsung/android/settings/qstile/SecAccountTiles;->mSyncOn:Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/qstile/SecAccountTiles;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/qstile/SecAccountTiles;->getQsTile()Landroid/service/quicksettings/Tile;

    move-result-object v1

    if-eqz v1, :cond_0

    const v2, 0x7f020422

    invoke-static {p0, v2}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/service/quicksettings/Tile;->setIcon(Landroid/graphics/drawable/Icon;)V

    const v2, 0x7f0b16a1

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/service/quicksettings/Tile;->setLabel(Ljava/lang/CharSequence;)V

    iget-boolean v2, p0, Lcom/samsung/android/settings/qstile/SecAccountTiles;->mSyncOn:Z

    if-eqz v2, :cond_1

    const/4 v2, 0x2

    :goto_0
    invoke-virtual {v1, v2}, Landroid/service/quicksettings/Tile;->setState(I)V

    invoke-virtual {v1}, Landroid/service/quicksettings/Tile;->updateTile()V

    :cond_0
    return-void

    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method public onClick()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/settings/qstile/SecAccountTiles;->isBlockedEdmSettingsChange()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/settings/qstile/SecAccountTiles;->showItPolicyToast()V

    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/settings/qstile/SecAccountTiles;->updateState()V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/qstile/SecAccountTiles;->isLocked()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/qstile/SecAccountTiles;->semIsToggleButtonChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    invoke-static {v0}, Landroid/content/ContentResolver;->getMasterSyncAutomaticallyAsUser(I)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    :goto_1
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/qstile/SecAccountTiles;->showConfirmPopup(Z)V

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/samsung/android/settings/qstile/SecAccountTiles$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/qstile/SecAccountTiles$1;-><init>(Lcom/samsung/android/settings/qstile/SecAccountTiles;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/qstile/SecAccountTiles;->unlockAndRun(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public onCreate()V
    .locals 1

    invoke-super {p0}, Landroid/service/quicksettings/TileService;->onCreate()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/qstile/SecAccountTiles;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/qstile/SecAccountTiles;->mContext:Landroid/content/Context;

    return-void
.end method

.method public onStartListening()V
    .locals 0

    invoke-super {p0}, Landroid/service/quicksettings/TileService;->onStartListening()V

    invoke-direct {p0}, Lcom/samsung/android/settings/qstile/SecAccountTiles;->updateState()V

    return-void
.end method

.method public onStopListening()V
    .locals 0

    invoke-super {p0}, Landroid/service/quicksettings/TileService;->onStopListening()V

    return-void
.end method

.method public onTileAdded()V
    .locals 0

    invoke-super {p0}, Landroid/service/quicksettings/TileService;->onTileAdded()V

    return-void
.end method

.method public onTileRemoved()V
    .locals 0

    invoke-super {p0}, Landroid/service/quicksettings/TileService;->onTileRemoved()V

    return-void
.end method

.method public semGetDetailView()Landroid/widget/RemoteViews;
    .locals 7

    const v6, 0x7f1105b9

    new-instance v1, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Lcom/samsung/android/settings/qstile/SecAccountTiles;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f040236

    invoke-direct {v1, v2, v3}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    invoke-static {v2}, Landroid/content/ContentResolver;->getMasterSyncAutomaticallyAsUser(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const v2, 0x7f0b1779

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/qstile/SecAccountTiles;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v6, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    :goto_0
    iget-object v2, p0, Lcom/samsung/android/settings/qstile/SecAccountTiles;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "qs_detail_content_secondary_text_color"

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v4

    const/high16 v5, -0x1000000

    invoke-static {v2, v3, v5, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    invoke-virtual {v1, v6, v2}, Landroid/widget/RemoteViews;->setTextColor(II)V

    return-object v1

    :cond_0
    const v2, 0x7f0b177b

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/qstile/SecAccountTiles;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v6, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public semGetDetailViewTitle()Ljava/lang/CharSequence;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/qstile/SecAccountTiles;->mContext:Landroid/content/Context;

    const v1, 0x7f0b0fb8

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public semGetSettingsIntent()Landroid/content/Intent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.settings.SYNC_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public semIsToggleButtonChecked()Z
    .locals 1

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    invoke-static {v0}, Landroid/content/ContentResolver;->getMasterSyncAutomaticallyAsUser(I)Z

    move-result v0

    return v0
.end method

.method public semIsToggleButtonExists()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public semSetToggleButtonChecked(Z)V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/settings/qstile/SecAccountTiles;->isBlockedEdmSettingsChange()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/settings/qstile/SecAccountTiles;->showItPolicyToast()V

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/qstile/SecAccountTiles;->semUpdateDetailView()V

    invoke-direct {p0}, Lcom/samsung/android/settings/qstile/SecAccountTiles;->updateState()V

    return-void

    :cond_0
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    invoke-static {p1, v0}, Landroid/content/ContentResolver;->setMasterSyncAutomaticallyAsUser(ZI)V

    goto :goto_0
.end method
