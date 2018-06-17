.class Lcom/android/keyguard/servicebox/pages/clock/KeyguardDateView$3;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
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

    iput-object p1, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDateView$3;->this$0:Lcom/android/keyguard/servicebox/pages/clock/KeyguardDateView;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimeChanged()V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDateView$3;->this$0:Lcom/android/keyguard/servicebox/pages/clock/KeyguardDateView;

    invoke-virtual {v0}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDateView;->updateDateText()V

    return-void
.end method
