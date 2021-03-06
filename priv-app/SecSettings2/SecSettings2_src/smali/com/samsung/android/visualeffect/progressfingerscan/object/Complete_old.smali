.class public Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete_old;
.super Landroid/widget/FrameLayout;
.source "Complete_old.java"


# instance fields
.field private final ANIMATION_DELAY:J

.field private final ANIMATION_DURATION:J

.field private final SHADOW_ANIMATION_DURATION:J

.field private final TAG:Ljava/lang/String;

.field private completeColor:I

.field private completeResID:I

.field private completeShadowResID:I

.field private completeViewOld:Lcom/samsung/android/visualeffect/progressfingerscan/object/CompleteView_old;

.field private completeViewOnAnimationValue:F

.field private completeViewOnAnimator:Landroid/animation/ValueAnimator;

.field private context:Landroid/content/Context;

.field private drawingHeight:I

.field private drawingWidth:I

.field private handler:Landroid/os/Handler;

.field private height:I

.field private isOn:Z

.field private isViewAdded:Z

.field private shadow:Landroid/widget/ImageView;

.field private startX:I

.field private startY:I

.field private whiteFinger:Landroid/widget/ImageView;

.field private width:I


# direct methods
.method public constructor <init>(Landroid/content/Context;IIIIIIIII)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete_old;->TAG:Ljava/lang/String;

    const-wide/16 v0, 0x29a

    iput-wide v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete_old;->ANIMATION_DURATION:J

    const-wide/16 v0, 0x29a

    iput-wide v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete_old;->SHADOW_ANIMATION_DURATION:J

    const-wide/16 v0, 0x1f4

    iput-wide v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete_old;->ANIMATION_DELAY:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete_old;->isOn:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete_old;->isViewAdded:Z

    iput-object p1, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete_old;->context:Landroid/content/Context;

    iput p2, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete_old;->width:I

    iput p3, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete_old;->height:I

    iput p4, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete_old;->startX:I

    iput p5, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete_old;->startY:I

    iput p6, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete_old;->drawingWidth:I

    iput p7, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete_old;->drawingHeight:I

    iput p8, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete_old;->completeColor:I

    iput p9, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete_old;->completeResID:I

    iput p10, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete_old;->completeShadowResID:I

    new-instance v0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete_old$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete_old$1;-><init>(Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete_old;)V

    iput-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete_old;->handler:Landroid/os/Handler;

    invoke-direct {p0}, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete_old;->setLayout()V

    invoke-direct {p0}, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete_old;->setAnimator()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete_old;->setLayoutDirection(I)V

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete_old;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete_old;->completeOnDelayed()V

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete_old;)F
    .locals 1

    iget v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete_old;->completeViewOnAnimationValue:F

    return v0
.end method

.method static synthetic access$102(Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete_old;F)F
    .locals 0

    iput p1, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete_old;->completeViewOnAnimationValue:F

    return p1
.end method

.method static synthetic access$200(Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete_old;)Lcom/samsung/android/visualeffect/progressfingerscan/object/CompleteView_old;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete_old;->completeViewOld:Lcom/samsung/android/visualeffect/progressfingerscan/object/CompleteView_old;

    return-object v0
.end method

.method private completeOnDelayed()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete_old;->completeViewOnAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete_old;->completeViewOnAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete_old;->isViewAdded:Z

    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete_old;->shadow:Landroid/widget/ImageView;

    iget v1, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete_old;->drawingWidth:I

    iget v2, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete_old;->drawingHeight:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete_old;->addView(Landroid/view/View;II)V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete_old;->whiteFinger:Landroid/widget/ImageView;

    iget v1, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete_old;->drawingWidth:I

    iget v2, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete_old;->drawingHeight:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete_old;->addView(Landroid/view/View;II)V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete_old;->shadow:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete_old;->shadow:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete_old;->shadow:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x29a

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/interpolator/SineInOut33;

    invoke-direct {v1}, Landroid/view/animation/interpolator/SineInOut33;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method private setAnimator()V
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput v2, v0, v1

    const/4 v1, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete_old;->completeViewOnAnimator:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete_old;->completeViewOnAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/interpolator/QuintEaseOut;

    invoke-direct {v1}, Landroid/view/animation/interpolator/QuintEaseOut;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete_old;->completeViewOnAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x29a

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete_old;->completeViewOnAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete_old$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete_old$2;-><init>(Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete_old;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void
.end method

.method private setLayout()V
    .locals 8

    const/4 v7, 0x0

    new-instance v2, Lcom/samsung/android/visualeffect/progressfingerscan/object/CompleteView_old;

    iget-object v3, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete_old;->context:Landroid/content/Context;

    iget v4, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete_old;->width:I

    iget v5, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete_old;->height:I

    iget v6, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete_old;->completeColor:I

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/samsung/android/visualeffect/progressfingerscan/object/CompleteView_old;-><init>(Landroid/content/Context;III)V

    iput-object v2, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete_old;->completeViewOld:Lcom/samsung/android/visualeffect/progressfingerscan/object/CompleteView_old;

    iget-object v2, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete_old;->completeViewOld:Lcom/samsung/android/visualeffect/progressfingerscan/object/CompleteView_old;

    iget v3, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete_old;->width:I

    iget v4, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete_old;->height:I

    invoke-virtual {p0, v2, v3, v4}, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete_old;->addView(Landroid/view/View;II)V

    new-instance v2, Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete_old;->context:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete_old;->whiteFinger:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete_old;->whiteFinger:Landroid/widget/ImageView;

    iget v3, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete_old;->completeResID:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v2, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete_old;->whiteFinger:Landroid/widget/ImageView;

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setLayoutDirection(I)V

    iget-object v2, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete_old;->whiteFinger:Landroid/widget/ImageView;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v2, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete_old;->whiteFinger:Landroid/widget/ImageView;

    iget v3, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete_old;->startX:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setX(F)V

    iget-object v2, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete_old;->whiteFinger:Landroid/widget/ImageView;

    iget v3, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete_old;->startY:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setY(F)V

    new-instance v2, Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete_old;->context:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete_old;->shadow:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete_old;->shadow:Landroid/widget/ImageView;

    iget v3, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete_old;->completeShadowResID:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v2, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete_old;->shadow:Landroid/widget/ImageView;

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setLayoutDirection(I)V

    iget-object v2, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete_old;->shadow:Landroid/widget/ImageView;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v2, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete_old;->shadow:Landroid/widget/ImageView;

    iget v3, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete_old;->startX:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setX(F)V

    iget-object v2, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete_old;->shadow:Landroid/widget/ImageView;

    iget v3, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete_old;->startY:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setY(F)V

    iget v2, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete_old;->width:I

    div-int/lit8 v2, v2, 0x2

    iget v3, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete_old;->startX:I

    sub-int/2addr v2, v3

    int-to-float v0, v2

    iget v2, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete_old;->height:I

    div-int/lit8 v2, v2, 0x2

    iget v3, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete_old;->startY:I

    sub-int/2addr v2, v3

    int-to-float v1, v2

    iget-object v2, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete_old;->shadow:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setPivotX(F)V

    iget-object v2, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete_old;->shadow:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setPivotY(F)V

    return-void
.end method


# virtual methods
.method public completeOff()V
    .locals 3

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete_old;->isOn:Z

    if-eqz v0, :cond_0

    iput-boolean v2, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete_old;->isOn:Z

    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete_old;->completeViewOnAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete_old;->completeViewOld:Lcom/samsung/android/visualeffect/progressfingerscan/object/CompleteView_old;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/visualeffect/progressfingerscan/object/CompleteView_old;->setRatio(F)V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete_old;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-boolean v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete_old;->isViewAdded:Z

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_0
    return-void

    :cond_1
    iput-boolean v2, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete_old;->isViewAdded:Z

    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete_old;->shadow:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete_old;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete_old;->whiteFinger:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete_old;->removeView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public completeOn()V
    .locals 4

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete_old;->isOn:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete_old;->isOn:Z

    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete_old;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete_old;->handler:Landroid/os/Handler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void

    :cond_0
    return-void
.end method
