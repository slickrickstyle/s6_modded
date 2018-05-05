.class public Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventPage;
.super Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;
.source "CalendarEventPage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventPage$1;,
        Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventPage$2;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mContentView:Landroid/view/View;

.field private mDateView:Lcom/android/keyguard/servicebox/pages/calendar/TodayDateView;

.field private mEventChangedListener:Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager$EventChangedListener;

.field private mHolder:Landroid/widget/FrameLayout;

.field private mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mListRootView:Landroid/view/View;

.field private mListView:Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView;

.field private mNoEventsView:Landroid/view/View;


# direct methods
.method static synthetic -wrap0(Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventPage;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventPage;->updateDate()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventPage;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventPage;->updateNoEventsLayout()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventPage;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventPage;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventPage;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventPage;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventPage$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventPage$1;-><init>(Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventPage;)V

    iput-object v0, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventPage;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    new-instance v0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventPage$2;

    invoke-direct {v0, p0}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventPage$2;-><init>(Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventPage;)V

    iput-object v0, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventPage;->mEventChangedListener:Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager$EventChangedListener;

    return-void
.end method

.method private init()V
    .locals 1

    sget v0, Lcom/android/keyguard/R$id;->servicebox_today_page_holder:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventPage;->mHolder:Landroid/widget/FrameLayout;

    return-void
.end method

.method private updateCalendar()V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventPage;->mListView:Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventPage;->mListView:Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView;

    invoke-virtual {v0}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView;->updateCalendarInfo()V

    :cond_0
    return-void
.end method

.method private updateDate()V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventPage;->mDateView:Lcom/android/keyguard/servicebox/pages/calendar/TodayDateView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventPage;->mDateView:Lcom/android/keyguard/servicebox/pages/calendar/TodayDateView;

    invoke-virtual {v0}, Lcom/android/keyguard/servicebox/pages/calendar/TodayDateView;->updateDay()V

    :cond_0
    return-void
.end method

.method private updateNoEventsLayout()V
    .locals 3

    const/16 v2, 0x8

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventPage;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;->getEventCnt()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventPage;->mListRootView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventPage;->mListRootView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventPage;->mNoEventsView:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventPage;->mNoEventsView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventPage;->mNoEventsView:Landroid/view/View;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventPage;->mNoEventsView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventPage;->mListRootView:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventPage;->mListRootView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method protected closeWindow()V
    .locals 3

    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventPage;->mListView:Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView;

    if-eqz v1, :cond_0

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventPage;->getHitRect(Landroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventPage;->mListView:Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView;

    const/4 v2, 0x4

    invoke-virtual {v1, v0, v2}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView;->setOutOfBoundItemsVisibility(Landroid/graphics/Rect;I)V

    :cond_0
    invoke-super {p0}, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->closeWindow()V

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    const/4 v2, 0x1

    iget v0, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventPage;->mPageType:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_0

    sget-object v0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventPage;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "DP Touch up start service box"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventPage;->showServiceBox()V

    return v2

    :cond_0
    invoke-super {p0, p1}, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected getContentsView(I)Landroid/view/View;
    .locals 3

    sget v0, Lcom/android/keyguard/R$layout;->servicebox_today_main_small:I

    packed-switch p1, :pswitch_data_0

    :goto_0
    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventPage;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    return-object v1

    :pswitch_0
    sget v0, Lcom/android/keyguard/R$layout;->servicebox_today_main_big:I

    goto :goto_0

    :pswitch_1
    sget v0, Lcom/android/keyguard/R$layout;->servicebox_today_main_expand:I

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected getHolder()Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventPage;->mHolder:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "servicebox_calendar"

    return-object v0
.end method

.method protected initViews(Landroid/view/View;)V
    .locals 2

    iput-object p1, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventPage;->mContentView:Landroid/view/View;

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventPage;->mContentView:Landroid/view/View;

    sget v1, Lcom/android/keyguard/R$id;->servicebox_event_list_root:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventPage;->mListRootView:Landroid/view/View;

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventPage;->mContentView:Landroid/view/View;

    sget v1, Lcom/android/keyguard/R$id;->servicebox_event_list:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView;

    iput-object v0, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventPage;->mListView:Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView;

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventPage;->mListView:Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventPage;->mListView:Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView;

    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventPage;->mServiceBoxController:Lcom/android/keyguard/servicebox/KeyguardServiceBoxController;

    invoke-interface {v1}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxController;->getStatusCallback()Lcom/android/keyguard/servicebox/KeyguardStatusCallback;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView;->setStatusCallback(Lcom/android/keyguard/servicebox/KeyguardStatusCallback;)V

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventPage;->mContentView:Landroid/view/View;

    sget v1, Lcom/android/keyguard/R$id;->servicebox_no_events:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventPage;->mNoEventsView:Landroid/view/View;

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventPage;->mContentView:Landroid/view/View;

    sget v1, Lcom/android/keyguard/R$id;->servicebox_today_clock_root:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/servicebox/pages/calendar/TodayDateView;

    iput-object v0, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventPage;->mDateView:Lcom/android/keyguard/servicebox/pages/calendar/TodayDateView;

    invoke-direct {p0}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventPage;->updateNoEventsLayout()V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventPage;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventPage;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    invoke-virtual {p0}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventPage;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventPage;->mEventChangedListener:Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager$EventChangedListener;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;->addEventChangedListener(Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager$EventChangedListener;)V

    invoke-super {p0}, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->onAttachedToWindow()V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventPage;->updateDate()V

    invoke-direct {p0}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventPage;->updateCalendar()V

    invoke-super {p0, p1}, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->onDetachedFromWindow()V

    invoke-virtual {p0}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventPage;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventPage;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    invoke-virtual {p0}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventPage;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventPage;->mEventChangedListener:Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager$EventChangedListener;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;->removeEventChangedListener(Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager$EventChangedListener;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    invoke-super {p0}, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->onFinishInflate()V

    invoke-direct {p0}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventPage;->init()V

    return-void
.end method

.method public refreshViews()V
    .locals 0

    return-void
.end method

.method public updateChildViewsLook()V
    .locals 0

    return-void
.end method
