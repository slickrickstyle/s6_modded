.class public Lcom/android/keyguard/wallpaper/WallpaperViewController;
.super Landroid/app/IWallpaperManagerCallback$Stub;
.source "WallpaperViewController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/wallpaper/WallpaperViewController$1;,
        Lcom/android/keyguard/wallpaper/WallpaperViewController$2;,
        Lcom/android/keyguard/wallpaper/WallpaperViewController$3;,
        Lcom/android/keyguard/wallpaper/WallpaperViewController$OMCWallpaperUpdatedReceiver;,
        Lcom/android/keyguard/wallpaper/WallpaperViewController$WallpaperChangedReceiver;
    }
.end annotation


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected final mHandler:Landroid/os/Handler;

.field protected mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mIsCinematicWallpaper:Z

.field protected mIsDesktopMode:Z

.field mKnoxStateCallback:Lcom/android/keyguard/KnoxStateMonitorCallback;

.field protected mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mOMCWallpaperUpdatedReceiver:Lcom/android/keyguard/wallpaper/WallpaperViewController$OMCWallpaperUpdatedReceiver;

.field protected mRootView:Landroid/view/ViewGroup;

.field protected mScreenOn:Z

.field protected mService:Landroid/app/IWallpaperManager;

.field private mSettingsListener:Lcom/android/keyguard/util/SettingsHelper$OnChangedCallback;

.field private mSettingsValueList:[Landroid/net/Uri;

.field private mStatusBarWindow:Landroid/view/View;

.field protected mVisibility:I

.field private mWallpaperChangedReceiver:Lcom/android/keyguard/wallpaper/WallpaperViewController$WallpaperChangedReceiver;

.field private mWallpaperType:I

.field protected mWallpaperView:Lcom/android/keyguard/wallpaper/SystemUIWallpaperBase;


# direct methods
.method static synthetic -set0(Lcom/android/keyguard/wallpaper/WallpaperViewController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/keyguard/wallpaper/WallpaperViewController;->mIsCinematicWallpaper:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/keyguard/wallpaper/WallpaperViewController;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/keyguard/wallpaper/WallpaperViewController;->isCinematicWallpaper()Z

    move-result v0

    return v0
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Landroid/app/IWallpaperManagerCallback$Stub;-><init>()V

    const/4 v0, 0x4

    iput v0, p0, Lcom/android/keyguard/wallpaper/WallpaperViewController;->mVisibility:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/keyguard/wallpaper/WallpaperViewController;->mWallpaperType:I

    iput-boolean v2, p0, Lcom/android/keyguard/wallpaper/WallpaperViewController;->mIsDesktopMode:Z

    const/4 v0, 0x3

    new-array v0, v0, [Landroid/net/Uri;

    const-string/jumbo v1, "lockscreen_wallpaper"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    aput-object v1, v0, v2

    const-string/jumbo v1, "ultra_powersaving_mode"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "emergency_mode"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/android/keyguard/wallpaper/WallpaperViewController;->mSettingsValueList:[Landroid/net/Uri;

    new-instance v0, Lcom/android/keyguard/wallpaper/WallpaperViewController$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/wallpaper/WallpaperViewController$1;-><init>(Lcom/android/keyguard/wallpaper/WallpaperViewController;)V

    iput-object v0, p0, Lcom/android/keyguard/wallpaper/WallpaperViewController;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/keyguard/wallpaper/WallpaperViewController$2;

    invoke-direct {v0, p0}, Lcom/android/keyguard/wallpaper/WallpaperViewController$2;-><init>(Lcom/android/keyguard/wallpaper/WallpaperViewController;)V

    iput-object v0, p0, Lcom/android/keyguard/wallpaper/WallpaperViewController;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    new-instance v0, Lcom/android/keyguard/wallpaper/WallpaperViewController$3;

    invoke-direct {v0, p0}, Lcom/android/keyguard/wallpaper/WallpaperViewController$3;-><init>(Lcom/android/keyguard/wallpaper/WallpaperViewController;)V

    iput-object v0, p0, Lcom/android/keyguard/wallpaper/WallpaperViewController;->mKnoxStateCallback:Lcom/android/keyguard/KnoxStateMonitorCallback;

    iput-object p1, p0, Lcom/android/keyguard/wallpaper/WallpaperViewController;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "wallpaper"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IWallpaperManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IWallpaperManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/wallpaper/WallpaperViewController;->mService:Landroid/app/IWallpaperManager;

    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/android/keyguard/wallpaper/WallpaperViewController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/wallpaper/WallpaperViewController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/wallpaper/WallpaperViewController;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    new-instance v0, Lcom/android/keyguard/wallpaper/WallpaperViewController$4;

    invoke-direct {v0, p0}, Lcom/android/keyguard/wallpaper/WallpaperViewController$4;-><init>(Lcom/android/keyguard/wallpaper/WallpaperViewController;)V

    iput-object v0, p0, Lcom/android/keyguard/wallpaper/WallpaperViewController;->mSettingsListener:Lcom/android/keyguard/util/SettingsHelper$OnChangedCallback;

    iget-object v0, p0, Lcom/android/keyguard/wallpaper/WallpaperViewController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/util/SettingsHelper;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/SettingsHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/wallpaper/WallpaperViewController;->mSettingsListener:Lcom/android/keyguard/util/SettingsHelper$OnChangedCallback;

    iget-object v2, p0, Lcom/android/keyguard/wallpaper/WallpaperViewController;->mSettingsValueList:[Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Lcom/android/keyguard/util/SettingsHelper;->registerCallback(Lcom/android/keyguard/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    invoke-direct {p0}, Lcom/android/keyguard/wallpaper/WallpaperViewController;->registerOMCWallpaperUpdatedReceiver()V

    sget-boolean v0, Lcom/android/keyguard/KeyguardRune;->SUPPORT_CINEMATIC_WALLPAPER:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/keyguard/wallpaper/WallpaperViewController;->registerWallpaperChangedReceiver()V

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/WallpaperViewController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KnoxStateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KnoxStateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/wallpaper/WallpaperViewController;->mKnoxStateCallback:Lcom/android/keyguard/KnoxStateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KnoxStateMonitor;->registerCallback(Lcom/android/keyguard/KnoxStateMonitorCallback;)V

    return-void
.end method

.method private isCinematicWallpaper()Z
    .locals 10

    const/4 v1, 0x0

    iget-object v7, p0, Lcom/android/keyguard/wallpaper/WallpaperViewController;->mContext:Landroid/content/Context;

    invoke-static {v7}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-virtual {v6}, Landroid/app/WallpaperManager;->getWallpaperInfo()Landroid/app/WallpaperInfo;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Landroid/app/WallpaperInfo;->getServiceName()Ljava/lang/String;

    move-result-object v4

    iget-object v7, p0, Lcom/android/keyguard/wallpaper/WallpaperViewController;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x10700a4

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x0

    :goto_0
    array-length v7, v3

    if-ge v0, v7, :cond_0

    aget-object v2, v3, v0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v1, 0x1

    :cond_0
    const-string/jumbo v7, "WallpaperViewController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "isCinematicWallpaper = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private registerOMCWallpaperUpdatedReceiver()V
    .locals 3

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "com.samsung.intent.action.RSCUPDATE_START"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v1, Lcom/android/keyguard/wallpaper/WallpaperViewController$OMCWallpaperUpdatedReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/keyguard/wallpaper/WallpaperViewController$OMCWallpaperUpdatedReceiver;-><init>(Lcom/android/keyguard/wallpaper/WallpaperViewController;Lcom/android/keyguard/wallpaper/WallpaperViewController$OMCWallpaperUpdatedReceiver;)V

    iput-object v1, p0, Lcom/android/keyguard/wallpaper/WallpaperViewController;->mOMCWallpaperUpdatedReceiver:Lcom/android/keyguard/wallpaper/WallpaperViewController$OMCWallpaperUpdatedReceiver;

    iget-object v1, p0, Lcom/android/keyguard/wallpaper/WallpaperViewController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/keyguard/wallpaper/WallpaperViewController;->mOMCWallpaperUpdatedReceiver:Lcom/android/keyguard/wallpaper/WallpaperViewController$OMCWallpaperUpdatedReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private registerWallpaperChangedReceiver()V
    .locals 3

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "android.intent.action.WALLPAPER_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v1, Lcom/android/keyguard/wallpaper/WallpaperViewController$WallpaperChangedReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/keyguard/wallpaper/WallpaperViewController$WallpaperChangedReceiver;-><init>(Lcom/android/keyguard/wallpaper/WallpaperViewController;Lcom/android/keyguard/wallpaper/WallpaperViewController$WallpaperChangedReceiver;)V

    iput-object v1, p0, Lcom/android/keyguard/wallpaper/WallpaperViewController;->mWallpaperChangedReceiver:Lcom/android/keyguard/wallpaper/WallpaperViewController$WallpaperChangedReceiver;

    iget-object v1, p0, Lcom/android/keyguard/wallpaper/WallpaperViewController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/keyguard/wallpaper/WallpaperViewController;->mWallpaperChangedReceiver:Lcom/android/keyguard/wallpaper/WallpaperViewController$WallpaperChangedReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public cleanUp()V
    .locals 2

    const/16 v1, 0x25d

    iget-object v0, p0, Lcom/android/keyguard/wallpaper/WallpaperViewController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/keyguard/wallpaper/WallpaperViewController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method protected handleCleanUp()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/keyguard/wallpaper/WallpaperViewController;->mRootView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/wallpaper/WallpaperViewController;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/WallpaperViewController;->mWallpaperView:Lcom/android/keyguard/wallpaper/SystemUIWallpaperBase;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/wallpaper/WallpaperViewController;->mWallpaperView:Lcom/android/keyguard/wallpaper/SystemUIWallpaperBase;

    invoke-interface {v0}, Lcom/android/keyguard/wallpaper/SystemUIWallpaperBase;->cleanUp()V

    iput-object v1, p0, Lcom/android/keyguard/wallpaper/WallpaperViewController;->mWallpaperView:Lcom/android/keyguard/wallpaper/SystemUIWallpaperBase;

    :cond_1
    return-void
.end method

.method public handleTouchEvent(Landroid/view/MotionEvent;)V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/wallpaper/WallpaperViewController;->mWallpaperView:Lcom/android/keyguard/wallpaper/SystemUIWallpaperBase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/wallpaper/WallpaperViewController;->mWallpaperView:Lcom/android/keyguard/wallpaper/SystemUIWallpaperBase;

    invoke-interface {v0, p1}, Lcom/android/keyguard/wallpaper/SystemUIWallpaperBase;->handleTouchEvent(Landroid/view/MotionEvent;)V

    :cond_0
    return-void
.end method

.method protected handleWallpaperImageChanged()V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/wallpaper/WallpaperViewController;->mRootView:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    return-void

    :cond_0
    return-void
.end method

.method protected handleWallpaperTypeChanged()V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/wallpaper/WallpaperViewController;->mRootView:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    return-void

    :cond_0
    return-void
.end method

.method protected onBootCompleted()V
    .locals 4

    sget-boolean v1, Lcom/android/keyguard/KeyguardRune;->SUPPORT_CINEMATIC_WALLPAPER:Z

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/keyguard/wallpaper/WallpaperViewController;->isCinematicWallpaper()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/keyguard/wallpaper/WallpaperViewController;->mIsCinematicWallpaper:Z

    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/wallpaper/WallpaperViewController;->mService:Landroid/app/IWallpaperManager;

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/android/keyguard/wallpaper/WallpaperViewController;->mService:Landroid/app/IWallpaperManager;

    invoke-interface {v1}, Landroid/app/IWallpaperManager;->getLockWallpaperType()I

    move-result v1

    iput v1, p0, Lcom/android/keyguard/wallpaper/WallpaperViewController;->mWallpaperType:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    const-string/jumbo v1, "WallpaperViewController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onBootCompleted mWallpaperType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/keyguard/wallpaper/WallpaperViewController;->mWallpaperType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "WallpaperViewController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "System dead?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/wallpaper/WallpaperViewController;->mWallpaperView:Lcom/android/keyguard/wallpaper/SystemUIWallpaperBase;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "WallpaperViewController"

    const-string/jumbo v1, "mWallpaperView.onPause()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/wallpaper/WallpaperViewController;->mWallpaperView:Lcom/android/keyguard/wallpaper/SystemUIWallpaperBase;

    invoke-interface {v0}, Lcom/android/keyguard/wallpaper/SystemUIWallpaperBase;->onPause()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/wallpaper/WallpaperViewController;->mWallpaperView:Lcom/android/keyguard/wallpaper/SystemUIWallpaperBase;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "WallpaperViewController"

    const-string/jumbo v1, "mWallpaperView.onResume()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/wallpaper/WallpaperViewController;->mWallpaperView:Lcom/android/keyguard/wallpaper/SystemUIWallpaperBase;

    invoke-interface {v0}, Lcom/android/keyguard/wallpaper/SystemUIWallpaperBase;->onResume()V

    :cond_0
    return-void
.end method

.method public onScreenTurnedOff()V
    .locals 2

    const-string/jumbo v0, "WallpaperViewController"

    const-string/jumbo v1, "onScreenTurnedOff"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/wallpaper/WallpaperViewController;->mScreenOn:Z

    invoke-virtual {p0}, Lcom/android/keyguard/wallpaper/WallpaperViewController;->onPause()V

    return-void
.end method

.method public onScreenTurningOn()V
    .locals 2

    const-string/jumbo v0, "WallpaperViewController"

    const-string/jumbo v1, "onScreenTurningOn"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/wallpaper/WallpaperViewController;->mScreenOn:Z

    iget-object v0, p0, Lcom/android/keyguard/wallpaper/WallpaperViewController;->mRootView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/wallpaper/WallpaperViewController;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/keyguard/wallpaper/WallpaperViewController;->onResume()V

    :cond_0
    return-void
.end method

.method protected onUserSwitching(I)V
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Lcom/android/keyguard/wallpaper/WallpaperViewController;->onWallpaperChanged()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public onWallpaperChanged()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/16 v7, 0x25a

    const/16 v6, 0x259

    const/4 v2, -0x1

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/android/keyguard/wallpaper/WallpaperViewController;->mService:Landroid/app/IWallpaperManager;

    if-eqz v3, :cond_0

    :try_start_0
    iget-object v3, p0, Lcom/android/keyguard/wallpaper/WallpaperViewController;->mService:Landroid/app/IWallpaperManager;

    invoke-interface {v3}, Landroid/app/IWallpaperManager;->getLockWallpaperType()I

    move-result v2

    iget-object v3, p0, Lcom/android/keyguard/wallpaper/WallpaperViewController;->mService:Landroid/app/IWallpaperManager;

    invoke-interface {v3}, Landroid/app/IWallpaperManager;->isDesktopMode()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :cond_0
    :goto_0
    const-string/jumbo v3, "WallpaperViewController"

    const-string/jumbo v4, "onWallpaperChanged() called"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v3, p0, Lcom/android/keyguard/wallpaper/WallpaperViewController;->mIsDesktopMode:Z

    if-eq v3, v1, :cond_1

    iget-object v3, p0, Lcom/android/keyguard/wallpaper/WallpaperViewController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v3, p0, Lcom/android/keyguard/wallpaper/WallpaperViewController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_1
    iput v2, p0, Lcom/android/keyguard/wallpaper/WallpaperViewController;->mWallpaperType:I

    iput-boolean v1, p0, Lcom/android/keyguard/wallpaper/WallpaperViewController;->mIsDesktopMode:Z

    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v3, "WallpaperViewController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "System dead?"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget v3, p0, Lcom/android/keyguard/wallpaper/WallpaperViewController;->mWallpaperType:I

    if-eq v3, v2, :cond_2

    iget-object v3, p0, Lcom/android/keyguard/wallpaper/WallpaperViewController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v3, p0, Lcom/android/keyguard/wallpaper/WallpaperViewController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lcom/android/keyguard/wallpaper/WallpaperViewController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v7}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v3, p0, Lcom/android/keyguard/wallpaper/WallpaperViewController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1
.end method

.method public reset()V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/wallpaper/WallpaperViewController;->mWallpaperView:Lcom/android/keyguard/wallpaper/SystemUIWallpaperBase;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "WallpaperViewController"

    const-string/jumbo v1, "mWallpaperView.reset()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/wallpaper/WallpaperViewController;->mWallpaperView:Lcom/android/keyguard/wallpaper/SystemUIWallpaperBase;

    invoke-interface {v0}, Lcom/android/keyguard/wallpaper/SystemUIWallpaperBase;->reset()V

    :cond_0
    return-void
.end method

.method public sendWallpaperCommand(Ljava/lang/String;)V
    .locals 7

    const/4 v3, 0x0

    const/4 v6, 0x0

    iget-boolean v2, p0, Lcom/android/keyguard/wallpaper/WallpaperViewController;->mIsCinematicWallpaper:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/keyguard/wallpaper/WallpaperViewController;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/android/keyguard/wallpaper/WallpaperViewController;->mStatusBarWindow:Landroid/view/View;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/keyguard/wallpaper/WallpaperViewController;->mStatusBarWindow:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_0

    move-object v2, p1

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v6}, Landroid/app/WallpaperManager;->sendWallpaperCommand(Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;)V

    const-string/jumbo v2, "WallpaperViewController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sendWallpaperCommand() "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method protected setBackground()V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/wallpaper/WallpaperViewController;->mRootView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/wallpaper/WallpaperViewController;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v0, p0, Lcom/android/keyguard/wallpaper/WallpaperViewController;->mWallpaperView:Lcom/android/keyguard/wallpaper/SystemUIWallpaperBase;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/wallpaper/WallpaperViewController;->mRootView:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/android/keyguard/wallpaper/WallpaperViewController;->mWallpaperView:Lcom/android/keyguard/wallpaper/SystemUIWallpaperBase;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public setRootView(Landroid/view/ViewGroup;)V
    .locals 1

    iput-object p1, p0, Lcom/android/keyguard/wallpaper/WallpaperViewController;->mRootView:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/android/keyguard/wallpaper/WallpaperViewController;->mRootView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/wallpaper/WallpaperViewController;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    :cond_0
    return-void
.end method

.method public setStatusBarWindow(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/wallpaper/WallpaperViewController;->mStatusBarWindow:Landroid/view/View;

    return-void
.end method
