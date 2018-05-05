.class public Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;
.super Ljava/lang/Object;
.source "CalendarManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager$1;,
        Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager$2;,
        Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager$3;,
        Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager$4;,
        Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager$5;,
        Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager$6;,
        Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager$EventChangedListener;,
        Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager$LoadEventListCompletedListener;
    }
.end annotation


# static fields
.field private static final SETTINGS_VALUE_LISTENER_LIST:[Landroid/net/Uri;

.field private static sInstance:Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;


# instance fields
.field private mAlarmManager:Landroid/app/AlarmManager;

.field private mCalendarChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mCalendarSettingChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mCurDayOfMonth:I

.field private mEventChangedListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager$EventChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private mEventList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/keyguard/servicebox/pages/calendar/CalendarData;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private mIs24HourMode:Z

.field private mLoadTodayEventsCompletedListener:Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager$LoadEventListCompletedListener;

.field private final mLoadTodayEventsRunnable:Ljava/lang/Runnable;

.field private mNextEventEndedPendingIntent:Landroid/app/PendingIntent;

.field private mSettingsListener:Lcom/android/keyguard/util/SettingsHelper$OnChangedCallback;

.field private mTimeTickReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static synthetic -get0()[Landroid/net/Uri;
    .locals 1

    sget-object v0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;->SETTINGS_VALUE_LISTENER_LIST:[Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;)I
    .locals 1

    iget v0, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;->mCurDayOfMonth:I

    return v0
.end method

.method static synthetic -get3(Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;->mEventList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;)Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager$LoadEventListCompletedListener;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;->mLoadTodayEventsCompletedListener:Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager$LoadEventListCompletedListener;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;I)I
    .locals 0

    iput p1, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;->mCurDayOfMonth:I

    return p1
.end method

.method static synthetic -set1(Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;->mEventList:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic -set2(Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;->mIs24HourMode:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;JJ)Landroid/database/Cursor;
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;->getEventsFromCalendar(JJ)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;J)Landroid/database/Cursor;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;->getTasksFromCalendar(J)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap2(Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;Ljava/util/ArrayList;)Lcom/android/keyguard/servicebox/pages/calendar/CalendarData;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;->getNextEndEvent(Ljava/util/ArrayList;)Lcom/android/keyguard/servicebox/pages/calendar/CalendarData;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap3(Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;->handleCalendarUpdated()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;Lcom/android/keyguard/servicebox/pages/calendar/CalendarData;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;->registerAlarm(Lcom/android/keyguard/servicebox/pages/calendar/CalendarData;)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;->removeEndedEvents(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;->unregisterAlarm()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/net/Uri;

    const-string/jumbo v1, "time_12_24"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;->SETTINGS_VALUE_LISTENER_LIST:[Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;->mEventChangedListeners:Ljava/util/ArrayList;

    iput-boolean v3, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;->mIs24HourMode:Z

    iput v3, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;->mCurDayOfMonth:I

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager$1;

    invoke-direct {v1, p0}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager$1;-><init>(Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;)V

    iput-object v1, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;->mLoadTodayEventsRunnable:Ljava/lang/Runnable;

    new-instance v1, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager$2;

    invoke-direct {v1, p0}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager$2;-><init>(Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;)V

    iput-object v1, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;->mLoadTodayEventsCompletedListener:Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager$LoadEventListCompletedListener;

    new-instance v1, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager$3;

    invoke-direct {v1, p0}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager$3;-><init>(Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;)V

    iput-object v1, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;->mCalendarChangeReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager$4;

    invoke-direct {v1, p0}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager$4;-><init>(Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;)V

    iput-object v1, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;->mCalendarSettingChangeReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager$5;

    invoke-direct {v1, p0}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager$5;-><init>(Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;)V

    iput-object v1, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;->mTimeTickReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager$6;

    invoke-direct {v1, p0}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager$6;-><init>(Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;)V

    iput-object v1, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;->mSettingsListener:Lcom/android/keyguard/util/SettingsHelper$OnChangedCallback;

    iput-object p1, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/AlarmManager;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    iput-object v1, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;->mAlarmManager:Landroid/app/AlarmManager;

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.android.keyguard.servicebox.pages.calendar.NEXT_EVENT_ENDED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;->mContext:Landroid/content/Context;

    const/high16 v2, 0x10000000

    invoke-static {v1, v3, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;->mNextEventEndedPendingIntent:Landroid/app/PendingIntent;

    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/util/SettingsHelper;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/SettingsHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/util/SettingsHelper;->is24HourModeEnabled()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;->mIs24HourMode:Z

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;->mCurDayOfMonth:I

    invoke-direct {p0}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;->registerReceivers()V

    return-void
.end method

.method private getEventsFromCalendar(JJ)Landroid/database/Cursor;
    .locals 7

    const-string/jumbo v6, "((((dtend>= ?) AND (allDay= ?) ) OR ((dtstart<= ?) AND (dtend> ?) AND (allDay= ?) ) ) AND (deleted= 0) AND (visible= 1) )"

    const/4 v2, 0x5

    new-array v4, v2, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v4, v3

    const-string/jumbo v2, "0"

    const/4 v3, 0x1

    aput-object v2, v4, v3

    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v4, v3

    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v4, v3

    const-string/jumbo v2, "1"

    const/4 v3, 0x4

    aput-object v2, v4, v3

    const-string/jumbo v5, "allDay DESC, dtstart ASC, title ASC"

    const-string/jumbo v2, "content://com.android.calendar/events"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEvent;->TABLE_PROJECTION:[Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    return-object v2
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;
    .locals 2

    const-class v1, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;->sInstance:Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;

    invoke-direct {v0, p0}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;->sInstance:Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;

    :cond_0
    sget-object v0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;->sInstance:Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getNextEndEvent(Ljava/util/ArrayList;)Lcom/android/keyguard/servicebox/pages/calendar/CalendarData;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/keyguard/servicebox/pages/calendar/CalendarData;",
            ">;)",
            "Lcom/android/keyguard/servicebox/pages/calendar/CalendarData;"
        }
    .end annotation

    const/4 v6, 0x0

    const/4 v5, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    return-object v6

    :cond_1
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/servicebox/pages/calendar/CalendarData;

    iget-wide v2, v1, Lcom/android/keyguard/servicebox/pages/calendar/CalendarData;->endTime:J

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_3

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/keyguard/servicebox/pages/calendar/CalendarData;

    iget-wide v4, v4, Lcom/android/keyguard/servicebox/pages/calendar/CalendarData;->endTime:J

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-eqz v4, :cond_2

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/keyguard/servicebox/pages/calendar/CalendarData;

    iget-wide v4, v4, Lcom/android/keyguard/servicebox/pages/calendar/CalendarData;->endTime:J

    cmp-long v4, v4, v2

    if-gez v4, :cond_2

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/servicebox/pages/calendar/CalendarData;

    iget-wide v2, v1, Lcom/android/keyguard/servicebox/pages/calendar/CalendarData;->endTime:J

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    const-string/jumbo v4, "CalendarManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Next end event = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarData;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method private getTasksFromCalendar(J)Landroid/database/Cursor;
    .locals 7

    const-string/jumbo v3, "((due_date= ?) AND (deleted= 0) AND (complete= 0) )"

    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x0

    aput-object v2, v4, v6

    const-string/jumbo v5, "importance DESC, subject ASC"

    const-string/jumbo v2, "content://com.android.calendar/syncTasks"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/android/keyguard/servicebox/pages/calendar/CalendarTask;->TABLE_PROJECTION:[Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    return-object v2
.end method

.method private handleCalendarUpdated()V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;->mLoadTodayEventsRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private registerAlarm(Lcom/android/keyguard/servicebox/pages/calendar/CalendarData;)V
    .locals 6

    invoke-direct {p0}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;->unregisterAlarm()V

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-wide v2, p1, Lcom/android/keyguard/servicebox/pages/calendar/CalendarData;->endTime:J

    const-wide/32 v4, 0xea60

    add-long v0, v2, v4

    iget-object v2, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v3, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;->mNextEventEndedPendingIntent:Landroid/app/PendingIntent;

    const/4 v4, 0x1

    invoke-virtual {v2, v4, v0, v1, v3}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    return-void
.end method

.method private registerReceivers()V
    .locals 4

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "android.intent.action.PROVIDER_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "content"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    const-string/jumbo v1, "com.android.calendar"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/IntentFilter;->addDataAuthority(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;->mCalendarChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "com.samsung.android.calendar.ACTION_UPDATE_WIDGET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "com.android.keyguard.servicebox.pages.calendar.NEXT_EVENT_ENDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;->mCalendarChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "com.sec.android.intent.CHANGE_SHARE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;->mCalendarSettingChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;->mTimeTickReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/util/SettingsHelper;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/SettingsHelper;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;->mSettingsListener:Lcom/android/keyguard/util/SettingsHelper$OnChangedCallback;

    sget-object v3, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;->SETTINGS_VALUE_LISTENER_LIST:[Landroid/net/Uri;

    invoke-virtual {v1, v2, v3}, Lcom/android/keyguard/util/SettingsHelper;->registerCallback(Lcom/android/keyguard/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    return-void
.end method

.method private removeEndedEvents(Ljava/util/ArrayList;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/keyguard/servicebox/pages/calendar/CalendarData;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    :goto_0
    if-ltz v2, :cond_2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/keyguard/servicebox/pages/calendar/CalendarData;

    iget-wide v4, v3, Lcom/android/keyguard/servicebox/pages/calendar/CalendarData;->endTime:J

    const-wide/16 v6, -0x1

    cmp-long v3, v4, v6

    if-eqz v3, :cond_1

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/keyguard/servicebox/pages/calendar/CalendarData;

    iget-wide v4, v3, Lcom/android/keyguard/servicebox/pages/calendar/CalendarData;->endTime:J

    cmp-long v3, v4, v0

    if-gez v3, :cond_1

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private roundDownMillis(J)J
    .locals 3

    const-wide/16 v0, 0x3e8

    rem-long v0, p1, v0

    sub-long v0, p1, v0

    return-wide v0
.end method

.method private unregisterAlarm()V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;->mNextEventEndedPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    return-void
.end method


# virtual methods
.method public addEventChangedListener(Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager$EventChangedListener;)V
    .locals 3

    const/4 v2, 0x0

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;->mEventChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;->mEventChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_1

    return-void

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;->mEventChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v2}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;->removeEventChangedListener(Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager$EventChangedListener;)V

    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;->mEventList:Ljava/util/ArrayList;

    if-nez v1, :cond_3

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;->mEventList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;->mLoadTodayEventsCompletedListener:Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager$LoadEventListCompletedListener;

    invoke-virtual {p0, v1}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;->loadTodayEvents(Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager$LoadEventListCompletedListener;)V

    :goto_1
    return-void

    :cond_3
    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;->mEventList:Ljava/util/ArrayList;

    invoke-interface {p1, v1}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager$EventChangedListener;->onChanged(Ljava/util/ArrayList;)V

    goto :goto_1
.end method

.method public getCachedEvents()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/keyguard/servicebox/pages/calendar/CalendarData;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;->mEventList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getEventCnt()I
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;->mEventList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;->mEventList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public is24HourFormat()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;->mIs24HourMode:Z

    return v0
.end method

.method public loadTodayEvents(Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager$LoadEventListCompletedListener;)V
    .locals 12

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v3, 0x5

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;->roundDownMillis(J)J

    move-result-wide v4

    const-wide/32 v2, 0x5265c00

    add-long v8, v4, v2

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v1

    int-to-long v2, v1

    add-long/2addr v2, v4

    invoke-direct {p0, v2, v3}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;->roundDownMillis(J)J

    move-result-wide v6

    new-instance v2, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager$7;

    move-object v3, p0

    move-object v10, p1

    invoke-direct/range {v2 .. v10}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager$7;-><init>(Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;JJJLcom/android/keyguard/servicebox/pages/calendar/CalendarManager$LoadEventListCompletedListener;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v2, v1, v3}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager$7;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v11

    return-void
.end method

.method public notifyEventChanged()V
    .locals 3

    iget-object v2, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;->mEventChangedListeners:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager$EventChangedListener;

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;->mEventList:Ljava/util/ArrayList;

    invoke-interface {v0, v2}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager$EventChangedListener;->onChanged(Ljava/util/ArrayList;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public removeEventChangedListener(Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager$EventChangedListener;)V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;->mEventChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method
