.class Lcom/android/systemui/statusbar/NotificationMoreCue$4;
.super Ljava/lang/Object;
.source "NotificationMoreCue.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/NotificationMoreCue;->runMoreCueAnimation(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/NotificationMoreCue;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/NotificationMoreCue;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationMoreCue$4;->this$0:Lcom/android/systemui/statusbar/NotificationMoreCue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationMoreCue$4;->this$0:Lcom/android/systemui/statusbar/NotificationMoreCue;

    invoke-static {v0}, Lcom/android/systemui/statusbar/NotificationMoreCue;->-get1(Lcom/android/systemui/statusbar/NotificationMoreCue;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationMoreCue$4;->this$0:Lcom/android/systemui/statusbar/NotificationMoreCue;

    invoke-static {v0}, Lcom/android/systemui/statusbar/NotificationMoreCue;->-get1(Lcom/android/systemui/statusbar/NotificationMoreCue;)Landroid/view/View;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method
