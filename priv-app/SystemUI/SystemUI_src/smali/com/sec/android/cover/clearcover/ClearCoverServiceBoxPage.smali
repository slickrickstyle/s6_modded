.class public Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;
.super Lcom/sec/android/cover/clearcover/ClearCoverPage;
.source "ClearCoverServiceBoxPage.java"

# interfaces
.implements Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget$DisplayedNotificationCountChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage$1;,
        Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage$2;,
        Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage$3;
    }
.end annotation


# static fields
.field private static final SERVICEBOX_SETTINGS_VALUE_LISTENER_LIST:[Landroid/net/Uri;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mArrowLeft:Landroid/widget/ImageView;

.field private mArrowRight:Landroid/widget/ImageView;

.field mDisplayMetrics:Landroid/util/DisplayMetrics;

.field private mHandler:Landroid/os/Handler;

.field private mLeftArrowAnimator:Lcom/sec/android/cover/clearcover/servicebox/utils/GuideArrowAnimator;

.field private final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mNotificationWidget:Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;

.field private mOnPageChangeListener:Lcom/android/internal/widget/ViewPager$OnPageChangeListener;

.field private mOwnerInfoText:Landroid/widget/TextView;

.field private mReadyToAnimation:Z

.field private mRightArrowAnimator:Lcom/sec/android/cover/clearcover/servicebox/utils/GuideArrowAnimator;

.field private mServiceBoxPageAdapter:Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageAdapter;

.field private mServiceBoxPageItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageItem;",
            ">;"
        }
    .end annotation
.end field

.field private mServiceBoxPager:Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxViewPager;

.field private mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

.field mWindowManager:Landroid/view/WindowManager;


# direct methods
.method static synthetic -get0()[Landroid/net/Uri;
    .locals 1

    sget-object v0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->SERVICEBOX_SETTINGS_VALUE_LISTENER_LIST:[Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic -get1()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get2(Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get3(Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;)Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageAdapter;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mServiceBoxPageAdapter:Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageAdapter;

    return-object v0
.end method

.method static synthetic -get4(Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;)Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxViewPager;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mServiceBoxPager:Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxViewPager;

    return-object v0
.end method

.method static synthetic -set0(Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mReadyToAnimation:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->getCurrentPageKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->handleNotificationVisibility(Z)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->initializePages()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->playArrowAnimation()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;Ljava/lang/String;ZZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->setCurrentPage(Ljava/lang/String;ZZ)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    const-class v0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->TAG:Ljava/lang/String;

    const/4 v0, 0x5

    new-array v0, v0, [Landroid/net/Uri;

    const-string/jumbo v1, "additional_information_val"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "add_info_music_control"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "add_info_today_schedule"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string/jumbo v1, "add_info_steps"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string/jumbo v1, "lockscreen_aod_servicebox_page"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sput-object v0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->SERVICEBOX_SETTINGS_VALUE_LISTENER_LIST:[Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/cover/clearcover/ClearCoverPage;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mServiceBoxPageItems:Ljava/util/ArrayList;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mReadyToAnimation:Z

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    new-instance v0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage$1;

    invoke-direct {v0, p0}, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage$1;-><init>(Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;)V

    iput-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    new-instance v0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage$2;

    invoke-direct {v0, p0}, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage$2;-><init>(Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;)V

    iput-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage$3;

    invoke-direct {v0, p0}, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage$3;-><init>(Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;)V

    iput-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mOnPageChangeListener:Lcom/android/internal/widget/ViewPager$OnPageChangeListener;

    new-instance v0, Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageAdapter;

    iget-object v1, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mServiceBoxPageItems:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2}, Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mServiceBoxPageAdapter:Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageAdapter;

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mWindowManager:Landroid/view/WindowManager;

    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-void
.end method

.method private getCurrentPageKey()Ljava/lang/String;
    .locals 4

    iget-object v3, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mServiceBoxPager:Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxViewPager;

    invoke-virtual {v3}, Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxViewPager;->getCurrent()Ljava/lang/Object;

    move-result-object v0

    instance-of v3, v0, Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageView;

    if-nez v3, :cond_0

    const/4 v3, 0x0

    return-object v3

    :cond_0
    move-object v2, v0

    check-cast v2, Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageView;

    invoke-virtual {v2}, Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageView;->getPageKey()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "clone"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string/jumbo v1, "servicebox_clock"

    :cond_1
    return-object v1
.end method

.method private handleNotificationVisibility(Z)V
    .locals 4

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mNotificationWidget:Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;

    if-eqz p1, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {v3, v1}, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;->setVisibility(I)V

    iget-object v1, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mServiceBoxPager:Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxViewPager;

    invoke-virtual {v1}, Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxViewPager;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    if-eqz p1, :cond_1

    sget v1, Lcom/sec/android/sviewcover/R$dimen;->clear_cover_servicebox_container_with_noti_height:I

    :goto_1
    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v1, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mServiceBoxPager:Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxViewPager;

    invoke-virtual {v1, v0}, Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxViewPager;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mServiceBoxPageAdapter:Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageAdapter;

    if-eqz p1, :cond_2

    :goto_2
    invoke-virtual {v1, v2}, Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageAdapter;->setExpanded(Z)V

    iget-object v1, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mServiceBoxPager:Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxViewPager;

    invoke-virtual {v1}, Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxViewPager;->invalidate()V

    return-void

    :cond_0
    const/16 v1, 0x8

    goto :goto_0

    :cond_1
    sget v1, Lcom/sec/android/sviewcover/R$dimen;->clear_cover_servicebox_container_no_noti_height:I

    goto :goto_1

    :cond_2
    const/4 v2, 0x1

    goto :goto_2
.end method

.method private hideArrow()V
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mReadyToAnimation:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mLeftArrowAnimator:Lcom/sec/android/cover/clearcover/servicebox/utils/GuideArrowAnimator;

    invoke-virtual {v0}, Lcom/sec/android/cover/clearcover/servicebox/utils/GuideArrowAnimator;->hide()V

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mRightArrowAnimator:Lcom/sec/android/cover/clearcover/servicebox/utils/GuideArrowAnimator;

    invoke-virtual {v0}, Lcom/sec/android/cover/clearcover/servicebox/utils/GuideArrowAnimator;->hide()V

    return-void
.end method

.method private initializePages()V
    .locals 9

    const/4 v1, 0x1

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mServiceBoxPageItems:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    iget-object v5, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mServiceBoxPageAdapter:Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageAdapter;

    invoke-virtual {v5}, Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageAdapter;->clear()V

    const/4 v3, 0x1

    iget-object v5, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mNotificationWidget:Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mNotificationWidget:Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;

    invoke-virtual {v5}, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;->getDisplayedNotificationCount()I

    move-result v5

    if-lez v5, :cond_0

    const/4 v3, 0x0

    :cond_0
    iget-object v5, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mServiceBoxPageItems:Ljava/util/ArrayList;

    new-instance v6, Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageItem;

    sget v7, Lcom/sec/android/sviewcover/R$layout;->clear_cover_servicebox_clocks_page:I

    const-string/jumbo v8, "servicebox_clock"

    invoke-direct {v6, v7, v8, v3}, Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageItem;-><init>(ILjava/lang/String;Z)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/sec/android/cover/CoverUtils;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v5, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "add_info_music_control"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v1, :cond_3

    move v2, v1

    :goto_0
    if-eqz v2, :cond_1

    iget-object v5, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mServiceBoxPageItems:Ljava/util/ArrayList;

    new-instance v6, Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageItem;

    sget v7, Lcom/sec/android/sviewcover/R$layout;->clear_cover_servicebox_music_page:I

    const-string/jumbo v8, "servicebox_music"

    invoke-direct {v6, v7, v8, v3}, Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageItem;-><init>(ILjava/lang/String;Z)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v5, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "add_info_today_schedule"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v1, :cond_4

    :goto_1
    if-eqz v1, :cond_2

    iget-object v4, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mServiceBoxPageItems:Ljava/util/ArrayList;

    new-instance v5, Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageItem;

    sget v6, Lcom/sec/android/sviewcover/R$layout;->clear_cover_temp_page_2:I

    const-string/jumbo v7, "servicebox_calendar"

    invoke-direct {v5, v6, v7, v3}, Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageItem;-><init>(ILjava/lang/String;Z)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    sget-object v4, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "initializePages(): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mServiceBoxPageItems:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mServiceBoxPageAdapter:Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageAdapter;

    invoke-virtual {v4}, Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageAdapter;->notifyDataSetChanged()V

    return-void

    :cond_3
    move v2, v4

    goto :goto_0

    :cond_4
    move v1, v4

    goto :goto_1
.end method

.method private playArrowAnimation()V
    .locals 2

    iget-boolean v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mReadyToAnimation:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mServiceBoxPageAdapter:Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageAdapter;

    invoke-virtual {v0}, Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageAdapter;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mReadyToAnimation:Z

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mLeftArrowAnimator:Lcom/sec/android/cover/clearcover/servicebox/utils/GuideArrowAnimator;

    invoke-virtual {v0}, Lcom/sec/android/cover/clearcover/servicebox/utils/GuideArrowAnimator;->start()V

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mRightArrowAnimator:Lcom/sec/android/cover/clearcover/servicebox/utils/GuideArrowAnimator;

    invoke-virtual {v0}, Lcom/sec/android/cover/clearcover/servicebox/utils/GuideArrowAnimator;->start()V

    return-void
.end method

.method private setCurrentPage(Ljava/lang/String;ZZ)V
    .locals 5

    if-nez p1, :cond_0

    iget-object v2, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "lockscreen_aod_servicebox_page"

    invoke-static {v2, v3}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_0
    if-nez p1, :cond_1

    sget-object v2, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "setCurrentPage: settings page is null!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    if-nez p3, :cond_2

    invoke-direct {p0}, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->getCurrentPageKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "setCurrentPage: pageAlreadySet"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    iget-object v2, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mServiceBoxPageItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    :goto_0
    if-ltz v0, :cond_5

    iget-object v2, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mServiceBoxPageItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageItem;

    invoke-virtual {v1}, Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageItem;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    sget-object v2, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setCurrentPage: key="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p3, :cond_3

    iget-object v2, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mServiceBoxPager:Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxViewPager;

    invoke-virtual {v2, v0, p2}, Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxViewPager;->setItemByForce(IZ)Z

    :goto_1
    return-void

    :cond_3
    iget-object v2, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mServiceBoxPager:Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxViewPager;

    invoke-virtual {v2, v0, p2}, Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxViewPager;->setCurrentItem(IZ)V

    goto :goto_1

    :cond_4
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_5
    sget-object v2, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setCurrentPage: no item for key="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private updateOwnerInfoText()V
    .locals 5

    const/4 v2, 0x0

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->isDeviceOwnerInfoEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->getDeviceOwnerInfo()Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mOwnerInfoText:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v3, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mOwnerInfoText:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mOwnerInfoText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->isCoverOpen()Z

    move-result v4

    if-eqz v4, :cond_2

    :goto_1
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setSelected(Z)V

    :goto_2
    return-void

    :cond_1
    invoke-static {}, Landroid/app/ActivityManager;->semGetCurrentUser()I

    move-result v1

    iget-object v3, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3, v1}, Lcom/android/internal/widget/LockPatternUtils;->isOwnerInfoEnabled(I)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3, v1}, Lcom/android/internal/widget/LockPatternUtils;->getOwnerInfo(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v2, 0x1

    goto :goto_1

    :cond_3
    iget-object v3, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mOwnerInfoText:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setSelected(Z)V

    iget-object v2, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mOwnerInfoText:Landroid/widget/TextView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->hideArrow()V

    invoke-super {p0, p1}, Lcom/sec/android/cover/clearcover/ClearCoverPage;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 6

    const/4 v2, 0x0

    invoke-super {p0}, Lcom/sec/android/cover/clearcover/ClearCoverPage;->onAttachedToWindow()V

    sget-object v3, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->SERVICEBOX_SETTINGS_VALUE_LISTENER_LIST:[Landroid/net/Uri;

    array-length v4, v3

    move v1, v2

    :goto_0
    if-ge v1, v4, :cond_0

    aget-object v0, v3, v1

    iget-object v5, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    move-result-object v5

    invoke-virtual {v5, v0, v2}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->registerContentObserver(Landroid/net/Uri;Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    invoke-virtual {v1, v2}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->registerCallback(Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;)V

    return-void
.end method

.method public onCoverEvent(Lcom/samsung/android/cover/CoverState;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-super {p0, p1}, Lcom/sec/android/cover/clearcover/ClearCoverPage;->onCoverEvent(Lcom/samsung/android/cover/CoverState;)V

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/manager/CoverPowerManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverPowerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/cover/manager/CoverPowerManager;->userActivity()V

    invoke-virtual {p0}, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->isCoverOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mNotificationWidget:Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mNotificationWidget:Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;

    invoke-virtual {v0}, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;->onCoverOpen()V

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->hideArrow()V

    iput-boolean v1, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mReadyToAnimation:Z

    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->updateOwnerInfoText()V

    const/4 v0, 0x0

    invoke-direct {p0, v2, v0, v1}, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->setCurrentPage(Ljava/lang/String;ZZ)V

    invoke-direct {p0}, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->playArrowAnimation()V

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0}, Lcom/sec/android/cover/clearcover/ClearCoverPage;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->unregisterCallback(Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;)V

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mNotificationWidget:Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mNotificationWidget:Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;

    invoke-virtual {v0, v2}, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;->setDisplayedNotificationCounChangeListener(Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget$DisplayedNotificationCountChangeListener;)V

    :cond_0
    return-void
.end method

.method public onDisplayedNotificationCount(II)V
    .locals 3

    iget-object v1, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xc8

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput p1, v0, Landroid/os/Message;->arg1:I

    iput p2, v0, Landroid/os/Message;->arg2:I

    iget-object v1, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method protected onFinishInflate()V
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-super {p0}, Lcom/sec/android/cover/clearcover/ClearCoverPage;->onFinishInflate()V

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mWindowManager:Landroid/view/WindowManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iget-object v3, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v3}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    :cond_0
    sget v0, Lcom/sec/android/sviewcover/R$id;->clear_cover_servicebox_pager:I

    invoke-virtual {p0, v0}, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxViewPager;

    iput-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mServiceBoxPager:Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxViewPager;

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mServiceBoxPager:Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxViewPager;

    iget-object v3, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mServiceBoxPageAdapter:Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageAdapter;

    invoke-virtual {v0, v3}, Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxViewPager;->setAdapter(Lcom/android/internal/widget/PagerAdapter;)V

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mServiceBoxPager:Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxViewPager;

    iget-object v3, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mOnPageChangeListener:Lcom/android/internal/widget/ViewPager$OnPageChangeListener;

    invoke-virtual {v0, v3}, Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxViewPager;->setOnPageChangeListener(Lcom/android/internal/widget/ViewPager$OnPageChangeListener;)V

    sget v0, Lcom/sec/android/sviewcover/R$id;->clear_cover_notification_container:I

    invoke-virtual {p0, v0}, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;

    iput-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mNotificationWidget:Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mNotificationWidget:Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mNotificationWidget:Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;

    invoke-virtual {v0, p0}, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;->setDisplayedNotificationCounChangeListener(Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget$DisplayedNotificationCountChangeListener;)V

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mNotificationWidget:Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;

    invoke-virtual {v0}, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;->getDisplayedNotificationCount()I

    move-result v0

    if-lez v0, :cond_3

    move v0, v1

    :goto_0
    invoke-direct {p0, v0}, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->handleNotificationVisibility(Z)V

    :cond_1
    sget v0, Lcom/sec/android/sviewcover/R$id;->clear_cover_servicebox_affordance_arrow_l:I

    invoke-virtual {p0, v0}, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mArrowLeft:Landroid/widget/ImageView;

    sget v0, Lcom/sec/android/sviewcover/R$id;->clear_cover_servicebox_affordance_arrow_r:I

    invoke-virtual {p0, v0}, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mArrowRight:Landroid/widget/ImageView;

    new-instance v0, Lcom/sec/android/cover/clearcover/servicebox/utils/GuideArrowAnimator;

    invoke-virtual {p0}, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mArrowLeft:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v5, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-direct {v0, v3, v4, v1, v5}, Lcom/sec/android/cover/clearcover/servicebox/utils/GuideArrowAnimator;-><init>(Landroid/content/res/Resources;Landroid/view/View;ZI)V

    iput-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mLeftArrowAnimator:Lcom/sec/android/cover/clearcover/servicebox/utils/GuideArrowAnimator;

    new-instance v0, Lcom/sec/android/cover/clearcover/servicebox/utils/GuideArrowAnimator;

    invoke-virtual {p0}, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v3, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mArrowRight:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v4, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-direct {v0, v1, v3, v2, v4}, Lcom/sec/android/cover/clearcover/servicebox/utils/GuideArrowAnimator;-><init>(Landroid/content/res/Resources;Landroid/view/View;ZI)V

    iput-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mRightArrowAnimator:Lcom/sec/android/cover/clearcover/servicebox/utils/GuideArrowAnimator;

    sget v0, Lcom/sec/android/sviewcover/R$id;->clear_cover_servicebox_owner_info:I

    invoke-virtual {p0, v0}, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mOwnerInfoText:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->updateOwnerInfoText()V

    invoke-direct {p0}, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->initializePages()V

    invoke-virtual {p0}, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->isCoverOpen()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->playArrowAnimation()V

    :cond_2
    return-void

    :cond_3
    move v0, v2

    goto :goto_0
.end method
