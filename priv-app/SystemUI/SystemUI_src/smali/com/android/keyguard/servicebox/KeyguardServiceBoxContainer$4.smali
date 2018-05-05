.class Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer$4;
.super Ljava/lang/Object;
.source "KeyguardServiceBoxContainer.java"

# interfaces
.implements Lcom/android/internal/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mScrollState:I

.field final synthetic this$0:Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;


# direct methods
.method constructor <init>(Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer$4;->this$0:Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private isClockPage(I)Z
    .locals 5

    const/4 v4, 0x0

    iget-object v3, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer$4;->this$0:Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;

    invoke-static {v3}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->-get10(Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;)Lcom/android/keyguard/servicebox/KeyguardServiceBoxViewPager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxViewPager;->getCurrent()Ljava/lang/Object;

    move-result-object v0

    instance-of v3, v0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;

    if-nez v3, :cond_0

    return v4

    :cond_0
    move-object v2, v0

    check-cast v2, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;

    invoke-virtual {v2}, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "servicebox_clock"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string/jumbo v3, "clone_clock"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    const/4 v3, 0x1

    return v3

    :cond_2
    return v4
.end method


# virtual methods
.method protected isFirstPageLocated(IF)Z
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer$4;->this$0:Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;

    invoke-static {v0}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->-wrap1(Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-ne p1, v1, :cond_1

    cmpl-float v0, p2, v2

    if-nez v0, :cond_1

    return v1

    :cond_0
    if-nez p1, :cond_1

    cmpl-float v0, p2, v2

    if-nez v0, :cond_1

    return v1

    :cond_1
    return v3
.end method

.method protected isLastPageLocated(IF)Z
    .locals 3

    const/4 v2, 0x1

    iget-object v1, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer$4;->this$0:Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;

    invoke-static {v1}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->-get9(Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;)Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPageAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPageAdapter;->getCount()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    iget-object v1, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer$4;->this$0:Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;

    invoke-static {v1}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->-wrap1(Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-ne p1, v0, :cond_1

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, p2, v1

    if-nez v1, :cond_1

    return v2

    :cond_0
    if-ne p1, v0, :cond_1

    const/4 v1, 0x0

    cmpl-float v1, p2, v1

    if-nez v1, :cond_1

    return v2

    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0

    iput p1, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer$4;->mScrollState:I

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 6

    const/4 v5, 0x1

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const/4 v2, 0x0

    iget v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer$4;->mScrollState:I

    if-ne v0, v5, :cond_4

    iget-object v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer$4;->this$0:Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;

    invoke-static {v0}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->-get9(Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;)Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPageAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPageAdapter;->getCount()I

    move-result v0

    if-le v0, v5, :cond_4

    invoke-virtual {p0, p1, p2}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer$4;->isFirstPageLocated(IF)Z

    move-result v0

    if-eqz v0, :cond_3

    iput v2, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer$4;->mScrollState:I

    iget-object v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer$4;->this$0:Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;

    invoke-static {v0}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->-get10(Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;)Lcom/android/keyguard/servicebox/KeyguardServiceBoxViewPager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer$4;->this$0:Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;

    invoke-static {v1}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->-get9(Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;)Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPageAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPageAdapter;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxViewPager;->setCurrentItem(IZ)V

    :cond_0
    :goto_0
    cmpl-float v0, p2, v3

    if-eqz v0, :cond_1

    cmpl-float v0, p2, v4

    if-nez v0, :cond_6

    :cond_1
    invoke-direct {p0, p1}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer$4;->isClockPage(I)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer$4;->this$0:Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;

    invoke-static {v0}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->-get6(Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer$4;->this$0:Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;

    invoke-static {v0, v5}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->-set2(Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;Z)Z

    iget-object v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer$4;->this$0:Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;

    invoke-static {v0}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->-get5(Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer$4;->this$0:Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;

    invoke-static {v0}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->-wrap0(Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer$4;->this$0:Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;

    invoke-static {v0}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->-get7(Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;)Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer$4;->this$0:Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;

    invoke-static {v0}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->-get7(Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;)Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    :cond_2
    :goto_1
    return-void

    :cond_3
    invoke-virtual {p0, p1, p2}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer$4;->isLastPageLocated(IF)Z

    move-result v0

    if-eqz v0, :cond_0

    iput v2, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer$4;->mScrollState:I

    iget-object v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer$4;->this$0:Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;

    invoke-static {v0}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->-get10(Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;)Lcom/android/keyguard/servicebox/KeyguardServiceBoxViewPager;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxViewPager;->setCurrentItem(IZ)V

    goto :goto_0

    :cond_4
    iget v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer$4;->mScrollState:I

    if-nez v0, :cond_0

    cmpl-float v0, p2, v3

    if-eqz v0, :cond_0

    cmpl-float v0, p2, v4

    if-eqz v0, :cond_0

    iput v5, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer$4;->mScrollState:I

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer$4;->this$0:Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;

    invoke-static {v0}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->-get7(Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;)Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer$4;->this$0:Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;

    invoke-static {v0}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->-get7(Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;)Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView;->invalidate()V

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer$4;->this$0:Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;

    invoke-static {v0}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->-get6(Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer$4;->this$0:Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;

    invoke-static {v0, v2}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->-set2(Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;Z)Z

    iget-object v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer$4;->this$0:Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;

    invoke-static {v0}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->-get5(Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer$4;->this$0:Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;

    invoke-static {v0}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->-wrap0(Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer$4;->this$0:Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;

    invoke-static {v0}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->-get7(Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;)Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer$4;->this$0:Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;

    invoke-static {v0}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->-get7(Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;)Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    goto :goto_1

    :cond_7
    iget-object v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer$4;->this$0:Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;

    invoke-static {v0}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->-get7(Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;)Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer$4;->this$0:Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;

    invoke-static {v0}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->-get7(Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;)Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView;->invalidate()V

    goto :goto_1
.end method

.method public onPageSelected(I)V
    .locals 4

    iget-object v1, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer$4;->this$0:Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;

    invoke-static {v1}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->-wrap2(Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer$4;->this$0:Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;

    invoke-static {v1}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->-get11(Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;)Lcom/android/keyguard/util/SettingsHelper;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/keyguard/util/SettingsHelper;->setServiceBoxSharePageName(Ljava/lang/String;)V

    :cond_0
    const-string/jumbo v1, "KeyguardServiceBoxContainer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onPageSelected() packageName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
