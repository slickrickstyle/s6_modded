.class Lcom/android/keyguard/servicebox/pages/clock/KeyguardDateView$1;
.super Landroid/os/Handler;
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

    iput-object p1, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDateView$1;->this$0:Lcom/android/keyguard/servicebox/pages/clock/KeyguardDateView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDateView$1;->this$0:Lcom/android/keyguard/servicebox/pages/clock/KeyguardDateView;

    invoke-static {v0}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDateView;->access$000(Lcom/android/keyguard/servicebox/pages/clock/KeyguardDateView;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDateView$1;->this$0:Lcom/android/keyguard/servicebox/pages/clock/KeyguardDateView;

    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDateView$1;->this$0:Lcom/android/keyguard/servicebox/pages/clock/KeyguardDateView;

    invoke-virtual {v1}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDateView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$string;->date_format_for_display:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDateView;->access$102(Lcom/android/keyguard/servicebox/pages/clock/KeyguardDateView;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDateView$1;->this$0:Lcom/android/keyguard/servicebox/pages/clock/KeyguardDateView;

    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDateView$1;->this$0:Lcom/android/keyguard/servicebox/pages/clock/KeyguardDateView;

    invoke-virtual {v1}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDateView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$string;->date_format_for_tts:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDateView;->access$202(Lcom/android/keyguard/servicebox/pages/clock/KeyguardDateView;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
