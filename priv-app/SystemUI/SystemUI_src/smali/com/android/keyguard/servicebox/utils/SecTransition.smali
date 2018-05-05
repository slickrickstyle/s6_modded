.class public Lcom/android/keyguard/servicebox/utils/SecTransition;
.super Ljava/lang/Object;
.source "SecTransition.java"


# instance fields
.field private mAnimations:Landroid/animation/AnimatorSet;

.field private mContainer:Landroid/view/ViewGroup;

.field private mGlobalOption:Lcom/android/keyguard/servicebox/utils/SecTransitionOption;

.field mSourceRootViewList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mSourceRootViewParamsMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/view/View;",
            "Lcom/android/keyguard/servicebox/utils/SecTransitionViewParams;",
            ">;"
        }
    .end annotation
.end field

.field private mSubOptionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/keyguard/servicebox/utils/SecTransitionOption;",
            ">;"
        }
    .end annotation
.end field

.field private mTargetRootView:Landroid/view/View;

.field private mTransitionNameWhiteList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTransitionSourceViewNameMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mTransitionSourceViewParamsMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/keyguard/servicebox/utils/SecTransitionViewParams;",
            ">;"
        }
    .end annotation
.end field

.field private mWithFade:Z


# direct methods
.method static synthetic -get0(Lcom/android/keyguard/servicebox/utils/SecTransition;)Landroid/animation/AnimatorSet;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/servicebox/utils/SecTransition;->mAnimations:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/keyguard/servicebox/utils/SecTransition;)Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/servicebox/utils/SecTransition;->mContainer:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/keyguard/servicebox/utils/SecTransition;)Lcom/android/keyguard/servicebox/utils/SecTransitionOption;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/servicebox/utils/SecTransition;->mGlobalOption:Lcom/android/keyguard/servicebox/utils/SecTransitionOption;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/keyguard/servicebox/utils/SecTransition;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/servicebox/utils/SecTransition;->mTargetRootView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/keyguard/servicebox/utils/SecTransition;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/servicebox/utils/SecTransition;->addGlobalAlphaAnimation()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/keyguard/servicebox/utils/SecTransition;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/keyguard/servicebox/utils/SecTransition;->matchingTransitionName(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup;Lcom/android/keyguard/servicebox/utils/SecTransitionOption;Z)V
    .locals 5

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/keyguard/servicebox/utils/SecTransition;->mSourceRootViewList:Ljava/util/ArrayList;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/android/keyguard/servicebox/utils/SecTransition;->mSourceRootViewParamsMap:Ljava/util/HashMap;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/android/keyguard/servicebox/utils/SecTransition;->mTransitionSourceViewNameMap:Ljava/util/Map;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/android/keyguard/servicebox/utils/SecTransition;->mTransitionSourceViewParamsMap:Ljava/util/HashMap;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/keyguard/servicebox/utils/SecTransition;->mTransitionNameWhiteList:Ljava/util/ArrayList;

    iput-boolean v1, p0, Lcom/android/keyguard/servicebox/utils/SecTransition;->mWithFade:Z

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/android/keyguard/servicebox/utils/SecTransition;->mSubOptionMap:Ljava/util/HashMap;

    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v3, p0, Lcom/android/keyguard/servicebox/utils/SecTransition;->mAnimations:Landroid/animation/AnimatorSet;

    iput-boolean p3, p0, Lcom/android/keyguard/servicebox/utils/SecTransition;->mWithFade:Z

    iput-object p1, p0, Lcom/android/keyguard/servicebox/utils/SecTransition;->mContainer:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/android/keyguard/servicebox/utils/SecTransition;->mContainer:Landroid/view/ViewGroup;

    if-nez v3, :cond_0

    return-void

    :cond_0
    iput-object p2, p0, Lcom/android/keyguard/servicebox/utils/SecTransition;->mGlobalOption:Lcom/android/keyguard/servicebox/utils/SecTransitionOption;

    iget-object v3, p0, Lcom/android/keyguard/servicebox/utils/SecTransition;->mGlobalOption:Lcom/android/keyguard/servicebox/utils/SecTransitionOption;

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/keyguard/servicebox/utils/SecTransition;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getLayoutDirection()I

    move-result v3

    if-ne v3, v1, :cond_4

    :goto_0
    invoke-static {v1}, Lcom/android/keyguard/servicebox/utils/SecTransitionOption;->generateDefaultOption(Z)Lcom/android/keyguard/servicebox/utils/SecTransitionOption;

    move-result-object v3

    iput-object v3, p0, Lcom/android/keyguard/servicebox/utils/SecTransition;->mGlobalOption:Lcom/android/keyguard/servicebox/utils/SecTransitionOption;

    :cond_1
    iget-boolean v3, p0, Lcom/android/keyguard/servicebox/utils/SecTransition;->mWithFade:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/keyguard/servicebox/utils/SecTransition;->mGlobalOption:Lcom/android/keyguard/servicebox/utils/SecTransitionOption;

    iget-object v4, p0, Lcom/android/keyguard/servicebox/utils/SecTransition;->mGlobalOption:Lcom/android/keyguard/servicebox/utils/SecTransitionOption;

    invoke-virtual {v4}, Lcom/android/keyguard/servicebox/utils/SecTransitionOption;->getTransitionType()I

    move-result v4

    or-int/lit8 v4, v4, 0x4

    invoke-virtual {v3, v4}, Lcom/android/keyguard/servicebox/utils/SecTransitionOption;->setTransitionType(I)Lcom/android/keyguard/servicebox/utils/SecTransitionOption;

    :cond_2
    const/4 v0, 0x0

    :goto_1
    iget-object v3, p0, Lcom/android/keyguard/servicebox/utils/SecTransition;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_5

    iget-object v3, p0, Lcom/android/keyguard/servicebox/utils/SecTransition;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/keyguard/servicebox/utils/SecTransition;->searchTransitionName(Landroid/view/View;)V

    invoke-virtual {v2}, Landroid/view/View;->getTransitionName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/keyguard/servicebox/utils/SecTransition;->mSourceRootViewParamsMap:Ljava/util/HashMap;

    new-instance v4, Lcom/android/keyguard/servicebox/utils/SecTransitionViewParams;

    invoke-direct {v4, v2}, Lcom/android/keyguard/servicebox/utils/SecTransitionViewParams;-><init>(Landroid/view/View;)V

    invoke-virtual {v3, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    iget-object v3, p0, Lcom/android/keyguard/servicebox/utils/SecTransition;->mSourceRootViewList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    goto :goto_0

    :cond_5
    return-void
.end method

.method private addGlobalAlphaAnimation()V
    .locals 9

    const/4 v6, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    iget-object v4, p0, Lcom/android/keyguard/servicebox/utils/SecTransition;->mSourceRootViewList:Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    sget-object v4, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v5, v6, [F

    fill-array-data v5, :array_0

    invoke-static {v1, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iget-object v4, p0, Lcom/android/keyguard/servicebox/utils/SecTransition;->mGlobalOption:Lcom/android/keyguard/servicebox/utils/SecTransitionOption;

    invoke-virtual {v4}, Lcom/android/keyguard/servicebox/utils/SecTransitionOption;->getDuration()I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v4, p0, Lcom/android/keyguard/servicebox/utils/SecTransition;->mAnimations:Landroid/animation/AnimatorSet;

    new-array v5, v8, [Landroid/animation/Animator;

    aput-object v0, v5, v7

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lcom/android/keyguard/servicebox/utils/SecTransition;->mTargetRootView:Landroid/view/View;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setAlpha(F)V

    iget-object v4, p0, Lcom/android/keyguard/servicebox/utils/SecTransition;->mTargetRootView:Landroid/view/View;

    sget-object v5, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v6, v6, [F

    fill-array-data v6, :array_1

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    iget-object v4, p0, Lcom/android/keyguard/servicebox/utils/SecTransition;->mGlobalOption:Lcom/android/keyguard/servicebox/utils/SecTransitionOption;

    invoke-virtual {v4}, Lcom/android/keyguard/servicebox/utils/SecTransitionOption;->getDuration()I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v4, p0, Lcom/android/keyguard/servicebox/utils/SecTransition;->mAnimations:Landroid/animation/AnimatorSet;

    new-array v5, v8, [Landroid/animation/Animator;

    aput-object v3, v5, v7

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private addMoveAnimation(Landroid/view/View;Landroid/view/View;Lcom/android/keyguard/servicebox/utils/SecTransitionViewParams;Lcom/android/keyguard/servicebox/utils/SecTransitionOption;)V
    .locals 12

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    return-void

    :cond_1
    if-eqz p4, :cond_0

    const/4 v8, 0x2

    new-array v6, v8, [I

    const/4 v8, 0x2

    new-array v5, v8, [I

    invoke-virtual {p1, v5}, Landroid/view/View;->getLocationOnScreen([I)V

    if-nez p3, :cond_2

    new-instance p3, Lcom/android/keyguard/servicebox/utils/SecTransitionViewParams;

    invoke-direct {p3, p1}, Lcom/android/keyguard/servicebox/utils/SecTransitionViewParams;-><init>(Landroid/view/View;)V

    :cond_2
    iget v8, p3, Lcom/android/keyguard/servicebox/utils/SecTransitionViewParams;->locationOnScreenX:F

    float-to-int v8, v8

    const/4 v9, 0x0

    aput v8, v6, v9

    iget v8, p3, Lcom/android/keyguard/servicebox/utils/SecTransitionViewParams;->locationOnScreenY:F

    float-to-int v8, v8

    const/4 v9, 0x1

    aput v8, v6, v9

    const/4 v8, 0x2

    new-array v7, v8, [I

    invoke-virtual {p2, v7}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v8, 0x2

    new-array v3, v8, [I

    invoke-virtual/range {p4 .. p4}, Lcom/android/keyguard/servicebox/utils/SecTransitionOption;->getMovePivot()I

    move-result v8

    and-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_3

    const/4 v8, 0x0

    aget v8, v7, v8

    const/4 v9, 0x0

    aget v9, v6, v9

    sub-int/2addr v8, v9

    const/4 v9, 0x0

    aput v8, v3, v9

    :goto_0
    invoke-virtual/range {p4 .. p4}, Lcom/android/keyguard/servicebox/utils/SecTransitionOption;->getMovePivot()I

    move-result v8

    and-int/lit8 v8, v8, 0x8

    if-eqz v8, :cond_5

    const/4 v8, 0x1

    aget v8, v7, v8

    const/4 v9, 0x1

    aget v9, v6, v9

    sub-int/2addr v8, v9

    const/4 v9, 0x1

    aput v8, v3, v9

    :goto_1
    const/4 v8, 0x2

    new-array v4, v8, [I

    const/4 v8, 0x0

    aget v8, v6, v8

    const/4 v9, 0x0

    aget v9, v5, v9

    sub-int/2addr v8, v9

    const/4 v9, 0x0

    aput v8, v4, v9

    const/4 v8, 0x1

    aget v8, v6, v8

    const/4 v9, 0x1

    aget v9, v5, v9

    sub-int/2addr v8, v9

    const/4 v9, 0x1

    aput v8, v4, v9

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sget-object v8, Landroid/view/View;->X:Landroid/util/Property;

    const/4 v9, 0x2

    new-array v9, v9, [F

    iget v10, p3, Lcom/android/keyguard/servicebox/utils/SecTransitionViewParams;->x:F

    const/4 v11, 0x0

    aget v11, v4, v11

    int-to-float v11, v11

    add-float/2addr v10, v11

    const/4 v11, 0x0

    aput v10, v9, v11

    iget v10, p3, Lcom/android/keyguard/servicebox/utils/SecTransitionViewParams;->x:F

    const/4 v11, 0x0

    aget v11, v4, v11

    int-to-float v11, v11

    add-float/2addr v10, v11

    const/4 v11, 0x0

    aget v11, v3, v11

    int-to-float v11, v11

    add-float/2addr v10, v11

    const/4 v11, 0x1

    aput v10, v9, v11

    invoke-static {p1, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v8, Landroid/view/View;->X:Landroid/util/Property;

    const/4 v9, 0x2

    new-array v9, v9, [F

    invoke-virtual {p2}, Landroid/view/View;->getX()F

    move-result v10

    const/4 v11, 0x0

    aget v11, v3, v11

    int-to-float v11, v11

    sub-float/2addr v10, v11

    const/4 v11, 0x0

    aput v10, v9, v11

    invoke-virtual {p2}, Landroid/view/View;->getX()F

    move-result v10

    const/4 v11, 0x1

    aput v10, v9, v11

    invoke-static {p2, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v8, Landroid/view/View;->Y:Landroid/util/Property;

    const/4 v9, 0x2

    new-array v9, v9, [F

    iget v10, p3, Lcom/android/keyguard/servicebox/utils/SecTransitionViewParams;->y:F

    const/4 v11, 0x1

    aget v11, v4, v11

    int-to-float v11, v11

    add-float/2addr v10, v11

    const/4 v11, 0x0

    aput v10, v9, v11

    iget v10, p3, Lcom/android/keyguard/servicebox/utils/SecTransitionViewParams;->y:F

    const/4 v11, 0x1

    aget v11, v4, v11

    int-to-float v11, v11

    add-float/2addr v10, v11

    const/4 v11, 0x1

    aget v11, v3, v11

    int-to-float v11, v11

    add-float/2addr v10, v11

    const/4 v11, 0x1

    aput v10, v9, v11

    invoke-static {p1, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v8, Landroid/view/View;->Y:Landroid/util/Property;

    const/4 v9, 0x2

    new-array v9, v9, [F

    invoke-virtual {p2}, Landroid/view/View;->getY()F

    move-result v10

    const/4 v11, 0x1

    aget v11, v3, v11

    int-to-float v11, v11

    sub-float/2addr v10, v11

    const/4 v11, 0x0

    aput v10, v9, v11

    invoke-virtual {p2}, Landroid/view/View;->getY()F

    move-result v10

    const/4 v11, 0x1

    aput v10, v9, v11

    invoke-static {p2, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/ObjectAnimator;

    invoke-virtual/range {p4 .. p4}, Lcom/android/keyguard/servicebox/utils/SecTransitionOption;->getDuration()I

    move-result v8

    int-to-long v8, v8

    invoke-virtual {v0, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual/range {p4 .. p4}, Lcom/android/keyguard/servicebox/utils/SecTransitionOption;->getStartDelay()I

    move-result v8

    int-to-long v8, v8

    invoke-virtual {v0, v8, v9}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    iget-object v8, p0, Lcom/android/keyguard/servicebox/utils/SecTransition;->mAnimations:Landroid/animation/AnimatorSet;

    const/4 v9, 0x1

    new-array v9, v9, [Landroid/animation/Animator;

    const/4 v10, 0x0

    aput-object v0, v9, v10

    invoke-virtual {v8, v9}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_2

    :cond_3
    invoke-virtual/range {p4 .. p4}, Lcom/android/keyguard/servicebox/utils/SecTransitionOption;->getMovePivot()I

    move-result v8

    and-int/lit8 v8, v8, 0x2

    if-eqz v8, :cond_4

    const/4 v8, 0x0

    aget v8, v7, v8

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v9

    add-int/2addr v8, v9

    const/4 v9, 0x0

    aget v9, v6, v9

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v10

    add-int/2addr v9, v10

    sub-int/2addr v8, v9

    const/4 v9, 0x0

    aput v8, v3, v9

    goto/16 :goto_0

    :cond_4
    const/4 v8, 0x0

    aget v8, v7, v8

    int-to-float v8, v8

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v9

    int-to-float v9, v9

    const/high16 v10, 0x3f000000    # 0.5f

    mul-float/2addr v9, v10

    add-float/2addr v8, v9

    float-to-int v8, v8

    const/4 v9, 0x0

    aget v9, v6, v9

    int-to-float v9, v9

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v10

    int-to-float v10, v10

    const/high16 v11, 0x3f000000    # 0.5f

    mul-float/2addr v10, v11

    add-float/2addr v9, v10

    float-to-int v9, v9

    sub-int/2addr v8, v9

    const/4 v9, 0x0

    aput v8, v3, v9

    goto/16 :goto_0

    :cond_5
    invoke-virtual/range {p4 .. p4}, Lcom/android/keyguard/servicebox/utils/SecTransitionOption;->getMovePivot()I

    move-result v8

    and-int/lit8 v8, v8, 0x10

    if-eqz v8, :cond_6

    const/4 v8, 0x1

    aget v8, v7, v8

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v9

    add-int/2addr v8, v9

    const/4 v9, 0x1

    aget v9, v6, v9

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v10

    add-int/2addr v9, v10

    sub-int/2addr v8, v9

    const/4 v9, 0x1

    aput v8, v3, v9

    goto/16 :goto_1

    :cond_6
    const/4 v8, 0x1

    aget v8, v7, v8

    int-to-float v8, v8

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v9

    int-to-float v9, v9

    const/high16 v10, 0x3f000000    # 0.5f

    mul-float/2addr v9, v10

    add-float/2addr v8, v9

    float-to-int v8, v8

    const/4 v9, 0x1

    aget v9, v6, v9

    int-to-float v9, v9

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v10

    int-to-float v10, v10

    const/high16 v11, 0x3f000000    # 0.5f

    mul-float/2addr v10, v11

    add-float/2addr v9, v10

    float-to-int v9, v9

    sub-int/2addr v8, v9

    const/4 v9, 0x1

    aput v8, v3, v9

    goto/16 :goto_1

    :cond_7
    return-void
.end method

.method private addScaleAnimation(Landroid/view/View;Landroid/view/View;Lcom/android/keyguard/servicebox/utils/SecTransitionViewParams;Lcom/android/keyguard/servicebox/utils/SecTransitionOption;)V
    .locals 11

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    return-void

    :cond_1
    if-eqz p4, :cond_0

    if-nez p3, :cond_2

    new-instance p3, Lcom/android/keyguard/servicebox/utils/SecTransitionViewParams;

    invoke-direct {p3, p1}, Lcom/android/keyguard/servicebox/utils/SecTransitionViewParams;-><init>(Landroid/view/View;)V

    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v7

    int-to-float v7, v7

    iget v8, p3, Lcom/android/keyguard/servicebox/utils/SecTransitionViewParams;->w:F

    div-float v5, v7, v8

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v7

    int-to-float v7, v7

    iget v8, p3, Lcom/android/keyguard/servicebox/utils/SecTransitionViewParams;->h:F

    div-float v6, v7, v8

    const/high16 v7, 0x3f800000    # 1.0f

    div-float v3, v7, v5

    const/high16 v7, 0x3f800000    # 1.0f

    div-float v4, v7, v6

    invoke-virtual {p4}, Lcom/android/keyguard/servicebox/utils/SecTransitionOption;->getScalePivot()I

    move-result v7

    and-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_3

    const/4 v7, 0x0

    invoke-virtual {p1, v7}, Landroid/view/View;->setPivotX(F)V

    const/4 v7, 0x0

    invoke-virtual {p2, v7}, Landroid/view/View;->setPivotX(F)V

    :goto_0
    invoke-virtual {p4}, Lcom/android/keyguard/servicebox/utils/SecTransitionOption;->getScalePivot()I

    move-result v7

    and-int/lit8 v7, v7, 0x8

    if-eqz v7, :cond_5

    const/4 v7, 0x0

    invoke-virtual {p1, v7}, Landroid/view/View;->setPivotY(F)V

    const/4 v7, 0x0

    invoke-virtual {p2, v7}, Landroid/view/View;->setPivotY(F)V

    :goto_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sget-object v7, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    const/4 v8, 0x2

    new-array v8, v8, [F

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    aput v9, v8, v10

    const/4 v9, 0x1

    aput v5, v8, v9

    invoke-static {p1, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v7, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    const/4 v8, 0x2

    new-array v8, v8, [F

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    aput v9, v8, v10

    const/4 v9, 0x1

    aput v6, v8, v9

    invoke-static {p1, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v7, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    const/4 v8, 0x2

    new-array v8, v8, [F

    const/4 v9, 0x0

    aput v3, v8, v9

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v10, 0x1

    aput v9, v8, v10

    invoke-static {p2, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v7, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    const/4 v8, 0x2

    new-array v8, v8, [F

    const/4 v9, 0x0

    aput v4, v8, v9

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v10, 0x1

    aput v9, v8, v10

    invoke-static {p2, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/ObjectAnimator;

    invoke-virtual {p4}, Lcom/android/keyguard/servicebox/utils/SecTransitionOption;->getDuration()I

    move-result v7

    int-to-long v8, v7

    invoke-virtual {v0, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {p4}, Lcom/android/keyguard/servicebox/utils/SecTransitionOption;->getStartDelay()I

    move-result v7

    int-to-long v8, v7

    invoke-virtual {v0, v8, v9}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    iget-object v7, p0, Lcom/android/keyguard/servicebox/utils/SecTransition;->mAnimations:Landroid/animation/AnimatorSet;

    const/4 v8, 0x1

    new-array v8, v8, [Landroid/animation/Animator;

    const/4 v9, 0x0

    aput-object v0, v8, v9

    invoke-virtual {v7, v8}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_2

    :cond_3
    invoke-virtual {p4}, Lcom/android/keyguard/servicebox/utils/SecTransitionOption;->getScalePivot()I

    move-result v7

    and-int/lit8 v7, v7, 0x2

    if-eqz v7, :cond_4

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {p1, v7}, Landroid/view/View;->setPivotX(F)V

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {p2, v7}, Landroid/view/View;->setPivotX(F)V

    goto/16 :goto_0

    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v7

    int-to-float v7, v7

    const/high16 v8, 0x3f000000    # 0.5f

    mul-float/2addr v7, v8

    invoke-virtual {p1, v7}, Landroid/view/View;->setPivotX(F)V

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v7

    int-to-float v7, v7

    const/high16 v8, 0x3f000000    # 0.5f

    mul-float/2addr v7, v8

    invoke-virtual {p2, v7}, Landroid/view/View;->setPivotX(F)V

    goto/16 :goto_0

    :cond_5
    invoke-virtual {p4}, Lcom/android/keyguard/servicebox/utils/SecTransitionOption;->getScalePivot()I

    move-result v7

    and-int/lit8 v7, v7, 0x10

    if-eqz v7, :cond_6

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {p1, v7}, Landroid/view/View;->setPivotY(F)V

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {p2, v7}, Landroid/view/View;->setPivotY(F)V

    goto/16 :goto_1

    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v7

    int-to-float v7, v7

    const/high16 v8, 0x3f000000    # 0.5f

    mul-float/2addr v7, v8

    invoke-virtual {p1, v7}, Landroid/view/View;->setPivotY(F)V

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v7

    int-to-float v7, v7

    const/high16 v8, 0x3f000000    # 0.5f

    mul-float/2addr v7, v8

    invoke-virtual {p2, v7}, Landroid/view/View;->setPivotY(F)V

    goto/16 :goto_1

    :cond_7
    return-void
.end method

.method private isInWhiteList(Ljava/lang/String;)Z
    .locals 4

    const/4 v3, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v3

    :cond_0
    iget-object v2, p0, Lcom/android/keyguard/servicebox/utils/SecTransition;->mTransitionNameWhiteList:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    return v2

    :cond_2
    return v3
.end method

.method private matchingTransitionName(Landroid/view/View;)V
    .locals 6

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTransitionName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-direct {p0, v4}, Lcom/android/keyguard/servicebox/utils/SecTransition;->isInWhiteList(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/keyguard/servicebox/utils/SecTransition;->mTransitionSourceViewNameMap:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-direct {p0, v3, p1}, Lcom/android/keyguard/servicebox/utils/SecTransition;->setAnimations(Landroid/view/View;Landroid/view/View;)V

    :cond_1
    instance-of v5, p1, Landroid/view/ViewGroup;

    if-nez v5, :cond_2

    return-void

    :cond_2
    move-object v5, p1

    check-cast v5, Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    move-object v5, p1

    check-cast v5, Landroid/view/ViewGroup;

    invoke-virtual {v5, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/keyguard/servicebox/utils/SecTransition;->matchingTransitionName(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private searchTransitionName(Landroid/view/View;)V
    .locals 6

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTransitionName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/android/keyguard/servicebox/utils/SecTransition;->mTransitionNameWhiteList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lcom/android/keyguard/servicebox/utils/SecTransition;->mTransitionSourceViewNameMap:Ljava/util/Map;

    invoke-interface {v4, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/keyguard/servicebox/utils/SecTransition;->mTransitionSourceViewParamsMap:Ljava/util/HashMap;

    new-instance v5, Lcom/android/keyguard/servicebox/utils/SecTransitionViewParams;

    invoke-direct {v5, p1}, Lcom/android/keyguard/servicebox/utils/SecTransitionViewParams;-><init>(Landroid/view/View;)V

    invoke-virtual {v4, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    instance-of v4, p1, Landroid/view/ViewGroup;

    if-nez v4, :cond_2

    return-void

    :cond_2
    move-object v4, p1

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    move-object v4, p1

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v4, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/keyguard/servicebox/utils/SecTransition;->searchTransitionName(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private setAnimations(Landroid/view/View;Landroid/view/View;)V
    .locals 4

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/keyguard/servicebox/utils/SecTransition;->mTransitionSourceViewParamsMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/view/View;->getTransitionName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/servicebox/utils/SecTransitionViewParams;

    iget-object v2, p0, Lcom/android/keyguard/servicebox/utils/SecTransition;->mSubOptionMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/view/View;->getTransitionName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/servicebox/utils/SecTransitionOption;

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/keyguard/servicebox/utils/SecTransition;->mGlobalOption:Lcom/android/keyguard/servicebox/utils/SecTransitionOption;

    :goto_0
    invoke-virtual {v0}, Lcom/android/keyguard/servicebox/utils/SecTransitionOption;->isMoveEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-direct {p0, p1, p2, v1, v0}, Lcom/android/keyguard/servicebox/utils/SecTransition;->addMoveAnimation(Landroid/view/View;Landroid/view/View;Lcom/android/keyguard/servicebox/utils/SecTransitionViewParams;Lcom/android/keyguard/servicebox/utils/SecTransitionOption;)V

    :cond_2
    invoke-virtual {v0}, Lcom/android/keyguard/servicebox/utils/SecTransitionOption;->isScaleEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-direct {p0, p1, p2, v1, v0}, Lcom/android/keyguard/servicebox/utils/SecTransition;->addScaleAnimation(Landroid/view/View;Landroid/view/View;Lcom/android/keyguard/servicebox/utils/SecTransitionViewParams;Lcom/android/keyguard/servicebox/utils/SecTransitionOption;)V

    :cond_3
    return-void

    :cond_4
    iget-object v2, p0, Lcom/android/keyguard/servicebox/utils/SecTransition;->mGlobalOption:Lcom/android/keyguard/servicebox/utils/SecTransitionOption;

    invoke-static {v2, v0}, Lcom/android/keyguard/servicebox/utils/SecTransitionOption;->combineOptions(Lcom/android/keyguard/servicebox/utils/SecTransitionOption;Lcom/android/keyguard/servicebox/utils/SecTransitionOption;)Lcom/android/keyguard/servicebox/utils/SecTransitionOption;

    move-result-object v0

    goto :goto_0
.end method

.method private setClip(Landroid/view/View;Z)V
    .locals 1

    instance-of v0, p1, Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    return-void

    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p2}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    return-void
.end method


# virtual methods
.method public go(Landroid/view/View;Landroid/animation/Animator$AnimatorListener;)V
    .locals 5

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/android/keyguard/servicebox/utils/SecTransition;->mContainer:Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    if-nez p1, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-boolean v2, p0, Lcom/android/keyguard/servicebox/utils/SecTransition;->mWithFade:Z

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/keyguard/servicebox/utils/SecTransition;->mSourceRootViewList:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_2
    iput-object p1, p0, Lcom/android/keyguard/servicebox/utils/SecTransition;->mTargetRootView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/keyguard/servicebox/utils/SecTransition;->mContainer:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/android/keyguard/servicebox/utils/SecTransition;->mTargetRootView:Landroid/view/View;

    invoke-virtual {v2, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    iget-object v2, p0, Lcom/android/keyguard/servicebox/utils/SecTransition;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {p0, v2, v4}, Lcom/android/keyguard/servicebox/utils/SecTransition;->setClipOnAll(Landroid/view/View;Z)V

    iget-object v2, p0, Lcom/android/keyguard/servicebox/utils/SecTransition;->mTargetRootView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    new-instance v3, Lcom/android/keyguard/servicebox/utils/SecTransition$1;

    invoke-direct {v3, p0, p2}, Lcom/android/keyguard/servicebox/utils/SecTransition$1;-><init>(Lcom/android/keyguard/servicebox/utils/SecTransition;Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return-void
.end method

.method public setClipOnAll(Landroid/view/View;Z)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/keyguard/servicebox/utils/SecTransition;->setClipOnParents(Landroid/view/View;Z)V

    invoke-virtual {p0, p1, p2}, Lcom/android/keyguard/servicebox/utils/SecTransition;->setClipOnChildren(Landroid/view/View;Z)V

    return-void
.end method

.method public setClipOnChildren(Landroid/view/View;Z)V
    .locals 3

    if-eqz p1, :cond_0

    instance-of v2, p1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/servicebox/utils/SecTransition;->setClip(Landroid/view/View;Z)V

    move-object v2, p1

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    move-object v2, p1

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2, p2}, Lcom/android/keyguard/servicebox/utils/SecTransition;->setClipOnChildren(Landroid/view/View;Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    return-void
.end method

.method public setClipOnParents(Landroid/view/View;Z)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/servicebox/utils/SecTransition;->setClip(Landroid/view/View;Z)V

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p0, v0, p2}, Lcom/android/keyguard/servicebox/utils/SecTransition;->setClipOnParents(Landroid/view/View;Z)V

    return-void

    :cond_1
    return-void
.end method
