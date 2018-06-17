.class public Lcom/android/keyguard/util/KeyguardSettingsHelper;
.super Ljava/lang/Object;
.source "KeyguardSettingsHelper.java"


# static fields
.field private static sInstance:Lcom/android/keyguard/util/KeyguardSettingsHelper;


# instance fields
.field private mAccessControlMode:I

.field private mAccessibilitySpeakPassword:I

.field private mActiveThemePackage:Ljava/lang/String;

.field private mAirplaneMode:I

.field private mAutomaticUnlock:I

.field private mClockTimeFormat:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mDualClockMenuSetting:I

.field private mEasyModeSwitch:I

.field private mEmergencyMode:I

.field private mHomeCityTimeZone:Ljava/lang/String;

.field private mIsPreloadedWallpaper:Z

.field private mKidsHomeMode:I

.field private mLiveweatherSettingValue:Z

.field private mLockscreenRippleEffect:I

.field private mLockscreenWallpaperPath:Ljava/lang/String;

.field private mLockscreenWallpaperPath2:Ljava/lang/String;

.field private mLockscreenWallpaperPathSub:Ljava/lang/String;

.field private mLockscreenWallpaperType:I

.field private mLowPowerMode:I

.field private mMDMWallpaperEnabled:I

.field private mObserverMonitor:Landroid/database/ContentObserver;

.field private mOneHandModeSwitch:I

.field private mOpenThemeClockFont:Ljava/lang/String;

.field private mOpenThemeLockscreenWallpaper:I

.field private mOpenThemeNumericFont:Ljava/lang/String;

.field private mOpenThemeSystemFont:Ljava/lang/String;

.field private mOpenThemeXmlPkgName:Ljava/lang/String;

.field private mPowerSavingMode:I

.field private mPsmMode:I

.field private mReduceScreenRunning:I

.field private mResolver:Landroid/content/ContentResolver;

.field private mSettingsObserver:Landroid/database/ContentObserver;

.field private mShortcutsMode:I

.field private mShowNotificationOnLockscreen:I

.field private mSideSyncState:I

.field private mSmartStay:I

.field private mUltraPowerSavingMode:I

.field private mVRKeyguardControl:I

.field private mWhiteCoverWallpaper:I

.field private mWhiteKeyguardStatusBar:I

.field private mWhiteKeyguardWallpaper:I


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/keyguard/util/KeyguardSettingsHelper$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/keyguard/util/KeyguardSettingsHelper$1;-><init>(Lcom/android/keyguard/util/KeyguardSettingsHelper;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper;->mSettingsObserver:Landroid/database/ContentObserver;

    iput-object p1, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper;->mResolver:Landroid/content/ContentResolver;

    invoke-direct {p0}, Lcom/android/keyguard/util/KeyguardSettingsHelper;->readSettingsDB()V

    return-void
.end method

.method static synthetic access$002(Lcom/android/keyguard/util/KeyguardSettingsHelper;I)I
    .locals 0

    iput p1, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper;->mAirplaneMode:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/keyguard/util/KeyguardSettingsHelper;)Landroid/content/ContentResolver;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper;->mResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/keyguard/util/KeyguardSettingsHelper;I)I
    .locals 0

    iput p1, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper;->mOpenThemeLockscreenWallpaper:I

    return p1
.end method

.method static synthetic access$1102(Lcom/android/keyguard/util/KeyguardSettingsHelper;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper;->mOpenThemeXmlPkgName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1202(Lcom/android/keyguard/util/KeyguardSettingsHelper;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper;->mActiveThemePackage:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1302(Lcom/android/keyguard/util/KeyguardSettingsHelper;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper;->mOpenThemeClockFont:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1402(Lcom/android/keyguard/util/KeyguardSettingsHelper;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper;->mOpenThemeNumericFont:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1502(Lcom/android/keyguard/util/KeyguardSettingsHelper;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper;->mOpenThemeSystemFont:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1602(Lcom/android/keyguard/util/KeyguardSettingsHelper;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper;->mClockTimeFormat:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1702(Lcom/android/keyguard/util/KeyguardSettingsHelper;I)I
    .locals 0

    iput p1, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper;->mDualClockMenuSetting:I

    return p1
.end method

.method static synthetic access$1802(Lcom/android/keyguard/util/KeyguardSettingsHelper;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper;->mHomeCityTimeZone:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1902(Lcom/android/keyguard/util/KeyguardSettingsHelper;I)I
    .locals 0

    iput p1, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper;->mEmergencyMode:I

    return p1
.end method

.method static synthetic access$2002(Lcom/android/keyguard/util/KeyguardSettingsHelper;I)I
    .locals 0

    iput p1, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper;->mEasyModeSwitch:I

    return p1
.end method

.method static synthetic access$202(Lcom/android/keyguard/util/KeyguardSettingsHelper;I)I
    .locals 0

    iput p1, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper;->mWhiteKeyguardStatusBar:I

    return p1
.end method

.method static synthetic access$2102(Lcom/android/keyguard/util/KeyguardSettingsHelper;I)I
    .locals 0

    iput p1, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper;->mKidsHomeMode:I

    return p1
.end method

.method static synthetic access$2202(Lcom/android/keyguard/util/KeyguardSettingsHelper;I)I
    .locals 0

    iput p1, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper;->mUltraPowerSavingMode:I

    return p1
.end method

.method static synthetic access$2302(Lcom/android/keyguard/util/KeyguardSettingsHelper;I)I
    .locals 0

    iput p1, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper;->mShowNotificationOnLockscreen:I

    return p1
.end method

.method static synthetic access$2402(Lcom/android/keyguard/util/KeyguardSettingsHelper;I)I
    .locals 0

    iput p1, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper;->mAccessibilitySpeakPassword:I

    return p1
.end method

.method static synthetic access$2502(Lcom/android/keyguard/util/KeyguardSettingsHelper;I)I
    .locals 0

    iput p1, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper;->mOneHandModeSwitch:I

    return p1
.end method

.method static synthetic access$2602(Lcom/android/keyguard/util/KeyguardSettingsHelper;I)I
    .locals 0

    iput p1, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper;->mReduceScreenRunning:I

    return p1
.end method

.method static synthetic access$2702(Lcom/android/keyguard/util/KeyguardSettingsHelper;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper;->mLockscreenWallpaperPathSub:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2802(Lcom/android/keyguard/util/KeyguardSettingsHelper;I)I
    .locals 0

    iput p1, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper;->mAccessControlMode:I

    return p1
.end method

.method static synthetic access$2902(Lcom/android/keyguard/util/KeyguardSettingsHelper;I)I
    .locals 0

    iput p1, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper;->mSideSyncState:I

    return p1
.end method

.method static synthetic access$3002(Lcom/android/keyguard/util/KeyguardSettingsHelper;I)I
    .locals 0

    iput p1, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper;->mSmartStay:I

    return p1
.end method

.method static synthetic access$302(Lcom/android/keyguard/util/KeyguardSettingsHelper;I)I
    .locals 0

    iput p1, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper;->mWhiteKeyguardWallpaper:I

    return p1
.end method

.method static synthetic access$3102(Lcom/android/keyguard/util/KeyguardSettingsHelper;I)I
    .locals 0

    iput p1, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper;->mPowerSavingMode:I

    return p1
.end method

.method static synthetic access$3202(Lcom/android/keyguard/util/KeyguardSettingsHelper;I)I
    .locals 0

    iput p1, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper;->mPsmMode:I

    return p1
.end method

.method static synthetic access$3302(Lcom/android/keyguard/util/KeyguardSettingsHelper;I)I
    .locals 0

    iput p1, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper;->mLowPowerMode:I

    return p1
.end method

.method static synthetic access$3402(Lcom/android/keyguard/util/KeyguardSettingsHelper;I)I
    .locals 0

    iput p1, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper;->mAutomaticUnlock:I

    return p1
.end method

.method static synthetic access$3502(Lcom/android/keyguard/util/KeyguardSettingsHelper;I)I
    .locals 0

    iput p1, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper;->mMDMWallpaperEnabled:I

    return p1
.end method

.method static synthetic access$3602(Lcom/android/keyguard/util/KeyguardSettingsHelper;I)I
    .locals 0

    iput p1, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper;->mShortcutsMode:I

    return p1
.end method

.method static synthetic access$3702(Lcom/android/keyguard/util/KeyguardSettingsHelper;I)I
    .locals 0

    iput p1, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper;->mVRKeyguardControl:I

    return p1
.end method

.method static synthetic access$3900(Lcom/android/keyguard/util/KeyguardSettingsHelper;)Landroid/database/ContentObserver;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper;->mObserverMonitor:Landroid/database/ContentObserver;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/android/keyguard/util/KeyguardSettingsHelper;Landroid/net/Uri;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/keyguard/util/KeyguardSettingsHelper;->needsBroadcast(Landroid/net/Uri;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$402(Lcom/android/keyguard/util/KeyguardSettingsHelper;I)I
    .locals 0

    iput p1, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper;->mWhiteCoverWallpaper:I

    return p1
.end method

.method static synthetic access$502(Lcom/android/keyguard/util/KeyguardSettingsHelper;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper;->mLockscreenWallpaperPath:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$602(Lcom/android/keyguard/util/KeyguardSettingsHelper;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper;->mLockscreenWallpaperPath2:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$702(Lcom/android/keyguard/util/KeyguardSettingsHelper;I)I
    .locals 0

    iput p1, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper;->mLockscreenWallpaperType:I

    return p1
.end method

.method static synthetic access$802(Lcom/android/keyguard/util/KeyguardSettingsHelper;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper;->mIsPreloadedWallpaper:Z

    return p1
.end method

.method static synthetic access$902(Lcom/android/keyguard/util/KeyguardSettingsHelper;I)I
    .locals 0

    iput p1, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper;->mLockscreenRippleEffect:I

    return p1
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/KeyguardSettingsHelper;
    .locals 1

    sget-object v0, Lcom/android/keyguard/util/KeyguardSettingsHelper;->sInstance:Lcom/android/keyguard/util/KeyguardSettingsHelper;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/keyguard/util/KeyguardSettingsHelper;

    invoke-direct {v0, p0}, Lcom/android/keyguard/util/KeyguardSettingsHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/keyguard/util/KeyguardSettingsHelper;->sInstance:Lcom/android/keyguard/util/KeyguardSettingsHelper;

    :cond_0
    sget-object v0, Lcom/android/keyguard/util/KeyguardSettingsHelper;->sInstance:Lcom/android/keyguard/util/KeyguardSettingsHelper;

    return-object v0
.end method

.method private needsBroadcast(Landroid/net/Uri;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method private readSettingsDB()V
    .locals 8

    const/4 v7, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v6, -0x2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const-string v4, "KeyguardSettingsHelper"

    const-string v5, "readSettingsDB()"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "airplane_mode_on"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper;->mAirplaneMode:I

    iget-object v4, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "white_lockscreen_statusbar"

    invoke-static {v4, v5, v3, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    iput v4, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper;->mWhiteKeyguardStatusBar:I

    iget-object v4, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "white_lockscreen_wallpaper"

    invoke-static {v4, v5, v3, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    iput v4, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper;->mWhiteKeyguardWallpaper:I

    iget-object v4, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "white_cover_wallpaper"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper;->mWhiteCoverWallpaper:I

    iget-object v4, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "lockscreen_wallpaper_path"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper;->mLockscreenWallpaperPath:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "lockscreen_wallpaper_path2"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper;->mLockscreenWallpaperPath2:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "lockscreen_wallpaper"

    invoke-static {v4, v5, v2, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    iput v4, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper;->mLockscreenWallpaperType:I

    iget-object v4, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "lockscreen_wallpaper_transparent"

    invoke-static {v4, v5, v2, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    if-ne v4, v2, :cond_0

    :goto_0
    iput-boolean v2, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper;->mIsPreloadedWallpaper:Z

    iget-object v2, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "lockscreen_ripple_effect"

    invoke-static {v2, v4, v3, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    iput v2, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper;->mLockscreenRippleEffect:I

    iget-object v2, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "opne_theme_effect_lockscreen_wallpaper"

    invoke-static {v2, v4, v3, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    iput v2, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper;->mOpenThemeLockscreenWallpaper:I

    iget-object v2, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "current_sec_theme_package_open_theme"

    invoke-static {v2, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper;->mOpenThemeXmlPkgName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "current_sec_active_themepackage"

    invoke-static {v2, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper;->mActiveThemePackage:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "theme_font_clock"

    invoke-static {v2, v4, v6}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper;->mOpenThemeClockFont:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "theme_font_numeric"

    invoke-static {v2, v4, v6}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper;->mOpenThemeNumericFont:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "theme_font_system"

    invoke-static {v2, v4, v6}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper;->mOpenThemeSystemFont:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "current_sec_active_themepackage"

    invoke-static {v2, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper;->mActiveThemePackage:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "time_12_24"

    invoke-static {v2, v4, v6}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper;->mClockTimeFormat:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "dualclock_menu_settings"

    invoke-static {v2, v4, v3, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    iput v2, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper;->mDualClockMenuSetting:I

    iget-object v2, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "homecity_timezone"

    invoke-static {v2, v4, v6}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper;->mHomeCityTimeZone:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "emergency_mode"

    invoke-static {v2, v4, v3, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    iput v2, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper;->mEmergencyMode:I

    iget-object v2, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "easy_mode_switch"

    invoke-static {v2, v4, v3, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    iput v2, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper;->mEasyModeSwitch:I

    iget-object v2, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "kids_home_mode"

    invoke-static {v2, v4, v3, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    iput v2, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper;->mKidsHomeMode:I

    iget-object v2, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "ultra_powersaving_mode"

    invoke-static {v2, v4, v3, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    iput v2, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper;->mUltraPowerSavingMode:I

    iget-object v2, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "access_control_enabled"

    invoke-static {v2, v4, v3, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    iput v2, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper;->mAccessControlMode:I

    iget-object v2, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "sidesync_source_connect"

    invoke-static {v2, v4, v3, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    iput v2, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper;->mSideSyncState:I

    iget-object v2, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "intelligent_sleep_mode"

    invoke-static {v2, v4, v3, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    iput v2, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper;->mSmartStay:I

    iget-object v2, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "powersaving_switch"

    invoke-static {v2, v4, v3, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    iput v2, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper;->mPowerSavingMode:I

    iget-object v2, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "psm_switch"

    invoke-static {v2, v4, v3, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    iput v2, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper;->mPsmMode:I

    iget-object v2, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "low_power"

    invoke-static {v2, v4, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper;->mLowPowerMode:I

    iget-object v2, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "automatic_unlock"

    invoke-static {v2, v4, v3, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    iput v2, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper;->mAutomaticUnlock:I

    iget-object v2, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "mdm_wallpaper_enabled"

    invoke-static {v2, v4, v3, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    iput v2, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper;->mMDMWallpaperEnabled:I

    iget-object v2, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "set_shortcuts_mode"

    invoke-static {v2, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper;->mShortcutsMode:I

    iget-object v2, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "vr_keyguard_control"

    invoke-static {v2, v4, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper;->mVRKeyguardControl:I

    :try_start_0
    iget-object v2, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "lock_screen_show_notifications"

    const/4 v5, -0x2

    invoke-static {v2, v4, v5}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper;->mShowNotificationOnLockscreen:I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-object v2, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "speak_password"

    const/4 v5, -0x3

    invoke-static {v2, v4, v3, v5}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    iput v2, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper;->mAccessibilitySpeakPassword:I

    iget-object v2, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "airplane_mode_on"

    invoke-static {v4}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v4, v3, v5, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v2, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "white_lockscreen_statusbar"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v4, v3, v5, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v2, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "white_lockscreen_wallpaper"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v4, v3, v5, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v2, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "white_cover_wallpaper"

    invoke-static {v4}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v4, v3, v5, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v2, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "lockscreen_wallpaper_path"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v4, v3, v5, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v2, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "lockscreen_wallpaper_path2"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v4, v3, v5, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v2, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "lockscreen_wallpaper"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v4, v3, v5, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v2, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "lockscreen_wallpaper_transparent"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v4, v3, v5, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v2, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "lockscreen_ripple_effect"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v4, v3, v5, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v2, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "opne_theme_effect_lockscreen_wallpaper"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v4, v3, v5, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v2, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "current_sec_theme_package_open_theme"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v4, v3, v5, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v2, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "current_sec_active_themepackage"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v4, v3, v5, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v2, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "theme_font_clock"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v4, v3, v5, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v2, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "theme_font_numeric"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v4, v3, v5, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v2, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "theme_font_system"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v4, v3, v5, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v2, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "time_12_24"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v4, v3, v5, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v2, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "dualclock_menu_settings"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v4, v3, v5, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v2, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "homecity_timezone"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v4, v3, v5, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v2, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "emergency_mode"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v4, v3, v5, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v2, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "easy_mode_switch"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v4, v3, v5, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v2, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "kids_home_mode"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v4, v3, v5, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v2, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "ultra_powersaving_mode"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v4, v3, v5, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v2, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "lock_simple_shortcut_left"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v4, v3, v5, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v2, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "lock_simple_shortcut_right"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v4, v3, v5, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v2, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "lock_screen_show_notifications"

    invoke-static {v4}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v4, v3, v5, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v2, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "speak_password"

    invoke-static {v4}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v4, v3, v5, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v2, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "access_control_enabled"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v4, v3, v5, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v2, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "sidesync_source_connect"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v4, v3, v5, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v2, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "intelligent_sleep_mode"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v4, v3, v5, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v2, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "powersaving_switch"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v4, v3, v5, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v2, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "psm_switch"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v4, v3, v5, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v2, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "low_power"

    invoke-static {v4}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v4, v3, v5, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v2, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "automatic_unlock"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v4, v3, v5, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v2, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "mdm_wallpaper_enabled"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v4, v3, v5, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v2, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "set_shortcuts_mode"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v4, v3, v5, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v2, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "vr_keyguard_control"

    invoke-static {v4}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v4, v3, v5, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v2, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "interactionarea_switch"

    invoke-static {v2, v4, v3, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    iput v2, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper;->mOneHandModeSwitch:I

    iget-object v2, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "interactionarea_switch"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v4, v3, v5, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v2, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "any_screen_running"

    invoke-static {v2, v4, v3, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    iput v2, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper;->mReduceScreenRunning:I

    iget-object v2, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "any_screen_running"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v4, v3, v5, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string v2, "KeyguardSettingsHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "readSettingsDB() elapsed= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    move v2, v3

    goto/16 :goto_0

    :catch_0
    move-exception v2

    goto/16 :goto_1
.end method


# virtual methods
.method public doesVRControlKeyguard()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper;->mVRKeyguardControl:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/android/keyguard/util/KeyguardSettingsHelper;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  mWhiteKeyguardStatusBar: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper;->mWhiteKeyguardStatusBar:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    const-string v0, "  mWhiteKeyguardWallpaper: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper;->mWhiteKeyguardWallpaper:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    const-string v0, "  mLockscreenWallpaperType: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper;->mLockscreenWallpaperType:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    const-string v0, "  mLockscreenWallpaperPath: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper;->mLockscreenWallpaperPath:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  mIsPreloadedWallpaper: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper;->mIsPreloadedWallpaper:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string v0, "  mOpenThemeLockscreenWallpaper: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper;->mOpenThemeLockscreenWallpaper:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    const-string v0, "  mOpenThemeXmlPkgName: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper;->mOpenThemeXmlPkgName:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  mActiveThemePackage: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper;->mActiveThemePackage:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  mOpenThemeClockFont: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper;->mOpenThemeClockFont:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  mOpenThemeNumericFont: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper;->mOpenThemeNumericFont:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  mOpenThemeSystemFont: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper;->mOpenThemeSystemFont:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  mClockTimeFormat: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper;->mClockTimeFormat:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  mDualClockMenuSetting: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper;->mDualClockMenuSetting:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    const-string v0, "  mHomeCityTimeZone: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper;->mHomeCityTimeZone:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  mEmergencyMode: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper;->mEmergencyMode:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    const-string v0, "  mEasyModeSwitch: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper;->mEasyModeSwitch:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    const-string v0, "  mKidsHomeMode: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper;->mKidsHomeMode:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    const-string v0, "  mUltraPowerSavingMode: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper;->mUltraPowerSavingMode:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    const-string v0, "  mOneHandModeSwitch: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper;->mOneHandModeSwitch:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    const-string v0, "  mReduceScreenRunning: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper;->mReduceScreenRunning:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    const-string v0, "  mAccessControlMode: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper;->mAccessControlMode:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    const-string v0, "  mSideSyncState: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper;->mSideSyncState:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    const-string v0, "  mSmartStay: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper;->mSmartStay:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    const-string v0, "  mPowerSavingMode: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper;->mPowerSavingMode:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    const-string v0, "  mPsmMode: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper;->mPsmMode:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    const-string v0, "  mLowPowerMode: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper;->mLowPowerMode:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    const-string v0, "  mShortcutsMode: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper;->mShortcutsMode:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    const-string v0, "  mVRKeyguardControl"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper;->mVRKeyguardControl:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method public getActiveThemePackage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper;->mActiveThemePackage:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentOpenThemeXmlPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper;->mOpenThemeXmlPkgName:Ljava/lang/String;

    return-object v0
.end method

.method public getHomeTimeZone()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper;->mHomeCityTimeZone:Ljava/lang/String;

    return-object v0
.end method

.method public getLockScreenWallPaperPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper;->mLockscreenWallpaperPath:Ljava/lang/String;

    return-object v0
.end method

.method public getLockscreenWallpaperType()I
    .locals 1

    iget v0, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper;->mLockscreenWallpaperType:I

    return v0
.end method

.method public getOpenThemeClockFont()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper;->mOpenThemeClockFont:Ljava/lang/String;

    return-object v0
.end method

.method public getOpenThemeNumericFont()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper;->mOpenThemeNumericFont:Ljava/lang/String;

    return-object v0
.end method

.method public isAccessControlEnabled()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper;->mAccessControlMode:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAirplaneModeOn()Z
    .locals 1

    iget v0, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper;->mAirplaneMode:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAutomaticUnlockEnabled()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper;->mAutomaticUnlock:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDualClock()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper;->mDualClockMenuSetting:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEasyModeOn()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper;->mEasyModeSwitch:I

    if-eq v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEasyOneHandRunning()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper;->mReduceScreenRunning:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEmergencyMode()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper;->mEmergencyMode:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLiveWeatherSettingValue()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper;->mLiveweatherSettingValue:Z

    return v0
.end method

.method public isMDMWallpaperEnabled()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper;->mMDMWallpaperEnabled:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOpenThemeWallpaperEnabled()Z
    .locals 1

    iget v0, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper;->mOpenThemeLockscreenWallpaper:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper;->mOpenThemeXmlPkgName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper;->mOpenThemeXmlPkgName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPowerSavingMode()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper;->mPowerSavingMode:I

    if-ne v1, v0, :cond_0

    iget v1, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper;->mPsmMode:I

    if-eq v1, v0, :cond_1

    :cond_0
    iget v1, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper;->mLowPowerMode:I

    if-ne v1, v0, :cond_2

    :cond_1
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPreloadedLockscreenWallpaper()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper;->mIsPreloadedWallpaper:Z

    return v0
.end method

.method public isShortcutsVisibleForMDM()Z
    .locals 1

    iget v0, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper;->mShortcutsMode:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isShowNotificationOnKeyguard()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper;->mShowNotificationOnLockscreen:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSideSyncEnabled()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper;->mSideSyncState:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSmartStayEnabled()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper;->mSmartStay:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUltraPowerSavingMode()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper;->mUltraPowerSavingMode:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isWhiteCoverWallpaper()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper;->mWhiteCoverWallpaper:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isWhiteKeyguardStatusBar()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper;->mWhiteKeyguardStatusBar:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isWhiteKeyguardWallpaper()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper;->mWhiteKeyguardWallpaper:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public istKidsHomeModeEnabled()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper;->mKidsHomeMode:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onUserSwitched()V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    invoke-direct {p0}, Lcom/android/keyguard/util/KeyguardSettingsHelper;->readSettingsDB()V

    return-void
.end method

.method public registerContentObserver(Landroid/database/ContentObserver;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper;->mObserverMonitor:Landroid/database/ContentObserver;

    return-void
.end method

.method public setLiveWeatherSettingValue(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper;->mLiveweatherSettingValue:Z

    return-void
.end method

.method public setWhiteKeyguardStatusBar(I)V
    .locals 0

    iput p1, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper;->mWhiteKeyguardStatusBar:I

    return-void
.end method

.method public setWhiteKeyguardWallpaper(I)V
    .locals 0

    iput p1, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper;->mWhiteKeyguardWallpaper:I

    return-void
.end method

.method public shouldSpeakPasswordsForAccessibility()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper;->mAccessibilitySpeakPassword:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
