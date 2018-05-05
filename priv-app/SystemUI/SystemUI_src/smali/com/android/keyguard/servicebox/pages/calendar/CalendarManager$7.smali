.class Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager$7;
.super Landroid/os/AsyncTask;
.source "CalendarManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;->loadTodayEvents(Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager$LoadEventListCompletedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/ArrayList",
        "<",
        "Lcom/android/keyguard/servicebox/pages/calendar/CalendarData;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;

.field final synthetic val$listener:Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager$LoadEventListCompletedListener;

.field final synthetic val$todayEndTime:J

.field final synthetic val$todayStartTime:J

.field final synthetic val$todayTimezoneStartTime:J


# direct methods
.method constructor <init>(Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;JJJLcom/android/keyguard/servicebox/pages/calendar/CalendarManager$LoadEventListCompletedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager$7;->this$0:Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;

    iput-wide p2, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager$7;->val$todayStartTime:J

    iput-wide p4, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager$7;->val$todayTimezoneStartTime:J

    iput-wide p6, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager$7;->val$todayEndTime:J

    iput-object p8, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager$7;->val$listener:Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager$LoadEventListCompletedListener;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager$7;->doInBackground([Ljava/lang/Void;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/keyguard/servicebox/pages/calendar/CalendarData;",
            ">;"
        }
    .end annotation

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager$7;->this$0:Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;

    iget-wide v2, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager$7;->val$todayStartTime:J

    iget-wide v4, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager$7;->val$todayTimezoneStartTime:J

    invoke-static {v0, v2, v3, v4, v5}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;->-wrap0(Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;JJ)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_1

    :goto_0
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEvent;

    iget-wide v2, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager$7;->val$todayStartTime:J

    iget-wide v4, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager$7;->val$todayEndTime:J

    invoke-direct/range {v0 .. v5}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEvent;-><init>(Landroid/database/Cursor;JJ)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager$7;->this$0:Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;

    iget-wide v2, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager$7;->val$todayTimezoneStartTime:J

    invoke-static {v0, v2, v3}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;->-wrap1(Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;J)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_3

    :goto_1
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarTask;

    invoke-direct {v0, v1}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarTask;-><init>(Landroid/database/Cursor;)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    return-object v6
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager$7;->onPostExecute(Ljava/util/ArrayList;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/keyguard/servicebox/pages/calendar/CalendarData;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager$7;->val$listener:Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager$LoadEventListCompletedListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager$7;->val$listener:Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager$LoadEventListCompletedListener;

    invoke-interface {v0, p1}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager$LoadEventListCompletedListener;->onCompleted(Ljava/util/ArrayList;)V

    :cond_0
    return-void
.end method
