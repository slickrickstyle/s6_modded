.class public Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverDualClockWidget;
.super Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverBaseClockWidget;
.source "ClearCoverDualClockWidget.java"


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private mAutoHomeTimeZoneId:Ljava/lang/String;

.field private mHomeCalendar:Ljava/util/Calendar;

.field private mHomeClockRoot:Landroid/widget/LinearLayout;

.field private mHomeMonthandDay:Landroid/widget/TextView;

.field private mHomeRegionText:Landroid/widget/TextView;

.field private mHomeTime:Landroid/widget/TextView;

.field private mIsCover2:Z

.field private mIsDualClock:Z

.field private mRoamingCalendar:Ljava/util/Calendar;

.field private mRoamingClockRoot:Landroid/widget/LinearLayout;

.field private mRoamingMonthandDay:Landroid/widget/TextView;

.field private mRoamingRegionText:Landroid/widget/TextView;

.field private mRoamingTime:Landroid/widget/TextView;

.field private mTime24HFormat:Ljava/lang/String;

.field private mTimeFormat:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverDualClockWidget;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverDualClockWidget;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverBaseClockWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string/jumbo v0, "kk:mm"

    iput-object v0, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverDualClockWidget;->mTime24HFormat:Ljava/lang/String;

    const-string/jumbo v0, "h:mm"

    iput-object v0, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverDualClockWidget;->mTimeFormat:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverDualClockWidget;->mAutoHomeTimeZoneId:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverDualClockWidget;->mIsDualClock:Z

    invoke-direct {p0, p1}, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverDualClockWidget;->initClock(Landroid/content/Context;)V

    return-void
.end method

.method private getAutoHomeTimezone(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    iget-object v2, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverDualClockWidget;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/cover/manager/CoverDatabaseManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverDatabaseManager;

    move-result-object v2

    const-string/jumbo v3, "homecity_timezone"

    invoke-virtual {v2, v3}, Lcom/sec/android/cover/manager/CoverDatabaseManager;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    sget-object v2, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverDualClockWidget;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "set default timezone"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/keyguard/KeyguardRune;->shouldBeAsiaSeoulAsDefaultHomecityTimezone()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string/jumbo v0, "Asia/Seoul"

    :goto_0
    iget-object v2, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverDualClockWidget;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/cover/manager/CoverDatabaseManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverDatabaseManager;

    move-result-object v2

    const-string/jumbo v3, "homecity_timezone"

    invoke-virtual {v2, v3, v0}, Lcom/sec/android/cover/manager/CoverDatabaseManager;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverDualClockWidget;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "set homecity_timezone: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    sget-object v2, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverDualClockWidget;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setAutoHomeTimezone() - autoHomeTimeZoneId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_2
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getHomeSingleTTSMessage()Ljava/lang/String;
    .locals 6

    const-string/jumbo v0, ""

    iget-object v3, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverDualClockWidget;->mTTSDatePattern:Ljava/lang/CharSequence;

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverDualClockWidget;->mContext:Landroid/content/Context;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/sec/android/cover/CoverUtils;->getDateFormat(Landroid/content/Context;Z)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverDualClockWidget;->mTTSDatePattern:Ljava/lang/CharSequence;

    :cond_0
    iget-object v3, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverDualClockWidget;->mTTSDatePattern:Ljava/lang/CharSequence;

    iget-object v4, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverDualClockWidget;->mHomeCalendar:Ljava/util/Calendar;

    invoke-static {v3, v4}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v3, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverDualClockWidget;->mHomeCalendar:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    iget-boolean v3, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverDualClockWidget;->mIs24HTime:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverDualClockWidget;->mTime24HFormat:Ljava/lang/String;

    iget-object v4, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverDualClockWidget;->mHomeCalendar:Ljava/util/Calendar;

    invoke-static {v3, v4}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    iget-object v3, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverDualClockWidget;->mTimeFormat:Ljava/lang/String;

    iget-object v4, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverDualClockWidget;->mHomeCalendar:Ljava/util/Calendar;

    invoke-static {v3, v4}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private getRoamingSingleTTSMessage()Ljava/lang/String;
    .locals 6

    const-string/jumbo v0, ""

    iget-object v3, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverDualClockWidget;->mTTSDatePattern:Ljava/lang/CharSequence;

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverDualClockWidget;->mContext:Landroid/content/Context;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/sec/android/cover/CoverUtils;->getDateFormat(Landroid/content/Context;Z)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverDualClockWidget;->mTTSDatePattern:Ljava/lang/CharSequence;

    :cond_0
    iget-object v3, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverDualClockWidget;->mTTSDatePattern:Ljava/lang/CharSequence;

    iget-object v4, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverDualClockWidget;->mRoamingCalendar:Ljava/util/Calendar;

    invoke-static {v3, v4}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v3, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverDualClockWidget;->mRoamingCalendar:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    iget-boolean v3, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverDualClockWidget;->mIs24HTime:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverDualClockWidget;->mTime24HFormat:Ljava/lang/String;

    iget-object v4, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverDualClockWidget;->mRoamingCalendar:Ljava/util/Calendar;

    invoke-static {v3, v4}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    iget-object v3, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverDualClockWidget;->mTimeFormat:Ljava/lang/String;

    iget-object v4, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverDualClockWidget;->mRoamingCalendar:Ljava/util/Calendar;

    invoke-static {v3, v4}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private initClock(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverDualClockWidget;->getAutoHomeTimezone(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverDualClockWidget;->mAutoHomeTimeZoneId:Ljava/lang/String;

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverDualClockWidget;->mAutoHomeTimeZoneId:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverDualClockWidget;->mAutoHomeTimeZoneId:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverDualClockWidget;->mHomeCalendar:Ljava/util/Calendar;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverDualClockWidget;->mIsDualClock:Z

    :cond_0
    return-void
.end method

.method private setThemeFontTypeFace(Landroid/graphics/Typeface;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverDualClockWidget;->mRoamingTime:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverDualClockWidget;->mRoamingMonthandDay:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverDualClockWidget;->mRoamingRegionText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverDualClockWidget;->mHomeTime:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverDualClockWidget;->mHomeMonthandDay:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverDualClockWidget;->mHomeRegionText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected getTTSMessage()Ljava/lang/CharSequence;
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverDualClockWidget;->getRoamingSingleTTSMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onFinishInflate()V
    .locals 3

    invoke-super {p0}, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverBaseClockWidget;->onFinishInflate()V

    iget-object v1, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverDualClockWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/sec/android/sviewcover/R$bool;->config_isSViewCover2:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverDualClockWidget;->mIsCover2:Z

    sget v1, Lcom/sec/android/sviewcover/R$id;->roaming_clock_root:I

    invoke-virtual {p0, v1}, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverDualClockWidget;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverDualClockWidget;->mRoamingClockRoot:Landroid/widget/LinearLayout;

    sget v1, Lcom/sec/android/sviewcover/R$id;->roaming_digital_clock_time:I

    invoke-virtual {p0, v1}, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverDualClockWidget;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverDualClockWidget;->mRoamingTime:Landroid/widget/TextView;

    sget v1, Lcom/sec/android/sviewcover/R$id;->roaming_digital_month_day:I

    invoke-virtual {p0, v1}, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverDualClockWidget;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverDualClockWidget;->mRoamingMonthandDay:Landroid/widget/TextView;

    sget v1, Lcom/sec/android/sviewcover/R$id;->region_roaming:I

    invoke-virtual {p0, v1}, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverDualClockWidget;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverDualClockWidget;->mRoamingRegionText:Landroid/widget/TextView;

    sget v1, Lcom/sec/android/sviewcover/R$id;->home_clock_root:I

    invoke-virtual {p0, v1}, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverDualClockWidget;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverDualClockWidget;->mHomeClockRoot:Landroid/widget/LinearLayout;

    sget v1, Lcom/sec/android/sviewcover/R$id;->home_digital_clock_time:I

    invoke-virtual {p0, v1}, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverDualClockWidget;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverDualClockWidget;->mHomeTime:Landroid/widget/TextView;

    sget v1, Lcom/sec/android/sviewcover/R$id;->home_digital_month_day:I

    invoke-virtual {p0, v1}, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverDualClockWidget;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverDualClockWidget;->mHomeMonthandDay:Landroid/widget/TextView;

    sget v1, Lcom/sec/android/sviewcover/R$id;->region_home:I

    invoke-virtual {p0, v1}, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverDualClockWidget;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverDualClockWidget;->mHomeRegionText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverDualClockWidget;->mThemeFontPath:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverDualClockWidget;->mThemeFontPath:Ljava/lang/String;

    invoke-static {v1}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverDualClockWidget;->setThemeFontTypeFace(Landroid/graphics/Typeface;)V

    :cond_0
    sget-boolean v1, Lcom/sec/android/cover/CoverRune;->FEATURE_NO_ROAMING_TEXT_ON_DUAL_CLOCK:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverDualClockWidget;->mRoamingRegionText:Landroid/widget/TextView;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverDualClockWidget;->refreshClock()V

    return-void
.end method

.method protected onTimeChanged()V
    .locals 14

    const/16 v13, 0x31

    const/4 v12, 0x0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v8

    iput-object v8, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverDualClockWidget;->mRoamingCalendar:Ljava/util/Calendar;

    sget-object v8, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverDualClockWidget;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "initClock() : TimeZone ="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverDualClockWidget;->mRoamingCalendar:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Ljava/util/Calendar;->setTimeInMillis(J)V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    const-string/jumbo v8, "ja_JP"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    const-string/jumbo v8, "K:mm"

    iput-object v8, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverDualClockWidget;->mTimeFormat:Ljava/lang/String;

    :cond_0
    :goto_0
    iget-object v8, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverDualClockWidget;->mContext:Landroid/content/Context;

    invoke-direct {p0, v8}, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverDualClockWidget;->getAutoHomeTimezone(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverDualClockWidget;->mAutoHomeTimeZoneId:Ljava/lang/String;

    iget-object v8, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverDualClockWidget;->mAutoHomeTimeZoneId:Ljava/lang/String;

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverDualClockWidget;->mAutoHomeTimeZoneId:Ljava/lang/String;

    invoke-static {v8}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v8

    invoke-static {v8}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v8

    iput-object v8, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverDualClockWidget;->mHomeCalendar:Ljava/util/Calendar;

    iget-object v8, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverDualClockWidget;->mHomeCalendar:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverDualClockWidget;->mIsDualClock:Z

    :cond_1
    const/4 v7, 0x0

    iget-boolean v8, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverDualClockWidget;->mIs24HTime:Z

    if-eqz v8, :cond_b

    iget-object v8, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverDualClockWidget;->mTime24HFormat:Ljava/lang/String;

    iget-object v9, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverDualClockWidget;->mRoamingCalendar:Ljava/util/Calendar;

    invoke-static {v8, v9}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v2, 0x0

    iget-object v8, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverDualClockWidget;->mRoamingTime:Landroid/widget/TextView;

    if-eqz v8, :cond_2

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v8, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverDualClockWidget;->mRoamingTime:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    invoke-direct {v2, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    iget-boolean v8, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverDualClockWidget;->mIsCover2:Z

    if-eqz v8, :cond_3

    invoke-interface {v7, v12}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    if-ne v8, v13, :cond_3

    :try_start_0
    const-string/jumbo v8, "UTF-8"

    invoke-static {v6, v8}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_2
    iget-object v8, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverDualClockWidget;->mRoamingTime:Landroid/widget/TextView;

    if-eqz v8, :cond_5

    if-eqz v2, :cond_4

    iget-object v8, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverDualClockWidget;->mRoamingTime:Landroid/widget/TextView;

    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_4
    iget-object v8, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverDualClockWidget;->mRoamingTime:Landroid/widget/TextView;

    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_5
    iget-boolean v8, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverDualClockWidget;->mIsDualClock:Z

    if-eqz v8, :cond_7

    const/4 v5, 0x0

    iget-boolean v8, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverDualClockWidget;->mIs24HTime:Z

    if-eqz v8, :cond_c

    iget-object v8, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverDualClockWidget;->mTime24HFormat:Ljava/lang/String;

    iget-object v9, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverDualClockWidget;->mHomeCalendar:Ljava/util/Calendar;

    invoke-static {v8, v9}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v8, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverDualClockWidget;->mHomeTime:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    invoke-direct {v1, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    iget-boolean v8, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverDualClockWidget;->mIsCover2:Z

    if-eqz v8, :cond_6

    invoke-interface {v5, v12}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    if-ne v8, v13, :cond_6

    :try_start_1
    const-string/jumbo v8, "UTF-8"

    invoke-static {v0, v8}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :cond_6
    :goto_4
    iget-object v8, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverDualClockWidget;->mHomeTime:Landroid/widget/TextView;

    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v8, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverDualClockWidget;->mHomeTime:Landroid/widget/TextView;

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_7
    iget-object v8, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverDualClockWidget;->mDatePattern:Ljava/lang/CharSequence;

    if-nez v8, :cond_8

    iget-object v8, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverDualClockWidget;->mContext:Landroid/content/Context;

    invoke-static {v8, v12}, Lcom/sec/android/cover/CoverUtils;->getDateFormat(Landroid/content/Context;Z)Ljava/lang/CharSequence;

    move-result-object v8

    iput-object v8, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverDualClockWidget;->mDatePattern:Ljava/lang/CharSequence;

    :cond_8
    iget-object v8, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverDualClockWidget;->mRoamingMonthandDay:Landroid/widget/TextView;

    iget-object v9, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverDualClockWidget;->mDatePattern:Ljava/lang/CharSequence;

    iget-object v10, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverDualClockWidget;->mRoamingCalendar:Ljava/util/Calendar;

    invoke-static {v9, v10}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v8, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverDualClockWidget;->mRoamingClockRoot:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverDualClockWidget;->getRoamingSingleTTSMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-boolean v8, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverDualClockWidget;->mIsDualClock:Z

    if-eqz v8, :cond_9

    iget-object v8, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverDualClockWidget;->mHomeMonthandDay:Landroid/widget/TextView;

    iget-object v9, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverDualClockWidget;->mDatePattern:Ljava/lang/CharSequence;

    iget-object v10, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverDualClockWidget;->mHomeCalendar:Ljava/util/Calendar;

    invoke-static {v9, v10}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v8, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverDualClockWidget;->mHomeClockRoot:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverDualClockWidget;->getHomeSingleTTSMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_9
    return-void

    :cond_a
    const-string/jumbo v8, "h:mm"

    iput-object v8, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverDualClockWidget;->mTimeFormat:Ljava/lang/String;

    goto/16 :goto_0

    :cond_b
    iget-object v8, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverDualClockWidget;->mTimeFormat:Ljava/lang/String;

    iget-object v9, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverDualClockWidget;->mRoamingCalendar:Ljava/util/Calendar;

    invoke-static {v8, v9}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v7

    goto/16 :goto_1

    :catch_0
    move-exception v4

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_2

    :cond_c
    iget-object v8, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverDualClockWidget;->mTimeFormat:Ljava/lang/String;

    iget-object v9, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverDualClockWidget;->mHomeCalendar:Ljava/util/Calendar;

    invoke-static {v8, v9}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v5

    goto/16 :goto_3

    :catch_1
    move-exception v4

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_4
.end method

.method protected refreshClock()V
    .locals 4

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverDualClockWidget;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "refreshClock() , locale = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverDualClockWidget;->mRoamingRegionText:Landroid/widget/TextView;

    sget v2, Lcom/sec/android/sviewcover/R$string;->s_view_screen_roaming:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverDualClockWidget;->mHomeRegionText:Landroid/widget/TextView;

    sget v2, Lcom/sec/android/sviewcover/R$string;->s_view_screen_home:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    return-void
.end method
