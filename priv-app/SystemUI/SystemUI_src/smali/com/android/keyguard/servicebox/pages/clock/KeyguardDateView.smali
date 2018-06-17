.class public Lcom/android/keyguard/servicebox/pages/clock/KeyguardDateView;
.super Lcom/android/keyguard/servicebox/pages/clock/KeyguardTextView;
.source "KeyguardDateView.java"


# instance fields
.field private mCalendar:Ljava/util/Calendar;

.field private mCurrentDate:Ljava/util/Date;

.field private mCurrentLocale:Ljava/util/Locale;

.field private mDisplayFormat:Ljava/text/SimpleDateFormat;

.field private mDisplayPattern:Ljava/lang/String;

.field private final mHandler:Landroid/os/Handler;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mLastText:Ljava/lang/String;

.field private mTTSFormat:Ljava/text/SimpleDateFormat;

.field private mTTSPattern:Ljava/lang/String;

.field private final mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v1, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDateView;->mDisplayFormat:Ljava/text/SimpleDateFormat;

    iput-object v1, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDateView;->mTTSFormat:Ljava/text/SimpleDateFormat;

    iput-object v1, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDateView;->mLastText:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDateView;->mDisplayPattern:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDateView;->mTTSPattern:Ljava/lang/String;

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDateView;->mCurrentDate:Ljava/util/Date;

    iput-object v1, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDateView;->mCurrentLocale:Ljava/util/Locale;

    iput-object v1, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDateView;->mCalendar:Ljava/util/Calendar;

    new-instance v0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDateView$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDateView$1;-><init>(Lcom/android/keyguard/servicebox/pages/clock/KeyguardDateView;)V

    iput-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDateView;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDateView$2;

    invoke-direct {v0, p0}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDateView$2;-><init>(Lcom/android/keyguard/servicebox/pages/clock/KeyguardDateView;)V

    iput-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDateView;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDateView$3;

    invoke-direct {v0, p0}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDateView$3;-><init>(Lcom/android/keyguard/servicebox/pages/clock/KeyguardDateView;)V

    iput-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDateView;->mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/servicebox/pages/clock/KeyguardDateView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDateView;->handleUpdateDateText()V

    return-void
.end method

.method static synthetic access$102(Lcom/android/keyguard/servicebox/pages/clock/KeyguardDateView;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDateView;->mDisplayPattern:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$202(Lcom/android/keyguard/servicebox/pages/clock/KeyguardDateView;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDateView;->mTTSPattern:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/keyguard/servicebox/pages/clock/KeyguardDateView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDateView;->updateFormatString()V

    return-void
.end method

.method static synthetic access$402(Lcom/android/keyguard/servicebox/pages/clock/KeyguardDateView;Ljava/text/SimpleDateFormat;)Ljava/text/SimpleDateFormat;
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDateView;->mDisplayFormat:Ljava/text/SimpleDateFormat;

    return-object p1
.end method

.method static synthetic access$502(Lcom/android/keyguard/servicebox/pages/clock/KeyguardDateView;Ljava/text/SimpleDateFormat;)Ljava/text/SimpleDateFormat;
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDateView;->mTTSFormat:Ljava/text/SimpleDateFormat;

    return-object p1
.end method

.method private handleUpdateDateText()V
    .locals 8

    iget-object v5, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDateView;->mDisplayFormat:Ljava/text/SimpleDateFormat;

    if-nez v5, :cond_0

    :try_start_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    iput-object v5, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDateView;->mCurrentLocale:Ljava/util/Locale;

    iget-object v5, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDateView;->mCurrentLocale:Ljava/util/Locale;

    iget-object v6, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDateView;->mDisplayPattern:Ljava/lang/String;

    invoke-static {v5, v6}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v5, Ljava/text/SimpleDateFormat;

    iget-object v6, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDateView;->mCurrentLocale:Ljava/util/Locale;

    invoke-direct {v5, v0, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v5, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDateView;->mDisplayFormat:Ljava/text/SimpleDateFormat;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDateView;->mCalendar:Ljava/util/Calendar;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDateView;->mDisplayFormat:Ljava/text/SimpleDateFormat;

    iget-object v6, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDateView;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v5, v6}, Ljava/text/SimpleDateFormat;->setCalendar(Ljava/util/Calendar;)V

    :cond_1
    iget-object v5, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDateView;->mCurrentDate:Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/util/Date;->setTime(J)V

    iget-object v5, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDateView;->mDisplayFormat:Ljava/text/SimpleDateFormat;

    iget-object v6, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDateView;->mCurrentDate:Ljava/util/Date;

    invoke-virtual {v5, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    iget-object v5, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDateView;->mLastText:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual {p0, v1}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDateView;->setText(Ljava/lang/CharSequence;)V

    iput-object v1, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDateView;->mLastText:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDateView;->mTTSFormat:Ljava/text/SimpleDateFormat;

    if-nez v5, :cond_2

    :try_start_1
    iget-object v5, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDateView;->mCurrentLocale:Ljava/util/Locale;

    iget-object v6, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDateView;->mTTSPattern:Ljava/lang/String;

    invoke-static {v5, v6}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/text/SimpleDateFormat;

    iget-object v6, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDateView;->mCurrentLocale:Ljava/util/Locale;

    invoke-direct {v5, v3, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v5, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDateView;->mTTSFormat:Ljava/text/SimpleDateFormat;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_2
    :goto_1
    iget-object v5, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDateView;->mCalendar:Ljava/util/Calendar;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDateView;->mTTSFormat:Ljava/text/SimpleDateFormat;

    iget-object v6, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDateView;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v5, v6}, Ljava/text/SimpleDateFormat;->setCalendar(Ljava/util/Calendar;)V

    :cond_3
    iget-object v5, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDateView;->mTTSFormat:Ljava/text/SimpleDateFormat;

    iget-object v6, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDateView;->mCurrentDate:Ljava/util/Date;

    invoke-virtual {v5, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDateView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_4
    return-void

    :catch_0
    move-exception v2

    const-string v5, "KeyguardDateView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v2

    const-string v5, "KeyguardDateView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private updateFormatString()V
    .locals 2

    const/16 v1, 0x66

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDateView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDateView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDateView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardTextView;->onAttachedToWindow()V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDateView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDateView;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    sget-object v1, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDateView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDateView;->mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    invoke-virtual {p0}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDateView;->updateDateText()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDateView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDateView;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    sget-object v0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDateView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDateView;->mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    iput-object v2, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDateView;->mDisplayFormat:Ljava/text/SimpleDateFormat;

    iput-object v2, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDateView;->mTTSFormat:Ljava/text/SimpleDateFormat;

    invoke-super {p0}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardTextView;->onDetachedFromWindow()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    invoke-super {p0}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardTextView;->onFinishInflate()V

    invoke-direct {p0}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDateView;->updateFormatString()V

    return-void
.end method

.method public setTimeZone(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-static {p1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDateView;->mCalendar:Ljava/util/Calendar;

    :goto_0
    invoke-virtual {p0}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDateView;->updateDateText()V

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDateView;->mCalendar:Ljava/util/Calendar;

    goto :goto_0
.end method

.method public updateDateText()V
    .locals 2

    const/16 v1, 0x65

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDateView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDateView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDateView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
