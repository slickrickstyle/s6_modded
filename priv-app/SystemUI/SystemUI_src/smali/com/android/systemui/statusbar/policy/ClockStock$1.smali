.class Lcom/android/systemui/statusbar/policy/ClockStock$1;
.super Landroid/content/BroadcastReceiver;
.source "ClockStock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/ClockStock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/ClockStock;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/ClockStock;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/ClockStock$1;->this$0:Lcom/android/systemui/statusbar/policy/ClockStock;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v3, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "time-zone"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/ClockStock$1;->this$0:Lcom/android/systemui/statusbar/policy/ClockStock;

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/systemui/statusbar/policy/ClockStock;->access$002(Lcom/android/systemui/statusbar/policy/ClockStock;Ljava/util/Calendar;)Ljava/util/Calendar;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/ClockStock$1;->this$0:Lcom/android/systemui/statusbar/policy/ClockStock;

    invoke-static {v3}, Lcom/android/systemui/statusbar/policy/ClockStock;->access$100(Lcom/android/systemui/statusbar/policy/ClockStock;)Ljava/text/SimpleDateFormat;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/ClockStock$1;->this$0:Lcom/android/systemui/statusbar/policy/ClockStock;

    invoke-static {v3}, Lcom/android/systemui/statusbar/policy/ClockStock;->access$100(Lcom/android/systemui/statusbar/policy/ClockStock;)Ljava/text/SimpleDateFormat;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/ClockStock$1;->this$0:Lcom/android/systemui/statusbar/policy/ClockStock;

    invoke-static {v4}, Lcom/android/systemui/statusbar/policy/ClockStock;->access$000(Lcom/android/systemui/statusbar/policy/ClockStock;)Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/ClockStock$1;->this$0:Lcom/android/systemui/statusbar/policy/ClockStock;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/policy/ClockStock;->updateClock()V

    return-void

    :cond_1
    const-string v3, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/ClockStock$1;->this$0:Lcom/android/systemui/statusbar/policy/ClockStock;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/policy/ClockStock;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget-object v1, v3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/ClockStock$1;->this$0:Lcom/android/systemui/statusbar/policy/ClockStock;

    invoke-static {v3}, Lcom/android/systemui/statusbar/policy/ClockStock;->access$200(Lcom/android/systemui/statusbar/policy/ClockStock;)Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/ClockStock$1;->this$0:Lcom/android/systemui/statusbar/policy/ClockStock;

    invoke-static {v3, v1}, Lcom/android/systemui/statusbar/policy/ClockStock;->access$202(Lcom/android/systemui/statusbar/policy/ClockStock;Ljava/util/Locale;)Ljava/util/Locale;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/ClockStock$1;->this$0:Lcom/android/systemui/statusbar/policy/ClockStock;

    const-string v4, ""

    invoke-static {v3, v4}, Lcom/android/systemui/statusbar/policy/ClockStock;->access$302(Lcom/android/systemui/statusbar/policy/ClockStock;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0
.end method
