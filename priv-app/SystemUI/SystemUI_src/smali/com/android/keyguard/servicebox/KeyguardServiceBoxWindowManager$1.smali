.class Lcom/android/keyguard/servicebox/KeyguardServiceBoxWindowManager$1;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "KeyguardServiceBoxWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/servicebox/KeyguardServiceBoxWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/servicebox/KeyguardServiceBoxWindowManager;


# direct methods
.method constructor <init>(Lcom/android/keyguard/servicebox/KeyguardServiceBoxWindowManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxWindowManager$1;->this$0:Lcom/android/keyguard/servicebox/KeyguardServiceBoxWindowManager;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinishedGoingToSleep(I)V
    .locals 1

    sget-boolean v0, Lcom/android/keyguard/KeyguardRune;->SUPPORT_CINEMATIC_WALLPAPER:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxWindowManager$1;->this$0:Lcom/android/keyguard/servicebox/KeyguardServiceBoxWindowManager;

    invoke-static {v0}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxWindowManager;->-wrap0(Lcom/android/keyguard/servicebox/KeyguardServiceBoxWindowManager;)V

    :cond_0
    return-void
.end method

.method public onKeyguardVisibilityChanged(Z)V
    .locals 1

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxWindowManager$1;->this$0:Lcom/android/keyguard/servicebox/KeyguardServiceBoxWindowManager;

    invoke-static {v0}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxWindowManager;->-wrap0(Lcom/android/keyguard/servicebox/KeyguardServiceBoxWindowManager;)V

    :cond_0
    return-void
.end method

.method public onScreenTurnedOff()V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxWindowManager$1;->this$0:Lcom/android/keyguard/servicebox/KeyguardServiceBoxWindowManager;

    invoke-static {v0}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxWindowManager;->-wrap0(Lcom/android/keyguard/servicebox/KeyguardServiceBoxWindowManager;)V

    return-void
.end method

.method public onUpdateCoverState(Lcom/samsung/android/cover/CoverState;)V
    .locals 1

    iget-boolean v0, p1, Lcom/samsung/android/cover/CoverState;->switchState:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxWindowManager$1;->this$0:Lcom/android/keyguard/servicebox/KeyguardServiceBoxWindowManager;

    invoke-static {v0}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxWindowManager;->-wrap0(Lcom/android/keyguard/servicebox/KeyguardServiceBoxWindowManager;)V

    :cond_0
    return-void
.end method
