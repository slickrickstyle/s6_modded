.class public Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;
.super Landroid/widget/FrameLayout;
.source "KeyguardServiceBoxContainer.java"

# interfaces
.implements Lcom/android/keyguard/servicebox/KeyguardStatusBase;
.implements Lcom/android/keyguard/servicebox/KeyguardServiceBoxController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer$1;,
        Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer$2;,
        Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer$3;,
        Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer$4;,
        Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer$5;
    }
.end annotation


# static fields
.field private static final DENSITY_MAP:[[I

.field public static final EXPAND_ENABLED:Z

.field private static final SERVICEBOX_SETTINGS_VALUE_LISTENER_LIST:[Landroid/net/Uri;

.field private static final WHITE_WALLPAPER_SETTINGS_VALUE_LISTENER_LIST:[Landroid/net/Uri;

.field private static mIsDeskMode:Z

.field private static sIsSViewCovered:Z


# instance fields
.field private mCurrentLayoutDirection:I

.field private mDensityDpi:I

.field private mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

.field private mDisplayManager:Landroid/hardware/display/DisplayManager;

.field mDisplayMetrics:Landroid/util/DisplayMetrics;

.field private mHasCMAS:Z

.field private mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mIsExpanded:Z

.field private mIsMKeyboardConnected:Z

.field private mIsScreenTurnedOn:Z

.field private mIsShowingOwnerInfoByAnim:Z

.field mKnoxStateCallback:Lcom/android/keyguard/KnoxStateMonitorCallback;

.field private mLeftArrowAnimator:Lcom/android/keyguard/servicebox/utils/GuideArrowAnimator;

.field private mLeftArrowView:Landroid/widget/ImageView;

.field private mOnPageChangeListener:Lcom/android/internal/widget/ViewPager$OnPageChangeListener;

.field private mOwnerInfo:Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView;

.field private mPageAttachedStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

.field private mReadyToAnimation:Z

.field private mRemoteViewsItemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/keyguard/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;",
            ">;"
        }
    .end annotation
.end field

.field private mResetTimer:Lcom/android/keyguard/servicebox/utils/ServiceBoxPageResetTimer;

.field private mRightArrowAnimator:Lcom/android/keyguard/servicebox/utils/GuideArrowAnimator;

.field private mRightArrowView:Landroid/widget/ImageView;

.field private mServiceBoxDexMinHeight:I

.field private mServiceBoxExpandedHeight:I

.field private mServiceBoxItemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/keyguard/servicebox/pages/KeyguardPageItem;",
            ">;"
        }
    .end annotation
.end field

.field private mServiceBoxMKCoverHeight:I

.field private mServiceBoxPageAdapter:Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPageAdapter;

.field private mServiceBoxSCoverHeight:I

.field private mServiceBoxScailingView:Landroid/view/View;

.field private mServiceBoxSettingsListener:Lcom/android/keyguard/util/SettingsHelper$OnChangedCallback;

.field private mServiceBoxSmallHeight:I

.field private mServiceBoxViewPager:Lcom/android/keyguard/servicebox/KeyguardServiceBoxViewPager;

.field private mSettingsHelper:Lcom/android/keyguard/util/SettingsHelper;

.field private mStatusCallback:Lcom/android/keyguard/servicebox/KeyguardStatusCallback;

.field private mWhiteWallpaperSettingsListener:Lcom/android/keyguard/util/SettingsHelper$OnChangedCallback;

.field mWindowManager:Landroid/view/WindowManager;


# direct methods
.method static synthetic -get0()[Landroid/net/Uri;
    .locals 1

    sget-object v0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->SERVICEBOX_SETTINGS_VALUE_LISTENER_LIST:[Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic -get1()[Landroid/net/Uri;
    .locals 1

    sget-object v0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->WHITE_WALLPAPER_SETTINGS_VALUE_LISTENER_LIST:[Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic -get10(Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;)Lcom/android/keyguard/servicebox/KeyguardServiceBoxViewPager;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mServiceBoxViewPager:Lcom/android/keyguard/servicebox/KeyguardServiceBoxViewPager;

    return-object v0
.end method

.method static synthetic -get11(Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;)Lcom/android/keyguard/util/SettingsHelper;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mSettingsHelper:Lcom/android/keyguard/util/SettingsHelper;

    return-object v0
.end method

.method static synthetic -get12(Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;)Lcom/android/keyguard/servicebox/KeyguardStatusCallback;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mStatusCallback:Lcom/android/keyguard/servicebox/KeyguardStatusCallback;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;)I
    .locals 1

    iget v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mDensityDpi:I

    return v0
.end method

.method static synthetic -get4(Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mIsExpanded:Z

    return v0
.end method

.method static synthetic -get5(Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mIsScreenTurnedOn:Z

    return v0
.end method

.method static synthetic -get6(Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mIsShowingOwnerInfoByAnim:Z

    return v0
.end method

.method static synthetic -get7(Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;)Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mOwnerInfo:Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;)Lcom/android/keyguard/servicebox/utils/ServiceBoxPageResetTimer;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mResetTimer:Lcom/android/keyguard/servicebox/utils/ServiceBoxPageResetTimer;

    return-object v0
.end method

.method static synthetic -get9(Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;)Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPageAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mServiceBoxPageAdapter:Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPageAdapter;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;I)I
    .locals 0

    iput p1, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mDensityDpi:I

    return p1
.end method

.method static synthetic -set1(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mIsDeskMode:Z

    return p0
.end method

.method static synthetic -set2(Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mIsShowingOwnerInfoByAnim:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->isKeyguardShowing()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->isRTL()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap10(Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->updateChildViewsLook()V

    return-void
.end method

.method static synthetic -wrap11(Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->updateContainerLayout()V

    return-void
.end method

.method static synthetic -wrap12(Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->updatePivotX()V

    return-void
.end method

.method static synthetic -wrap13(Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;Lcom/android/keyguard/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->updateRemoteViewsPage(Lcom/android/keyguard/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->getCurrentPagePkgName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap3(Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->handleScreenTurnedOff()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->handleScreenTurnedOn()V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->initDimens()V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->reissueAllPages()V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->sendRequestRemoteViewsBroadcast()V

    return-void
.end method

.method static synthetic -wrap8(Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->setCurrentPage(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic -wrap9(Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->showArrowAnimation()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    sget-boolean v0, Lcom/android/keyguard/KeyguardRune;->SUPPORT_SERVICEBOX:Z

    sput-boolean v0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->EXPAND_ENABLED:Z

    const/4 v0, 0x5

    new-array v0, v0, [Landroid/net/Uri;

    const-string/jumbo v1, "additional_information_val"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    aput-object v1, v0, v4

    const-string/jumbo v1, "add_info_music_control"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    aput-object v1, v0, v5

    const-string/jumbo v1, "add_info_today_schedule"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    aput-object v1, v0, v6

    const-string/jumbo v1, "add_info_steps"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    aput-object v1, v0, v7

    const-string/jumbo v1, "lockscreen_aod_servicebox_page"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    aput-object v1, v0, v8

    sput-object v0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->SERVICEBOX_SETTINGS_VALUE_LISTENER_LIST:[Landroid/net/Uri;

    sput-boolean v4, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->sIsSViewCovered:Z

    new-array v0, v7, [[I

    const/16 v1, 0x118

    const/16 v2, 0x140

    const/16 v3, 0x168

    filled-new-array {v1, v2, v3}, [I

    move-result-object v1

    aput-object v1, v0, v4

    const/16 v1, 0x1a4

    const/16 v2, 0x1e0

    const/16 v3, 0x21c

    filled-new-array {v1, v2, v3}, [I

    move-result-object v1

    aput-object v1, v0, v5

    const/16 v1, 0x230

    const/16 v2, 0x280

    const/16 v3, 0x2d0

    filled-new-array {v1, v2, v3}, [I

    move-result-object v1

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->DENSITY_MAP:[[I

    sput-boolean v4, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mIsDeskMode:Z

    const/4 v0, 0x5

    new-array v0, v0, [Landroid/net/Uri;

    const-string/jumbo v1, "white_lockscreen_wallpaper"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    aput-object v1, v0, v4

    const-string/jumbo v1, "white_cover_wallpaper"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    aput-object v1, v0, v5

    const-string/jumbo v1, "ultra_powersaving_mode"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    aput-object v1, v0, v6

    const-string/jumbo v1, "easy_mode_switch"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    aput-object v1, v0, v7

    const-string/jumbo v1, "emergency_mode"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    aput-object v1, v0, v8

    sput-object v0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->WHITE_WALLPAPER_SETTINGS_VALUE_LISTENER_LIST:[Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mDensityDpi:I

    iput-boolean v1, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mIsShowingOwnerInfoByAnim:Z

    iput-boolean v1, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mReadyToAnimation:Z

    iput-boolean v1, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mIsScreenTurnedOn:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mServiceBoxItemList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mRemoteViewsItemList:Ljava/util/ArrayList;

    sget-boolean v0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->EXPAND_ENABLED:Z

    iput-boolean v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mIsExpanded:Z

    iput-boolean v2, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mIsMKeyboardConnected:Z

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iput-boolean v2, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mHasCMAS:Z

    new-instance v0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer$1;-><init>(Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;)V

    iput-object v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    new-instance v0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer$2;

    invoke-direct {v0, p0}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer$2;-><init>(Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;)V

    iput-object v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mKnoxStateCallback:Lcom/android/keyguard/KnoxStateMonitorCallback;

    new-instance v0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer$3;

    invoke-direct {v0, p0}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer$3;-><init>(Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;)V

    iput-object v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    new-instance v0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer$4;

    invoke-direct {v0, p0}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer$4;-><init>(Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;)V

    iput-object v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mOnPageChangeListener:Lcom/android/internal/widget/ViewPager$OnPageChangeListener;

    new-instance v0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer$5;

    invoke-direct {v0, p0}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer$5;-><init>(Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;)V

    iput-object v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mPageAttachedStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

    iget-object v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mCurrentLayoutDirection:I

    iget-object v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/util/SettingsHelper;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/SettingsHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mSettingsHelper:Lcom/android/keyguard/util/SettingsHelper;

    iget-object v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "display"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    iput-object v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    new-instance v0, Lcom/android/keyguard/servicebox/utils/ServiceBoxPageResetTimer;

    iget-object v1, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/keyguard/servicebox/utils/ServiceBoxPageResetTimer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mResetTimer:Lcom/android/keyguard/servicebox/utils/ServiceBoxPageResetTimer;

    invoke-direct {p0}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->initDimens()V

    return-void
.end method

.method private attachCalendarPage()V
    .locals 3

    new-instance v0, Lcom/android/keyguard/servicebox/pages/KeyguardPageItem;

    const-string/jumbo v1, "servicebox_calendar"

    sget v2, Lcom/android/keyguard/R$layout;->servicebox_today_page:I

    invoke-direct {v0, p0, v1, v2}, Lcom/android/keyguard/servicebox/pages/KeyguardPageItem;-><init>(Lcom/android/keyguard/servicebox/KeyguardServiceBoxController;Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mServiceBoxItemList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private attachClockPage()V
    .locals 3

    new-instance v0, Lcom/android/keyguard/servicebox/pages/KeyguardPageItem;

    const-string/jumbo v1, "servicebox_clock"

    sget v2, Lcom/android/keyguard/R$layout;->keyguard_clock_page:I

    invoke-direct {v0, p0, v1, v2}, Lcom/android/keyguard/servicebox/pages/KeyguardPageItem;-><init>(Lcom/android/keyguard/servicebox/KeyguardServiceBoxController;Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mServiceBoxItemList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private attachMusicPage()V
    .locals 3

    new-instance v0, Lcom/android/keyguard/servicebox/pages/KeyguardPageItem;

    const-string/jumbo v1, "servicebox_music"

    sget v2, Lcom/android/keyguard/R$layout;->servicebox_music_page:I

    invoke-direct {v0, p0, v1, v2}, Lcom/android/keyguard/servicebox/pages/KeyguardPageItem;-><init>(Lcom/android/keyguard/servicebox/KeyguardServiceBoxController;Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mServiceBoxItemList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private attachRemoteViewsPages()V
    .locals 6

    iget-object v2, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mRemoteViewsItemList:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;

    iget-object v2, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mServiceBoxItemList:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/keyguard/servicebox/pages/KeyguardPageItem;

    iget-object v4, v0, Lcom/android/keyguard/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;->packageName:Ljava/lang/String;

    sget v5, Lcom/android/keyguard/R$layout;->servicebox_remoteviews_page:I

    invoke-direct {v3, p0, v4, v5, v0}, Lcom/android/keyguard/servicebox/pages/KeyguardPageItem;-><init>(Lcom/android/keyguard/servicebox/KeyguardServiceBoxController;Ljava/lang/String;ILcom/android/keyguard/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method private getCoverContainerHeight()I
    .locals 3

    iget v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mServiceBoxSCoverHeight:I

    int-to-float v0, v0

    invoke-direct {p0}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->getLargeOrSmallMark()I

    move-result v1

    int-to-float v1, v1

    const v2, 0x3d23d70a    # 0.04f

    mul-float/2addr v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v1, v2, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private getCurrentPagePkgName()Ljava/lang/String;
    .locals 4

    iget-object v3, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mServiceBoxViewPager:Lcom/android/keyguard/servicebox/KeyguardServiceBoxViewPager;

    invoke-virtual {v3}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxViewPager;->getCurrent()Ljava/lang/Object;

    move-result-object v0

    instance-of v3, v0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;

    if-nez v3, :cond_0

    const/4 v3, 0x0

    return-object v3

    :cond_0
    move-object v2, v0

    check-cast v2, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;

    invoke-virtual {v2}, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "clone_clock"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string/jumbo v1, "servicebox_clock"

    :cond_1
    return-object v1
.end method

.method private getLargeOrSmallMark()I
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v0, v2, Landroid/content/res/Configuration;->densityDpi:I

    const/4 v1, 0x0

    :goto_0
    if-gt v1, v4, :cond_2

    sget-object v2, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->DENSITY_MAP:[[I

    aget-object v2, v2, v1

    aget v2, v2, v3

    if-ne v0, v2, :cond_0

    const/4 v2, -0x1

    return v2

    :cond_0
    sget-object v2, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->DENSITY_MAP:[[I

    aget-object v2, v2, v1

    aget v2, v2, v4

    if-ne v0, v2, :cond_1

    const/4 v2, 0x1

    return v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v3
.end method

.method private handleScreenTurnedOff()V
    .locals 3

    const/16 v1, 0x8

    const/4 v2, 0x0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mReadyToAnimation:Z

    iget-object v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mLeftArrowView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mRightArrowView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iput-boolean v2, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mIsScreenTurnedOn:Z

    iget-object v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mResetTimer:Lcom/android/keyguard/servicebox/utils/ServiceBoxPageResetTimer;

    iget-boolean v1, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mIsScreenTurnedOn:Z

    invoke-virtual {v0, v1}, Lcom/android/keyguard/servicebox/utils/ServiceBoxPageResetTimer;->setScreenTurnedOn(Z)V

    iget-object v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mResetTimer:Lcom/android/keyguard/servicebox/utils/ServiceBoxPageResetTimer;

    invoke-virtual {v0, v2}, Lcom/android/keyguard/servicebox/utils/ServiceBoxPageResetTimer;->setServiceBoxShowing(Z)V

    iget-object v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/util/SettingsHelper;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/SettingsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/util/SettingsHelper;->isAodEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "KeyguardServiceBoxContainer"

    const-string/jumbo v1, "Go to the clock page due to AOD is disabled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->writeDefaultPageToSettings()V

    :cond_0
    return-void
.end method

.method private handleScreenTurnedOn()V
    .locals 2

    invoke-direct {p0}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->showArrowAnimation()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mIsScreenTurnedOn:Z

    iget-object v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mResetTimer:Lcom/android/keyguard/servicebox/utils/ServiceBoxPageResetTimer;

    iget-boolean v1, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mIsScreenTurnedOn:Z

    invoke-virtual {v0, v1}, Lcom/android/keyguard/servicebox/utils/ServiceBoxPageResetTimer;->setScreenTurnedOn(Z)V

    return-void
.end method

.method private hideArrowAnimation()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mReadyToAnimation:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mReadyToAnimation:Z

    iget-object v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mLeftArrowAnimator:Lcom/android/keyguard/servicebox/utils/GuideArrowAnimator;

    invoke-virtual {v0}, Lcom/android/keyguard/servicebox/utils/GuideArrowAnimator;->hide()V

    iget-object v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mRightArrowAnimator:Lcom/android/keyguard/servicebox/utils/GuideArrowAnimator;

    invoke-virtual {v0}, Lcom/android/keyguard/servicebox/utils/GuideArrowAnimator;->hide()V

    return-void
.end method

.method private initDimens()V
    .locals 3

    iget-object v1, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mWindowManager:Landroid/view/WindowManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v1, v2}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/keyguard/R$dimen;->servicebox_page_small_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mServiceBoxSmallHeight:I

    sget v1, Lcom/android/keyguard/R$dimen;->servicebox_page_expanded_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mServiceBoxExpandedHeight:I

    sget v1, Lcom/android/keyguard/R$dimen;->servicebox_page_scover_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mServiceBoxSCoverHeight:I

    sget v1, Lcom/android/keyguard/R$dimen;->servicebox_page_mkcover_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mServiceBoxMKCoverHeight:I

    sget v1, Lcom/android/keyguard/R$dimen;->servicebox_page_dex_min_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mServiceBoxDexMinHeight:I

    sget-boolean v1, Lcom/android/keyguard/KeyguardRune;->SUPPORT_SERVICEBOX:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mLeftArrowAnimator:Lcom/android/keyguard/servicebox/utils/GuideArrowAnimator;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mLeftArrowAnimator:Lcom/android/keyguard/servicebox/utils/GuideArrowAnimator;

    iget-object v2, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v1, v2}, Lcom/android/keyguard/servicebox/utils/GuideArrowAnimator;->init(I)V

    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mRightArrowAnimator:Lcom/android/keyguard/servicebox/utils/GuideArrowAnimator;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mRightArrowAnimator:Lcom/android/keyguard/servicebox/utils/GuideArrowAnimator;

    iget-object v2, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v1, v2}, Lcom/android/keyguard/servicebox/utils/GuideArrowAnimator;->init(I)V

    :cond_2
    return-void
.end method

.method private isKeyguardShowing()Z
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mStatusCallback:Lcom/android/keyguard/servicebox/KeyguardStatusCallback;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mStatusCallback:Lcom/android/keyguard/servicebox/KeyguardStatusCallback;

    invoke-interface {v0}, Lcom/android/keyguard/servicebox/KeyguardStatusCallback;->isKeyguardShowing()Z

    move-result v0

    return v0
.end method

.method private isRTL()Z
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->getLayoutDirection()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSViewCovered()Z
    .locals 1

    sget-boolean v0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->sIsSViewCovered:Z

    return v0
.end method

.method private reissueAllPages()V
    .locals 7

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mServiceBoxItemList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    iget-object v4, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mServiceBoxPageAdapter:Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPageAdapter;

    invoke-virtual {v4}, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPageAdapter;->clear()V

    invoke-direct {p0}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->attachClockPage()V

    invoke-direct {p0}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->writeDefaultPageToSettings()V

    sget-boolean v4, Lcom/android/keyguard/KeyguardRune;->SUPPORT_SERVICEBOX:Z

    if-eqz v4, :cond_0

    const/4 v0, 0x0

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mSettingsHelper:Lcom/android/keyguard/util/SettingsHelper;

    invoke-virtual {v4}, Lcom/android/keyguard/util/SettingsHelper;->isEmergencyMode()Z

    move-result v0

    iget-object v4, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mSettingsHelper:Lcom/android/keyguard/util/SettingsHelper;

    invoke-virtual {v4}, Lcom/android/keyguard/util/SettingsHelper;->isUltraPowerSavingMode()Z

    move-result v3

    if-nez v0, :cond_0

    if-eqz v3, :cond_2

    :cond_0
    :goto_0
    const-string/jumbo v4, "KeyguardServiceBoxContainer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "reissueAllPages() SERVICEBOX="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-boolean v6, Lcom/android/keyguard/KeyguardRune;->SUPPORT_SERVICEBOX:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", m="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", t="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mServiceBoxPageAdapter:Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPageAdapter;

    invoke-virtual {v4}, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPageAdapter;->notifyDataSetChanged()V

    sget-boolean v4, Lcom/android/keyguard/KeyguardRune;->SUPPORT_MOBILE_KEYBOARD:Z

    if-eqz v4, :cond_1

    iget-boolean v4, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mIsMKeyboardConnected:Z

    if-eqz v4, :cond_1

    iget-boolean v4, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mIsMKeyboardConnected:Z

    invoke-direct {p0, v4}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->setMobileKeyboardState(Z)V

    :cond_1
    return-void

    :cond_2
    sget-boolean v4, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mIsDeskMode:Z

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mSettingsHelper:Lcom/android/keyguard/util/SettingsHelper;

    invoke-virtual {v4}, Lcom/android/keyguard/util/SettingsHelper;->isEnabledServiceBoxMusicPage()Z

    move-result v1

    iget-object v4, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mSettingsHelper:Lcom/android/keyguard/util/SettingsHelper;

    invoke-virtual {v4}, Lcom/android/keyguard/util/SettingsHelper;->isEnabledServiceBoxTodaysPage()Z

    move-result v2

    if-eqz v1, :cond_3

    invoke-direct {p0}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->attachMusicPage()V

    :cond_3
    if-eqz v2, :cond_4

    invoke-direct {p0}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->attachCalendarPage()V

    :cond_4
    invoke-direct {p0}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->attachRemoteViewsPages()V

    goto :goto_0
.end method

.method private sendGsimLog(Ljava/lang/String;Z)V
    .locals 5

    const-string/jumbo v0, ""

    const-string/jumbo v1, "servicebox_music"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz p2, :cond_1

    const-string/jumbo v0, "MA"

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "com.android.systemui"

    const-string/jumbo v3, "LWFP"

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v0, v4}, Lcom/android/keyguard/util/GsimLogManager;->sendLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    return-void

    :cond_1
    const-string/jumbo v0, "ML"

    goto :goto_0

    :cond_2
    const-string/jumbo v1, "servicebox_calendar"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p2, :cond_3

    const-string/jumbo v0, "TA"

    goto :goto_0

    :cond_3
    const-string/jumbo v0, "TL"

    goto :goto_0
.end method

.method private sendRequestRemoteViewsBroadcast()V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.android.intent.action.REQUEST_SERVICEBOX_REMOTEVIEWS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private setCurrentPage(Ljava/lang/String;Z)V
    .locals 3

    iget-object v2, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mServiceBoxItemList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v2, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mServiceBoxItemList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/servicebox/pages/KeyguardPageItem;

    invoke-virtual {v1}, Lcom/android/keyguard/servicebox/pages/KeyguardPageItem;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mServiceBoxViewPager:Lcom/android/keyguard/servicebox/KeyguardServiceBoxViewPager;

    invoke-virtual {v2, v0, p2}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxViewPager;->setCurrentItem(IZ)V

    return-void

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private setMobileKeyboardState(Z)V
    .locals 3

    const-string/jumbo v0, "KeyguardServiceBoxContainer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setMobileKeyboardState() isConnected = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mServiceBoxPageAdapter:Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPageAdapter;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPageAdapter;->setMobileKeyboardState(Z)V

    if-nez p1, :cond_0

    iget-boolean v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mIsExpanded:Z

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->setExpandState(Z)V

    invoke-direct {p0}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->updateContainerLayout()V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private showArrowAnimation()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mReadyToAnimation:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mServiceBoxItemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_1

    :cond_0
    return-void

    :cond_1
    sget-boolean v0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mIsDeskMode:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mReadyToAnimation:Z

    iget-object v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mLeftArrowAnimator:Lcom/android/keyguard/servicebox/utils/GuideArrowAnimator;

    invoke-virtual {v0}, Lcom/android/keyguard/servicebox/utils/GuideArrowAnimator;->start()V

    iget-object v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mRightArrowAnimator:Lcom/android/keyguard/servicebox/utils/GuideArrowAnimator;

    invoke-virtual {v0}, Lcom/android/keyguard/servicebox/utils/GuideArrowAnimator;->start()V

    return-void
.end method

.method private updateChildViewsLook()V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mServiceBoxPageAdapter:Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPageAdapter;

    invoke-virtual {v0}, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPageAdapter;->updateChildViewsLook()V

    iget-object v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mOwnerInfo:Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView;

    invoke-virtual {v0}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView;->updateChildViewsLook()V

    return-void
.end method

.method private updateContainerLayout()V
    .locals 6

    iget v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mServiceBoxSmallHeight:I

    const/high16 v2, 0x3f800000    # 1.0f

    sget-boolean v3, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->sIsSViewCovered:Z

    if-eqz v3, :cond_1

    invoke-direct {p0}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->getCoverContainerHeight()I

    move-result v0

    const v2, 0x3f333333    # 0.7f

    :cond_0
    :goto_0
    const-string/jumbo v3, "KeyguardServiceBoxContainer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateContainerLayout() h = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", s = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", c = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-boolean v5, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->sIsSViewCovered:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", mk = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mIsMKeyboardConnected:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", d = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-boolean v5, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mIsDeskMode:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", e = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mIsExpanded:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p0, v1}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, v0}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->setMinimumHeight(I)V

    iget-object v3, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mServiceBoxScailingView:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setScaleX(F)V

    iget-object v3, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mServiceBoxScailingView:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setScaleY(F)V

    return-void

    :cond_1
    sget-boolean v3, Lcom/android/keyguard/KeyguardRune;->SUPPORT_MOBILE_KEYBOARD:Z

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mIsMKeyboardConnected:Z

    if-eqz v3, :cond_2

    iget v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mServiceBoxMKCoverHeight:I

    const/high16 v2, 0x3f400000    # 0.75f

    goto :goto_0

    :cond_2
    sget-boolean v3, Lcom/android/keyguard/KeyguardRune;->SUPPORT_SERVICEBOX:Z

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mIsExpanded:Z

    if-eqz v3, :cond_0

    iget v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mServiceBoxExpandedHeight:I

    const/high16 v2, 0x3f800000    # 1.0f

    goto/16 :goto_0
.end method

.method private updatePivotX()V
    .locals 3

    iget-object v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mWindowManager:Landroid/view/WindowManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mServiceBoxScailingView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v1, v1

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotX(F)V

    return-void
.end method

.method private declared-synchronized updateRemoteViewsPage(Lcom/android/keyguard/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;)V
    .locals 7

    monitor-enter p0

    :try_start_0
    const-string/jumbo v3, "KeyguardServiceBoxContainer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateRemoteViewsPage() item = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v3, p1, Lcom/android/keyguard/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;->isShow:Z

    if-eqz v3, :cond_3

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mRemoteViewsItemList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    :goto_0
    if-ltz v1, :cond_0

    iget-object v4, p1, Lcom/android/keyguard/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;->packageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mRemoteViewsItemList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/keyguard/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;

    iget-object v3, v3, Lcom/android/keyguard/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mRemoteViewsItemList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/keyguard/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;

    invoke-virtual {v2, p1}, Lcom/android/keyguard/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;->copyFrom(Lcom/android/keyguard/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;)V

    const/4 v0, 0x1

    :cond_0
    if-eqz v0, :cond_2

    iget-object v3, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mServiceBoxPageAdapter:Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPageAdapter;

    iget-object v4, p1, Lcom/android/keyguard/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPageAdapter;->updateRemoteViews(Ljava/lang/String;)V

    :goto_1
    iget-object v3, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mServiceBoxPageAdapter:Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPageAdapter;

    invoke-virtual {v3}, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPageAdapter;->notifyDataSetChanged()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    :try_start_1
    iget-object v3, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mRemoteViewsItemList:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mServiceBoxItemList:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/keyguard/servicebox/pages/KeyguardPageItem;

    iget-object v5, p1, Lcom/android/keyguard/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;->packageName:Ljava/lang/String;

    sget v6, Lcom/android/keyguard/R$layout;->servicebox_remoteviews_page:I

    invoke-direct {v4, p0, v5, v6, p1}, Lcom/android/keyguard/servicebox/pages/KeyguardPageItem;-><init>(Lcom/android/keyguard/servicebox/KeyguardServiceBoxController;Ljava/lang/String;ILcom/android/keyguard/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    :cond_3
    :try_start_2
    iget-object v3, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mRemoteViewsItemList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    :goto_2
    if-ltz v1, :cond_4

    iget-object v4, p1, Lcom/android/keyguard/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;->packageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mRemoteViewsItemList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/keyguard/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;

    iget-object v3, v3, Lcom/android/keyguard/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mRemoteViewsItemList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_4
    iget-object v3, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mServiceBoxItemList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    :goto_3
    if-ltz v1, :cond_5

    iget-object v4, p1, Lcom/android/keyguard/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;->packageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mServiceBoxItemList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/keyguard/servicebox/pages/KeyguardPageItem;

    invoke-virtual {v3}, Lcom/android/keyguard/servicebox/pages/KeyguardPageItem;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mServiceBoxItemList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_5
    iget-object v3, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mServiceBoxPageAdapter:Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPageAdapter;

    iget-object v4, p1, Lcom/android/keyguard/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPageAdapter;->removeCacheData(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :cond_6
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    :cond_7
    add-int/lit8 v1, v1, -0x1

    goto :goto_3
.end method

.method private writeDefaultPageToSettings()V
    .locals 2

    sget-boolean v0, Lcom/android/keyguard/KeyguardRune;->SUPPORT_SERVICEBOX:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mSettingsHelper:Lcom/android/keyguard/util/SettingsHelper;

    const-string/jumbo v1, "servicebox_clock"

    invoke-virtual {v0, v1}, Lcom/android/keyguard/util/SettingsHelper;->setServiceBoxSharePageName(Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public disableBlurFlag(Ljava/lang/String;)V
    .locals 5

    const/4 v4, 0x0

    const-string/jumbo v0, "KeyguardServiceBoxContainer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "disableBlurFlag pkgName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxWindowManager;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/servicebox/KeyguardServiceBoxWindowManager;

    move-result-object v0

    const-wide/16 v2, 0x190

    invoke-virtual {v0, p1, v2, v3}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxWindowManager;->setDuration(Ljava/lang/String;J)V

    iget-object v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxWindowManager;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/servicebox/KeyguardServiceBoxWindowManager;

    move-result-object v0

    invoke-virtual {v0, p1, v4, v4}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxWindowManager;->setFlag(Ljava/lang/String;ZZ)V

    return-void
.end method

.method public dismissServiceBox(Ljava/lang/String;)V
    .locals 3

    const-string/jumbo v0, "KeyguardServiceBoxContainer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "dismissServiceBox pkgName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxWindowManager;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/servicebox/KeyguardServiceBoxWindowManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxWindowManager;->hideFloatingView(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mResetTimer:Lcom/android/keyguard/servicebox/utils/ServiceBoxPageResetTimer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/keyguard/servicebox/utils/ServiceBoxPageResetTimer;->setServiceBoxShowing(Z)V

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    sget-boolean v0, Lcom/android/keyguard/KeyguardRune;->SUPPORT_SERVICEBOX:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->hideArrowAnimation()V

    iget-object v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mResetTimer:Lcom/android/keyguard/servicebox/utils/ServiceBoxPageResetTimer;

    invoke-virtual {v0}, Lcom/android/keyguard/servicebox/utils/ServiceBoxPageResetTimer;->resetTimer()V

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public getPageTopPos(Ljava/lang/String;)I
    .locals 2

    iget-object v1, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mServiceBoxPageAdapter:Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPageAdapter;

    invoke-virtual {v1, p1}, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPageAdapter;->getCacheData(Ljava/lang/String;)Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->getTopPosOfHolder()I

    move-result v1

    return v1
.end method

.method public getStatusCallback()Lcom/android/keyguard/servicebox/KeyguardStatusCallback;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mStatusCallback:Lcom/android/keyguard/servicebox/KeyguardStatusCallback;

    return-object v0
.end method

.method public isContainerExpanded()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mIsExpanded:Z

    return v0
.end method

.method public isPagedViewEnabled()Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    sget-boolean v2, Lcom/android/keyguard/KeyguardRune;->SUPPORT_SERVICEBOX:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mServiceBoxItemList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 4

    const/4 v0, 0x1

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    iget-object v1, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    iget-object v1, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mSettingsHelper:Lcom/android/keyguard/util/SettingsHelper;

    iget-object v2, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mWhiteWallpaperSettingsListener:Lcom/android/keyguard/util/SettingsHelper$OnChangedCallback;

    sget-object v3, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->WHITE_WALLPAPER_SETTINGS_VALUE_LISTENER_LIST:[Landroid/net/Uri;

    invoke-virtual {v1, v2, v3}, Lcom/android/keyguard/util/SettingsHelper;->registerCallback(Lcom/android/keyguard/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    sget-boolean v1, Lcom/android/keyguard/KeyguardRune;->SUPPORT_SERVICEBOX:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mSettingsHelper:Lcom/android/keyguard/util/SettingsHelper;

    iget-object v2, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mServiceBoxSettingsListener:Lcom/android/keyguard/util/SettingsHelper$OnChangedCallback;

    sget-object v3, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->SERVICEBOX_SETTINGS_VALUE_LISTENER_LIST:[Landroid/net/Uri;

    invoke-virtual {v1, v2, v3}, Lcom/android/keyguard/util/SettingsHelper;->registerCallback(Lcom/android/keyguard/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    :cond_0
    sget-boolean v1, Lcom/android/keyguard/KeyguardRune;->SUPPORT_MOBILE_KEYBOARD:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->semMobileKeyboardCovered:I

    if-ne v1, v0, :cond_3

    :goto_0
    iput-boolean v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mIsMKeyboardConnected:Z

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KnoxStateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KnoxStateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mKnoxStateCallback:Lcom/android/keyguard/KnoxStateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KnoxStateMonitor;->registerCallback(Lcom/android/keyguard/KnoxStateMonitorCallback;)V

    iget-object v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v1, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    invoke-virtual {p0}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    :cond_2
    return-void

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget v2, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mCurrentLayoutDirection:I

    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v3

    if-eq v2, v3, :cond_0

    invoke-direct {p0}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->reissueAllPages()V

    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v2

    iput v2, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mCurrentLayoutDirection:I

    :cond_0
    sget-boolean v2, Lcom/android/keyguard/KeyguardRune;->SUPPORT_MOBILE_KEYBOARD:Z

    if-eqz v2, :cond_1

    iget-boolean v3, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mIsMKeyboardConnected:Z

    iget v2, p1, Landroid/content/res/Configuration;->semMobileKeyboardCovered:I

    if-ne v2, v0, :cond_2

    move v2, v0

    :goto_0
    if-eq v3, v2, :cond_1

    iget v2, p1, Landroid/content/res/Configuration;->semMobileKeyboardCovered:I

    if-ne v2, v0, :cond_3

    :goto_1
    iput-boolean v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mIsMKeyboardConnected:Z

    iget-boolean v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mIsMKeyboardConnected:Z

    invoke-direct {p0, v0}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->setMobileKeyboardState(Z)V

    :cond_1
    return-void

    :cond_2
    move v2, v1

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method public onDensityOrFontScaleChanged()V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->reissueAllPages()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    iget-object v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mSettingsHelper:Lcom/android/keyguard/util/SettingsHelper;

    iget-object v1, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mWhiteWallpaperSettingsListener:Lcom/android/keyguard/util/SettingsHelper$OnChangedCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/util/SettingsHelper;->unregisterCallback(Lcom/android/keyguard/util/SettingsHelper$OnChangedCallback;)V

    sget-boolean v0, Lcom/android/keyguard/KeyguardRune;->SUPPORT_SERVICEBOX:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mSettingsHelper:Lcom/android/keyguard/util/SettingsHelper;

    iget-object v1, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mServiceBoxSettingsListener:Lcom/android/keyguard/util/SettingsHelper$OnChangedCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/util/SettingsHelper;->unregisterCallback(Lcom/android/keyguard/util/SettingsHelper$OnChangedCallback;)V

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KnoxStateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KnoxStateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mKnoxStateCallback:Lcom/android/keyguard/KnoxStateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KnoxStateMonitor;->removeCallback(Lcom/android/keyguard/KnoxStateMonitorCallback;)V

    iget-object v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v1, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    :cond_1
    return-void
.end method

.method public onDismissServiceBoxStarted(Ljava/lang/String;)V
    .locals 4

    const-string/jumbo v0, "KeyguardServiceBoxContainer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onDismissServiceBoxStarted pkgName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mStatusCallback:Lcom/android/keyguard/servicebox/KeyguardStatusCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mStatusCallback:Lcom/android/keyguard/servicebox/KeyguardStatusCallback;

    const/4 v1, 0x0

    const-wide/16 v2, 0x190

    invoke-interface {v0, v1, v2, v3}, Lcom/android/keyguard/servicebox/KeyguardStatusCallback;->setFullScreenMode(ZJ)V

    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 6

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    new-instance v0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPageAdapter;

    iget-object v3, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mServiceBoxItemList:Ljava/util/ArrayList;

    invoke-direct {v0, v3, v4, p0}, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPageAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Lcom/android/keyguard/servicebox/KeyguardServiceBoxController;)V

    iput-object v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mServiceBoxPageAdapter:Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPageAdapter;

    sget v0, Lcom/android/keyguard/R$id;->keyguard_servicebox_viewpager:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxViewPager;

    iput-object v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mServiceBoxViewPager:Lcom/android/keyguard/servicebox/KeyguardServiceBoxViewPager;

    iget-object v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mServiceBoxViewPager:Lcom/android/keyguard/servicebox/KeyguardServiceBoxViewPager;

    iget-object v3, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mServiceBoxPageAdapter:Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPageAdapter;

    invoke-virtual {v0, v3}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxViewPager;->setAdapter(Lcom/android/internal/widget/PagerAdapter;)V

    sget v0, Lcom/android/keyguard/R$id;->keyguard_owner_info:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView;

    iput-object v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mOwnerInfo:Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView;

    sget v0, Lcom/android/keyguard/R$id;->keyguard_servicebox_scailing_container:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mServiceBoxScailingView:Landroid/view/View;

    iget-object v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "window"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mWindowManager:Landroid/view/WindowManager;

    invoke-direct {p0}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->updatePivotX()V

    sget-boolean v0, Lcom/android/keyguard/KeyguardRune;->SUPPORT_SERVICEBOX:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/android/keyguard/R$id;->keyguard_servicebox_affordance_arrow_l:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mLeftArrowView:Landroid/widget/ImageView;

    sget v0, Lcom/android/keyguard/R$id;->keyguard_servicebox_affordance_arrow_r:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mRightArrowView:Landroid/widget/ImageView;

    new-instance v0, Lcom/android/keyguard/servicebox/utils/GuideArrowAnimator;

    invoke-virtual {p0}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mLeftArrowView:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v5, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-direct {v0, v3, v4, v1, v5}, Lcom/android/keyguard/servicebox/utils/GuideArrowAnimator;-><init>(Landroid/content/res/Resources;Landroid/view/View;ZI)V

    iput-object v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mLeftArrowAnimator:Lcom/android/keyguard/servicebox/utils/GuideArrowAnimator;

    new-instance v0, Lcom/android/keyguard/servicebox/utils/GuideArrowAnimator;

    invoke-virtual {p0}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mRightArrowView:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v5, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-direct {v0, v3, v4, v2, v5}, Lcom/android/keyguard/servicebox/utils/GuideArrowAnimator;-><init>(Landroid/content/res/Resources;Landroid/view/View;ZI)V

    iput-object v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mRightArrowAnimator:Lcom/android/keyguard/servicebox/utils/GuideArrowAnimator;

    invoke-direct {p0}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->showArrowAnimation()V

    new-instance v0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer$6;

    invoke-direct {v0, p0}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer$6;-><init>(Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;)V

    iput-object v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mServiceBoxSettingsListener:Lcom/android/keyguard/util/SettingsHelper$OnChangedCallback;

    iget-object v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mServiceBoxViewPager:Lcom/android/keyguard/servicebox/KeyguardServiceBoxViewPager;

    iget-object v3, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mOnPageChangeListener:Lcom/android/internal/widget/ViewPager$OnPageChangeListener;

    invoke-virtual {v0, v3}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxViewPager;->setOnPageChangeListener(Lcom/android/internal/widget/ViewPager$OnPageChangeListener;)V

    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->setVisibility(I)V

    invoke-direct {p0}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->reissueAllPages()V

    new-instance v0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer$7;

    invoke-direct {v0, p0}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer$7;-><init>(Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;)V

    iput-object v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mWhiteWallpaperSettingsListener:Lcom/android/keyguard/util/SettingsHelper$OnChangedCallback;

    sget-boolean v0, Lcom/android/keyguard/KeyguardRune;->SUPPORT_MOBILE_KEYBOARD:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->semMobileKeyboardCovered:I

    if-ne v0, v1, :cond_2

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mIsMKeyboardConnected:Z

    iget-boolean v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mIsMKeyboardConnected:Z

    invoke-direct {p0, v0}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->setMobileKeyboardState(Z)V

    :cond_1
    invoke-direct {p0}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->updateContainerLayout()V

    return-void

    :cond_2
    move v0, v2

    goto :goto_0
.end method

.method public refreshTime()V
    .locals 2

    const-string/jumbo v0, "KeyguardServiceBoxContainer"

    const-string/jumbo v1, "refreshTime()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mServiceBoxPageAdapter:Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPageAdapter;

    invoke-virtual {v0}, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPageAdapter;->refreshViews()V

    return-void
.end method

.method public setCoverState(Z)V
    .locals 4

    const/4 v0, 0x0

    const-string/jumbo v1, "KeyguardServiceBoxContainer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setCoverState() isSViewCovered = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", sIsSViewCovered = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->sIsSViewCovered:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v1, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->sIsSViewCovered:Z

    if-eq v1, p1, :cond_2

    sput-boolean p1, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->sIsSViewCovered:Z

    iget-object v1, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mServiceBoxPageAdapter:Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPageAdapter;

    invoke-virtual {v1, p1}, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPageAdapter;->setCoverState(Z)V

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mOwnerInfo:Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView;

    invoke-virtual {v1}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView;->updateOwnerInfo()V

    :cond_0
    sget-boolean v1, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->sIsSViewCovered:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mIsExpanded:Z

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->setExpandState(Z)V

    invoke-direct {p0}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->updateContainerLayout()V

    :cond_2
    return-void
.end method

.method public setExpandState(Z)V
    .locals 4

    const/4 v0, 0x0

    const-string/jumbo v1, "KeyguardServiceBoxContainer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setExpandState() isExpand = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", mIsExpanded = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mIsExpanded:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", mIsScreenTurnedOn = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mIsScreenTurnedOn:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v1, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->EXPAND_ENABLED:Z

    if-nez v1, :cond_0

    return-void

    :cond_0
    sget-boolean v1, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->sIsSViewCovered:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mIsMKeyboardConnected:Z

    if-eqz v1, :cond_2

    :cond_1
    const/4 p1, 0x0

    :cond_2
    iget-boolean v1, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mIsExpanded:Z

    if-eq v1, p1, :cond_3

    sget-boolean v1, Lcom/android/keyguard/KeyguardRune;->SUPPORT_SERVICEBOX:Z

    if-eqz v1, :cond_4

    :goto_0
    iput-boolean p1, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mIsExpanded:Z

    invoke-direct {p0}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->updateContainerLayout()V

    iget-boolean v1, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mIsScreenTurnedOn:Z

    if-eqz v1, :cond_5

    invoke-direct {p0}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->isKeyguardShowing()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mServiceBoxPageAdapter:Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPageAdapter;

    invoke-virtual {v0}, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPageAdapter;->makeTransitionData()V

    invoke-virtual {p0}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer$8;

    invoke-direct {v1, p0}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer$8;-><init>(Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_3
    :goto_1
    return-void

    :cond_4
    move p1, v0

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mServiceBoxPageAdapter:Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPageAdapter;

    iget-boolean v2, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mIsExpanded:Z

    if-eqz v2, :cond_6

    const/4 v0, 0x1

    :cond_6
    invoke-virtual {v1, v0}, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPageAdapter;->setPageType(I)V

    goto :goto_1
.end method

.method public setStatusCallback(Lcom/android/keyguard/servicebox/KeyguardStatusCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mStatusCallback:Lcom/android/keyguard/servicebox/KeyguardStatusCallback;

    return-void
.end method

.method public showServiceBox(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->showServiceBox(Ljava/lang/String;Z)V

    return-void
.end method

.method public showServiceBox(Ljava/lang/String;Z)V
    .locals 17

    const-string/jumbo v3, "KeyguardServiceBoxContainer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "showServiceBox pkgName = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, ", isExternal = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-void

    :cond_0
    invoke-direct/range {p0 .. p2}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->sendGsimLog(Ljava/lang/String;Z)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mServiceBoxPageAdapter:Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPageAdapter;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPageAdapter;->getCacheData(Ljava/lang/String;)Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->showExternalActivity()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string/jumbo v3, "KeyguardServiceBoxContainer"

    const-string/jumbo v4, "external activity is launched"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mContext:Landroid/content/Context;

    const-class v4, Landroid/os/PowerManager;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    const-string/jumbo v3, "com.android.systemui:SERVICE_BOX"

    invoke-virtual {v15, v6, v7, v3}, Landroid/os/PowerManager;->wakeUp(JLjava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mServiceBoxItemList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v12, v3, -0x1

    :goto_0
    if-ltz v12, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mServiceBoxItemList:Ljava/util/ArrayList;

    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/keyguard/servicebox/pages/KeyguardPageItem;

    invoke-virtual {v14}, Lcom/android/keyguard/servicebox/pages/KeyguardPageItem;->getPackageName()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    const-string/jumbo v3, "KeyguardServiceBoxContainer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "showServiceBox item pkgName = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v14}, Lcom/android/keyguard/servicebox/pages/KeyguardPageItem;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v16, v14

    :cond_3
    if-eqz v16, :cond_7

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mStatusCallback:Lcom/android/keyguard/servicebox/KeyguardStatusCallback;

    if-eqz v3, :cond_4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mStatusCallback:Lcom/android/keyguard/servicebox/KeyguardStatusCallback;

    const/4 v4, 0x1

    const-wide/16 v6, 0x64

    invoke-interface {v3, v4, v6, v7}, Lcom/android/keyguard/servicebox/KeyguardStatusCallback;->setFullScreenMode(ZJ)V

    :cond_4
    const-string/jumbo v3, "KeyguardServiceBoxContainer"

    const-string/jumbo v4, "showServiceBox!!"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_9

    const/4 v13, 0x2

    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mContext:Landroid/content/Context;

    const/4 v4, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4, v13}, Lcom/android/keyguard/servicebox/pages/KeyguardPageItem;->getPageView(Landroid/content/Context;ZI)Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;

    move-result-object v5

    if-nez p2, :cond_5

    const/4 v3, 0x2

    const/4 v4, 0x1

    invoke-virtual {v5, v3, v4}, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->setPageType(IZ)V

    :cond_5
    if-eqz p2, :cond_6

    invoke-virtual {v5}, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v3

    new-instance v4, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer$9;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v5}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer$9;-><init>(Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;)V

    invoke-virtual {v3, v4}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mPageAttachedStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {v5, v3}, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxWindowManager;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/servicebox/KeyguardServiceBoxWindowManager;

    move-result-object v3

    invoke-virtual/range {v16 .. v16}, Lcom/android/keyguard/servicebox/pages/KeyguardPageItem;->getPackageName()Ljava/lang/String;

    move-result-object v4

    sget-boolean v6, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mIsDeskMode:Z

    if-eqz v6, :cond_b

    const/4 v9, 0x0

    :goto_2
    if-eqz p2, :cond_c

    const/4 v6, 0x1

    :goto_3
    int-to-long v10, v6

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x1

    invoke-virtual/range {v3 .. v11}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxWindowManager;->showFloatingView(Ljava/lang/String;Landroid/view/View;ZZZZJ)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mResetTimer:Lcom/android/keyguard/servicebox/utils/ServiceBoxPageResetTimer;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/keyguard/servicebox/utils/ServiceBoxPageResetTimer;->setServiceBoxShowing(Z)V

    :cond_7
    return-void

    :cond_8
    add-int/lit8 v12, v12, -0x1

    goto/16 :goto_0

    :cond_9
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mIsExpanded:Z

    if-eqz v3, :cond_a

    const/4 v13, 0x1

    goto :goto_1

    :cond_a
    const/4 v13, 0x0

    goto :goto_1

    :cond_b
    const/4 v9, 0x1

    goto :goto_2

    :cond_c
    const/4 v6, -0x1

    goto :goto_3
.end method

.method public updateCMAS(Z)V
    .locals 3

    const-string/jumbo v0, "KeyguardServiceBoxContainer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateCMAS() hasCmasNotification = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", mHasCMAS = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mHasCMAS:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mHasCMAS:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mHasCMAS:Z

    iget-object v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mServiceBoxPageAdapter:Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPageAdapter;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPageAdapter;->updateCMAS(Z)V

    iget-object v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mOwnerInfo:Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView;->updateOwnerInfo(Z)V

    :cond_0
    return-void
.end method
