.class public Lcom/android/systemui/statusbar/phone/SecNavigationBarView;
.super Lcom/android/systemui/statusbar/phone/NavigationBarView;
.source "SecNavigationBarView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/SecNavigationBarView$1;,
        Lcom/android/systemui/statusbar/phone/SecNavigationBarView$2;,
        Lcom/android/systemui/statusbar/phone/SecNavigationBarView$3;
    }
.end annotation


# instance fields
.field private final mBarController:Lcom/android/systemui/statusbar/phone/NavigationBarController;

.field private mChangeIconColorWhenIMEState:Ljava/lang/Runnable;

.field mCurrentRemoteView:Landroid/view/View;

.field private final mHandler:Landroid/os/Handler;

.field private mImageIcon:Z

.field private mIsThemeDefault:Z

.field private mLeftRemoteViewContainer:Landroid/widget/LinearLayout;

.field private mMarqueeList:[[I

.field private mMarqueePos:I

.field mNaviBarRemoteViewCallback:Lcom/android/systemui/statusbar/phone/NaviBarRemoteViewManager$NaviBarRemoteViewCallback;

.field mNaviBarRemoteViewManager:Lcom/android/systemui/statusbar/phone/NaviBarRemoteViewManager;

.field private mNavigationBarIconcolor:I

.field private mNavigationBarSettingsCallback:Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$OnChangedCallback;

.field private mNavigationBarSettingsHelper:Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;

.field private mRandom:Ljava/util/Random;

.field private mRightRemoteViewContainer:Landroid/widget/LinearLayout;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/statusbar/phone/SecNavigationBarView;)Lcom/android/systemui/statusbar/phone/NavigationBarController;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mBarController:Lcom/android/systemui/statusbar/phone/NavigationBarController;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/statusbar/phone/SecNavigationBarView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/statusbar/phone/SecNavigationBarView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mIsThemeDefault:Z

    return v0
.end method

.method static synthetic -get3(Lcom/android/systemui/statusbar/phone/SecNavigationBarView;)Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mNavigationBarSettingsHelper:Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/systemui/statusbar/phone/SecNavigationBarView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mIsThemeDefault:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/statusbar/phone/SecNavigationBarView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->setMenuImeSidePadding()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/systemui/statusbar/phone/SecNavigationBarView;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->updateNavigationBarColor(Z)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/systemui/statusbar/phone/SecNavigationBarView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->updateRemoteView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v4, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/NavigationBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mHandler:Landroid/os/Handler;

    iput-boolean v5, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mImageIcon:Z

    iput-boolean v5, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mIsThemeDefault:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mCurrentRemoteView:Landroid/view/View;

    const/16 v1, 0x11

    new-array v1, v1, [[I

    filled-new-array {v5, v5, v5, v5}, [I

    move-result-object v2

    aput-object v2, v1, v5

    filled-new-array {v5, v5, v4, v8}, [I

    move-result-object v2

    aput-object v2, v1, v6

    filled-new-array {v5, v5, v6, v7}, [I

    move-result-object v2

    aput-object v2, v1, v4

    filled-new-array {v4, v5, v5, v8}, [I

    move-result-object v2

    aput-object v2, v1, v7

    filled-new-array {v6, v5, v5, v7}, [I

    move-result-object v2

    aput-object v2, v1, v8

    filled-new-array {v8, v5, v5, v4}, [I

    move-result-object v2

    const/4 v3, 0x5

    aput-object v2, v1, v3

    filled-new-array {v7, v5, v5, v6}, [I

    move-result-object v2

    const/4 v3, 0x6

    aput-object v2, v1, v3

    filled-new-array {v8, v4, v5, v5}, [I

    move-result-object v2

    const/4 v3, 0x7

    aput-object v2, v1, v3

    filled-new-array {v7, v6, v5, v5}, [I

    move-result-object v2

    const/16 v3, 0x8

    aput-object v2, v1, v3

    filled-new-array {v4, v8, v5, v5}, [I

    move-result-object v2

    const/16 v3, 0x9

    aput-object v2, v1, v3

    filled-new-array {v6, v7, v5, v5}, [I

    move-result-object v2

    const/16 v3, 0xa

    aput-object v2, v1, v3

    filled-new-array {v5, v8, v4, v5}, [I

    move-result-object v2

    const/16 v3, 0xb

    aput-object v2, v1, v3

    filled-new-array {v5, v7, v6, v5}, [I

    move-result-object v2

    const/16 v3, 0xc

    aput-object v2, v1, v3

    filled-new-array {v5, v4, v8, v5}, [I

    move-result-object v2

    const/16 v3, 0xd

    aput-object v2, v1, v3

    filled-new-array {v5, v6, v7, v5}, [I

    move-result-object v2

    const/16 v3, 0xe

    aput-object v2, v1, v3

    filled-new-array {v5, v5, v8, v4}, [I

    move-result-object v2

    const/16 v3, 0xf

    aput-object v2, v1, v3

    filled-new-array {v5, v5, v7, v6}, [I

    move-result-object v2

    const/16 v3, 0x10

    aput-object v2, v1, v3

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mMarqueeList:[[I

    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mRandom:Ljava/util/Random;

    iput v5, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mMarqueePos:I

    new-instance v1, Lcom/android/systemui/statusbar/phone/SecNavigationBarView$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView$1;-><init>(Lcom/android/systemui/statusbar/phone/SecNavigationBarView;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mNavigationBarSettingsCallback:Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$OnChangedCallback;

    new-instance v1, Lcom/android/systemui/statusbar/phone/SecNavigationBarView$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView$2;-><init>(Lcom/android/systemui/statusbar/phone/SecNavigationBarView;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mChangeIconColorWhenIMEState:Ljava/lang/Runnable;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/NaviBarRemoteViewManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/NaviBarRemoteViewManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mNaviBarRemoteViewManager:Lcom/android/systemui/statusbar/phone/NaviBarRemoteViewManager;

    new-instance v1, Lcom/android/systemui/statusbar/phone/SecNavigationBarView$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView$3;-><init>(Lcom/android/systemui/statusbar/phone/SecNavigationBarView;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mNaviBarRemoteViewCallback:Lcom/android/systemui/statusbar/phone/NaviBarRemoteViewManager$NaviBarRemoteViewCallback;

    iput v5, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mNavigationBarIconcolor:I

    new-instance v1, Lcom/android/systemui/statusbar/phone/NavigationBarController;

    invoke-direct {v1, p1, p0}, Lcom/android/systemui/statusbar/phone/NavigationBarController;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/NavigationBarView;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mBarController:Lcom/android/systemui/statusbar/phone/NavigationBarController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;->getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mNavigationBarSettingsHelper:Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;

    sget-boolean v1, Lcom/android/systemui/SystemUIRune;->SUPPORT_CUSTOM_NAVIBAR_BGCOLOR:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mNavigationBarSettingsHelper:Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;->getNavigationBarColor()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mContext:Landroid/content/Context;

    const v2, 0x7f0b0164

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mNavigationBarSettingsHelper:Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;->setNavigationBarColor(I)V

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mNavigationBarSettingsHelper:Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mNavigationBarSettingsCallback:Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$OnChangedCallback;

    new-array v3, v6, [Landroid/net/Uri;

    const-string/jumbo v4, "navigationbar_color"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;->registerCallback(Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mNavigationBarSettingsHelper:Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mNavigationBarSettingsCallback:Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$OnChangedCallback;

    new-array v3, v6, [Landroid/net/Uri;

    const-string/jumbo v4, "navigationbar_use_theme_default"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;->registerCallback(Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mNavigationBarSettingsHelper:Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mNavigationBarSettingsCallback:Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$OnChangedCallback;

    new-array v3, v6, [Landroid/net/Uri;

    const-string/jumbo v4, "navigationbar_key_order"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;->registerCallback(Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mBarTransitions:Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mNavigationBarSettingsHelper:Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;->getNavigationBarCurrentColor()I

    move-result v2

    invoke-virtual {v1, v5, v2}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->updateModeBackgroundColor(II)V

    :cond_1
    return-void
.end method

.method private setMenuImeSidePadding()V
    .locals 10

    const-wide v8, 0x3f96bb98c0000000L    # 0.022199999541044235

    const/4 v6, 0x0

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v3, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-double v4, v3

    mul-double/2addr v4, v8

    double-to-int v2, v4

    iget v3, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-double v4, v3

    mul-double/2addr v4, v8

    double-to-int v0, v4

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->getMenuButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->getCurrentView()Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->getImeSwitchButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->getCurrentView()Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->updateCurrentView()V

    :cond_1
    iget v3, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mCurrentRotation:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->getMenuButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->getCurrentView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6, v0, v6, v6}, Landroid/view/View;->setPadding(IIII)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->getImeSwitchButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->getCurrentView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6, v0, v6, v6}, Landroid/view/View;->setPadding(IIII)V

    :goto_0
    return-void

    :cond_2
    iget v3, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mCurrentRotation:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->getMenuButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->getCurrentView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6, v6, v6, v0}, Landroid/view/View;->setPadding(IIII)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->getImeSwitchButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->getCurrentView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6, v6, v6, v0}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->getMenuButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->getCurrentView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6, v6, v2, v6}, Landroid/view/View;->setPadding(IIII)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->getImeSwitchButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->getCurrentView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6, v6, v2, v6}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0
.end method

.method private setRemoteViewContainerLayout()V
    .locals 10

    const-wide v8, 0x3f96bb98c0000000L    # 0.022199999541044235

    const/4 v6, 0x0

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mCurrentRemoteView:Landroid/view/View;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v3, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-double v4, v3

    mul-double/2addr v4, v8

    double-to-int v2, v4

    iget v3, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-double v4, v3

    mul-double/2addr v4, v8

    double-to-int v0, v4

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mCurrentRemoteView:Landroid/view/View;

    const v4, 0x7f1302b4

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mLeftRemoteViewContainer:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mCurrentRemoteView:Landroid/view/View;

    const v4, 0x7f1302b5

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mRightRemoteViewContainer:Landroid/widget/LinearLayout;

    iget v3, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mCurrentRotation:I

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mLeftRemoteViewContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2, v6, v6, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mRightRemoteViewContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v6, v6, v2, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v3, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mCurrentRotation:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_2

    iget v3, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mCurrentRotation:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    :cond_2
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mLeftRemoteViewContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v6, v0, v6, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mRightRemoteViewContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v6, v6, v6, v0}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    goto :goto_0
.end method

.method private updateNavigationBarColor(Z)V
    .locals 4

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mContext:Landroid/content/Context;

    const v2, 0x7f0b0165

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v0

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mNavigationBarSettingsHelper:Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;->setNavigationBarCurrentColor(I)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mBarController:Lcom/android/systemui/statusbar/phone/NavigationBarController;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NavigationBarController;->isDarkNavigation()Z

    move-result v1

    invoke-virtual {p0, v1, v3}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->setIconsLight(ZZ)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mBarTransitions:Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;

    invoke-virtual {v1, v3, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->updateModeBackgroundColor(II)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mNavigationBarSettingsHelper:Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;->getNavigationBarColor()I

    move-result v0

    goto :goto_0
.end method

.method private updateOpenThemeIcon(Landroid/content/Context;)Z
    .locals 4

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mIsThemeDefault:Z

    if-eqz v1, :cond_0

    const v1, 0x7f02074c

    :try_start_0
    invoke-virtual {p1, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mDockedIcon:Landroid/graphics/drawable/Drawable;

    const v1, 0x7f02074a

    invoke-virtual {p1, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mBackIcon:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mBackIcon:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mBackLandIcon:Landroid/graphics/drawable/Drawable;

    const v1, 0x7f02074d

    invoke-virtual {p1, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mBackAltIcon:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mBackAltIcon:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mBackAltLandIcon:Landroid/graphics/drawable/Drawable;

    const v1, 0x7f020749

    invoke-virtual {p1, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mHomeDefaultIcon:Landroid/graphics/drawable/Drawable;

    const v1, 0x7f020748

    invoke-virtual {p1, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mRecentIcon:Landroid/graphics/drawable/Drawable;

    const v1, 0x7f02074b

    invoke-virtual {p1, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mMenuIcon:Landroid/graphics/drawable/Drawable;

    const v1, 0x7f02074e

    invoke-virtual {p1, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mImeIcon:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mImageIcon:Z
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :catch_0
    move-exception v0

    const-string/jumbo v1, "SecNavigationBarView"

    const-string/jumbo v2, "updateOpenThemeIcon OpenThemeIconReousrce NotFoundException"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mImageIcon:Z

    return v3

    :cond_0
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mImageIcon:Z

    return v3
.end method

.method private updateRemoteView()V
    .locals 10

    const/4 v9, 0x4

    const/4 v8, 0x1

    const/4 v7, 0x0

    const-string/jumbo v4, "SecNavigationBarView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateRemoteView mCurrentRemoteView visibility : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mCurrentRemoteView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->setRemoteViewContainerLayout()V

    iget v4, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mCurrentRotation:I

    if-ne v4, v8, :cond_4

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mNaviBarRemoteViewManager:Lcom/android/systemui/statusbar/phone/NaviBarRemoteViewManager;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/NaviBarRemoteViewManager;->getRightRemoteView()Lcom/android/systemui/statusbar/phone/NaviBarRemoteViewManager$NaviBarRemoteView;

    move-result-object v0

    :goto_0
    iget v4, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mCurrentRotation:I

    if-ne v4, v8, :cond_5

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mNaviBarRemoteViewManager:Lcom/android/systemui/statusbar/phone/NaviBarRemoteViewManager;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/NaviBarRemoteViewManager;->getLeftRemoteView()Lcom/android/systemui/statusbar/phone/NaviBarRemoteViewManager$NaviBarRemoteView;

    move-result-object v2

    :goto_1
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NaviBarRemoteViewManager$NaviBarRemoteView;->getView()Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mLeftRemoteViewContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mLeftRemoteViewContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->removeAllViews()V

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mLeftRemoteViewContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_1
    :goto_2
    if-eqz v2, :cond_7

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/NaviBarRemoteViewManager$NaviBarRemoteView;->getView()Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_2

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_2
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mRightRemoteViewContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mRightRemoteViewContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->removeAllViews()V

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mRightRemoteViewContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_3
    :goto_3
    return-void

    :cond_4
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mNaviBarRemoteViewManager:Lcom/android/systemui/statusbar/phone/NaviBarRemoteViewManager;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/NaviBarRemoteViewManager;->getLeftRemoteView()Lcom/android/systemui/statusbar/phone/NaviBarRemoteViewManager$NaviBarRemoteView;

    move-result-object v0

    goto :goto_0

    :cond_5
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mNaviBarRemoteViewManager:Lcom/android/systemui/statusbar/phone/NaviBarRemoteViewManager;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/NaviBarRemoteViewManager;->getRightRemoteView()Lcom/android/systemui/statusbar/phone/NaviBarRemoteViewManager$NaviBarRemoteView;

    move-result-object v2

    goto :goto_1

    :cond_6
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mLeftRemoteViewContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->removeAllViews()V

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mLeftRemoteViewContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_2

    :cond_7
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mRightRemoteViewContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->removeAllViews()V

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mRightRemoteViewContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_3
.end method


# virtual methods
.method public getBarController()Lcom/android/systemui/statusbar/phone/NavigationBarController;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mBarController:Lcom/android/systemui/statusbar/phone/NavigationBarController;

    return-object v0
.end method

.method public marqueeNavigationBar()V
    .locals 11

    const/4 v10, 0x3

    const/4 v9, 0x1

    const/4 v8, 0x2

    const/4 v7, 0x0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mCurrentView:Landroid/view/View;

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v8, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->getHomeButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v1

    invoke-virtual {v1, v7, v7, v7, v7}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setPaddingRelative(IIII)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->getRecentsButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v1

    invoke-virtual {v1, v7, v7, v7, v7}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setPaddingRelative(IIII)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->getBackButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v1

    invoke-virtual {v1, v7, v7, v7, v7}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setPaddingRelative(IIII)V

    if-nez v0, :cond_1

    iget v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mMarqueePos:I

    add-int/lit8 v1, v1, 0x1

    rem-int/lit8 v1, v1, 0x11

    iput v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mMarqueePos:I

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->getHomeButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mMarqueeList:[[I

    iget v3, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mMarqueePos:I

    aget-object v2, v2, v3

    aget v2, v2, v7

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mMarqueeList:[[I

    iget v4, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mMarqueePos:I

    aget-object v3, v3, v4

    aget v3, v3, v9

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mMarqueeList:[[I

    iget v5, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mMarqueePos:I

    aget-object v4, v4, v5

    aget v4, v4, v8

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mMarqueeList:[[I

    iget v6, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mMarqueePos:I

    aget-object v5, v5, v6

    aget v5, v5, v10

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setPaddingRelative(IIII)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->getRecentsButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mMarqueeList:[[I

    iget v3, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mMarqueePos:I

    aget-object v2, v2, v3

    aget v2, v2, v7

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mMarqueeList:[[I

    iget v4, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mMarqueePos:I

    aget-object v3, v3, v4

    aget v3, v3, v9

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mMarqueeList:[[I

    iget v5, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mMarqueePos:I

    aget-object v4, v4, v5

    aget v4, v4, v8

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mMarqueeList:[[I

    iget v6, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mMarqueePos:I

    aget-object v5, v5, v6

    aget v5, v5, v10

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setPaddingRelative(IIII)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->getBackButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mMarqueeList:[[I

    iget v3, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mMarqueePos:I

    aget-object v2, v2, v3

    aget v2, v2, v7

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mMarqueeList:[[I

    iget v4, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mMarqueePos:I

    aget-object v3, v3, v4

    aget v3, v3, v9

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mMarqueeList:[[I

    iget v5, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mMarqueePos:I

    aget-object v4, v4, v5

    aget v4, v4, v8

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mMarqueeList:[[I

    iget v6, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mMarqueePos:I

    aget-object v5, v5, v6

    aget v5, v5, v10

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setPaddingRelative(IIII)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->invalidate()V

    return-void

    :cond_2
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public onFinishInflate()V
    .locals 4

    const/4 v1, 0x1

    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->onFinishInflate()V

    sget-boolean v0, Lcom/android/systemui/SystemUIRune;->SUPPORT_NAVIBAR_REMOTEVIEW:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NaviBarRemoteViewManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/NaviBarRemoteViewManager;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mNaviBarRemoteViewCallback:Lcom/android/systemui/statusbar/phone/NaviBarRemoteViewManager$NaviBarRemoteViewCallback;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/NaviBarRemoteViewManager;->setRemoteViewCallback(Lcom/android/systemui/statusbar/phone/NaviBarRemoteViewManager$NaviBarRemoteViewCallback;)V

    :cond_0
    sget-boolean v0, Lcom/android/systemui/SystemUIRune;->SUPPORT_NAVIGATIONBAR:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mRandom:Ljava/util/Random;

    const/16 v2, 0x10

    invoke-virtual {v0, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mMarqueePos:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->marqueeNavigationBar()V

    :cond_1
    sget-boolean v0, Lcom/android/systemui/SystemUIRune;->SUPPORT_NAVIBAR_OPEN_THEME:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mNavigationBarSettingsHelper:Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mNavigationBarSettingsHelper:Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;->getNavigationBarUseThemeDefault()I

    move-result v0

    if-ne v0, v1, :cond_3

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mIsThemeDefault:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->updateIcons(Landroid/content/Context;Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V

    iget v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mNavigationIconHints:I

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->setNavigationIconHints(IZ)V

    :cond_2
    return-void

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onOpenThemeChanged()V
    .locals 6

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->onOpenThemeChanged()V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p0, v1, v4, v5}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->updateIcons(Landroid/content/Context;Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V

    iget v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mNavigationIconHints:I

    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->setNavigationIconHints(IZ)V

    sget-boolean v1, Lcom/android/systemui/SystemUIRune;->SUPPORT_CUSTOM_NAVIBAR_BGCOLOR:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v4, "current_sec_active_themepackage"

    invoke-static {v1, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    move v1, v3

    :goto_0
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mIsThemeDefault:Z

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mNavigationBarSettingsHelper:Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mIsThemeDefault:Z

    if-eqz v4, :cond_3

    :goto_1
    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;->setNavigationBarUseThemeDefault(I)V

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mIsThemeDefault:Z

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->updateNavigationBarColor(Z)V

    :cond_1
    return-void

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    move v2, v3

    goto :goto_1
.end method

.method public reorient()V
    .locals 2

    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->reorient()V

    sget-boolean v0, Lcom/android/systemui/SystemUIRune;->SUPPORT_NAVIBAR_REMOTEVIEW:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mCurrentView:Landroid/view/View;

    const v1, 0x7f1302b8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mCurrentRemoteView:Landroid/view/View;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->updateRemoteView()V

    :cond_0
    return-void
.end method

.method public setIconColor(I)V
    .locals 5

    const/4 v4, 0x0

    const-string/jumbo v1, "SecNavigationBarView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setIconColor() called - color : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mNavigationBarIconcolor:I

    iget v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mNavigationBarIconcolor:I

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mDockedStackExists:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mDockedStackMinimized:Z

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mButtonDisatchers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mButtonDisatchers:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mImageIcon:Z

    invoke-virtual {v1, p1, v2}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->applyIconTint(IZ)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mButtonDisatchers:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->applyIconRipple(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mBarController:Lcom/android/systemui/statusbar/phone/NavigationBarController;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NavigationBarController;->isDarkNavigation()Z

    move-result v1

    invoke-virtual {p0, v1, v4}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->setIconsLight(ZZ)V

    return-void

    :cond_2
    return-void
.end method

.method public setIconsLight(ZZ)V
    .locals 4

    iget v2, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mNavigationBarIconcolor:I

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mDockedStackExists:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mDockedStackMinimized:Z

    if-eqz v2, :cond_3

    :cond_0
    const-string/jumbo v2, "SecNavigationBarView"

    const-string/jumbo v3, "setIconLight() mNavigationBarIconcolor is not 0"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v2, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mNavigationIconHints:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mVertical:Z

    if-eqz v2, :cond_2

    :cond_1
    iget v2, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mNavigationBarIconcolor:I

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->setIconColor(I)V

    return-void

    :cond_2
    const/4 p1, 0x0

    :cond_3
    sget-boolean v2, Lcom/android/systemui/SystemUIRune;->SUPPORT_LIGHT_NAVIGATIONBAR:Z

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mBarController:Lcom/android/systemui/statusbar/phone/NavigationBarController;

    invoke-virtual {v2, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarController;->getIconColor(Z)I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mButtonDisatchers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_4

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mButtonDisatchers:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mImageIcon:Z

    invoke-virtual {v2, v1, v3}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->applyIconTint(IZ)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mButtonDisatchers:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->applyIconRipple(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method public setNavigationIconHints(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->setNavigationIconHints(IZ)V

    return-void
.end method

.method public setNavigationIconHints(IZ)V
    .locals 8

    const/4 v2, 0x0

    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setNavigationIconHints(IZ)V

    sget-boolean v3, Lcom/android/systemui/SystemUIRune;->SUPPORT_LIGHT_NAVIGATIONBAR:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mChangeIconColorWhenIMEState:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mChangeIconColorWhenIMEState:Ljava/lang/Runnable;

    const-wide/16 v6, 0x12c

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    sget-boolean v3, Lcom/android/systemui/SystemUIRune;->SUPPORT_NAVIGATIONBAR:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mNavigationBarSettingsHelper:Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;

    if-eqz v3, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->setMenuImeSidePadding()V

    :cond_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mCurrentRemoteView:Landroid/view/View;

    if-eqz v3, :cond_4

    sget-boolean v3, Lcom/android/systemui/SystemUIRune;->SUPPORT_NAVIBAR_REMOTEVIEW:Z

    if-eqz v3, :cond_4

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->getMenuButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->getVisibility()I

    move-result v3

    if-nez v3, :cond_5

    const/4 v1, 0x1

    :goto_0
    and-int/lit8 v3, p1, 0x2

    if-eqz v3, :cond_6

    const/4 v0, 0x1

    :goto_1
    const-string/jumbo v3, "SecNavigationBarView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setNavigationIconHints showMenuButton : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", showImeButton : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mCurrentRemoteView:Landroid/view/View;

    if-nez v0, :cond_2

    if-eqz v1, :cond_3

    :cond_2
    const/4 v2, 0x4

    :cond_3
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    return-void

    :cond_5
    const/4 v1, 0x0

    goto :goto_0

    :cond_6
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected updateBackgroundWhenDockedStackExists()V
    .locals 3

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mDockedStackExists:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mDockedStackMinimized:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mBarTransitions:Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->setAlwaysOpaque(Z)V

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mBarTransitions:Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mBarController:Lcom/android/systemui/statusbar/phone/NavigationBarController;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NavigationBarController;->getBarMode()I

    move-result v1

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->transitionTo(IZ)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mBarController:Lcom/android/systemui/statusbar/phone/NavigationBarController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarController;->isDarkNavigation()Z

    move-result v0

    invoke-virtual {p0, v0, v2}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->setIconsLight(ZZ)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mBarTransitions:Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->setAlwaysOpaque(Z)V

    goto :goto_0
.end method

.method protected updateCarMode(Landroid/content/res/Configuration;)Z
    .locals 3

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateCarMode(Landroid/content/res/Configuration;)Z

    move-result v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->getHomeButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mCarMode:Z

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setCarMode(Z)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->getBackButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mCarMode:Z

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setCarMode(Z)V

    return v0
.end method

.method protected updateCurrentView()V
    .locals 2

    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateCurrentView()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->updateBackgroundWhenDockedStackExists()V

    sget-boolean v0, Lcom/android/systemui/SystemUIRune;->SUPPORT_NAVIBAR_REMOTEVIEW:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mCurrentView:Landroid/view/View;

    const v1, 0x7f1302b8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mCurrentRemoteView:Landroid/view/View;

    :cond_0
    return-void
.end method

.method protected updateIcons(Landroid/content/Context;Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V
    .locals 12

    const v10, 0x7f02020a

    const/4 v6, 0x1

    const/4 v1, 0x0

    invoke-super {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateIcons(Landroid/content/Context;Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V

    iget v2, p2, Landroid/content/res/Configuration;->densityDpi:I

    iget v3, p3, Landroid/content/res/Configuration;->densityDpi:I

    if-ne v2, v3, :cond_0

    invoke-virtual {p2}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v2

    invoke-virtual {p3}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v3

    if-eq v2, v3, :cond_1

    :cond_0
    sget-boolean v2, Lcom/android/systemui/SystemUIRune;->SUPPORT_NAVIBAR_OPEN_THEME:Z

    if-eqz v2, :cond_2

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->updateOpenThemeIcon(Landroid/content/Context;)Z

    move-result v9

    :goto_0
    const-string/jumbo v2, "SecNavigationBarView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateIcons mIsThemeDefault : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mIsThemeDefault:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", useThemeIcon : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", isRTL : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p3}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mIsThemeDefault:Z

    if-eqz v2, :cond_3

    if-eqz v9, :cond_3

    :goto_1
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->updateCarModeIcons(Landroid/content/Context;)V

    :cond_1
    return-void

    :cond_2
    const/4 v9, 0x0

    goto :goto_0

    :cond_3
    invoke-virtual {p3}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v2

    if-ne v2, v6, :cond_5

    const/4 v7, 0x1

    :goto_2
    if-eqz v7, :cond_7

    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    const/high16 v2, -0x40800000    # -1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v5, v2, v3}, Landroid/graphics/Matrix;->preScale(FF)Z

    invoke-virtual {p1, v10}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    const/4 v0, 0x0

    instance-of v2, v8, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_6

    check-cast v8, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_4
    :goto_3
    new-instance v10, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {v10, v11, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v10, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mBackIcon:Landroid/graphics/drawable/Drawable;

    :goto_4
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mBackIcon:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mBackLandIcon:Landroid/graphics/drawable/Drawable;

    const v1, 0x7f02020c

    invoke-virtual {p1, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mDockedIcon:Landroid/graphics/drawable/Drawable;

    const v1, 0x7f02020b

    invoke-virtual {p1, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mBackAltIcon:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mBackAltIcon:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mBackAltLandIcon:Landroid/graphics/drawable/Drawable;

    const v1, 0x7f02020d

    invoke-virtual {p1, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mHomeDefaultIcon:Landroid/graphics/drawable/Drawable;

    const v1, 0x7f020212

    invoke-virtual {p1, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mRecentIcon:Landroid/graphics/drawable/Drawable;

    const v1, 0x7f020211

    invoke-virtual {p1, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mMenuIcon:Landroid/graphics/drawable/Drawable;

    const v1, 0x7f02020e

    invoke-virtual {p1, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mImeIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    :cond_5
    const/4 v7, 0x0

    goto :goto_2

    :cond_6
    instance-of v2, v8, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;

    if-eqz v2, :cond_4

    check-cast v8, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;

    invoke-virtual {v8}, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_3

    :cond_7
    invoke-virtual {p1, v10}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mBackIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_4
.end method
