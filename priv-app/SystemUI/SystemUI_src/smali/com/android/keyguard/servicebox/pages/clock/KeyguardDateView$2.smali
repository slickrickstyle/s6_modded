.class Lcom/android/keyguard/servicebox/pages/clock/KeyguardDateView$2;
.super Landroid/content/BroadcastReceiver;
.source "KeyguardDateView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/servicebox/pages/clock/KeyguardDateView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/servicebox/pages/clock/KeyguardDateView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/servicebox/pages/clock/KeyguardDateView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDateView$2;->this$0:Lcom/android/keyguard/servicebox/pages/clock/KeyguardDateView;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDateView$2;->this$0:Lcom/android/keyguard/servicebox/pages/clock/KeyguardDateView;

    invoke-static {v1}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDateView;->access$300(Lcom/android/keyguard/servicebox/pages/clock/KeyguardDateView;)V

    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDateView$2;->this$0:Lcom/android/keyguard/servicebox/pages/clock/KeyguardDateView;

    invoke-static {v1, v2}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDateView;->access$402(Lcom/android/keyguard/servicebox/pages/clock/KeyguardDateView;Ljava/text/SimpleDateFormat;)Ljava/text/SimpleDateFormat;

    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDateView$2;->this$0:Lcom/android/keyguard/servicebox/pages/clock/KeyguardDateView;

    invoke-static {v1, v2}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDateView;->access$502(Lcom/android/keyguard/servicebox/pages/clock/KeyguardDateView;Ljava/text/SimpleDateFormat;)Ljava/text/SimpleDateFormat;

    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDateView$2;->this$0:Lcom/android/keyguard/servicebox/pages/clock/KeyguardDateView;

    invoke-virtual {v1}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDateView;->updateDateText()V

    :cond_1
    return-void
.end method
