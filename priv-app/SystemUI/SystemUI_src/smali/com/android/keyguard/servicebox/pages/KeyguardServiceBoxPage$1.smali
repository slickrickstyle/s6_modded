.class Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "KeyguardServiceBoxPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;


# direct methods
.method constructor <init>(Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage$1;->this$0:Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage$1;->this$0:Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;

    invoke-virtual {v0}, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->dismissServiceBox()V

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage$1;->this$0:Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->mIsAnimating:Z

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage$1;->this$0:Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->mIsAnimating:Z

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage$1;->this$0:Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;

    iget-object v0, v0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->mServiceBoxController:Lcom/android/keyguard/servicebox/KeyguardServiceBoxController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage$1;->this$0:Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;

    iget-object v0, v0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->mServiceBoxController:Lcom/android/keyguard/servicebox/KeyguardServiceBoxController;

    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage$1;->this$0:Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;

    invoke-virtual {v1}, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxController;->onDismissServiceBoxStarted(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
