.class public Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;
.super Landroid/view/View;
.source "GalaxyViewRotate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate$ParticleModel;
    }
.end annotation


# instance fields
.field private mAlphaLongProgress:F

.field private mAlphaProgress:F

.field private mCurrentXDegree:F

.field private mCurrentYDegree:F

.field private mDataArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate$ParticleModel;",
            ">;"
        }
    .end annotation
.end field

.field private mDxDegree:F

.field private mEasing:F

.field private mEasingHelper:Lcom/altamirasoft/easing_helper/EasingHelper;

.field private mHeight:F

.field private mIsChangingOption:Z

.field private mListDataArray:[Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate$ParticleModel;

.field private mMainAlpha:F

.field private mMaxDegree:F

.field private mMinDegree:F

.field private mMinDx:F

.field private mPaint:Landroid/graphics/Paint;

.field private mPlusDX:F

.field private mPlusValueX:F

.field private mScaleX:F

.field private mScaleY:F

.field private mWidth:F


# direct methods
.method static synthetic -set0(Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;F)F
    .locals 0

    iput p1, p0, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;->mAlphaLongProgress:F

    return p1
.end method

.method static synthetic -set1(Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;F)F
    .locals 0

    iput p1, p0, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;->mAlphaProgress:F

    return p1
.end method

.method static synthetic -set2(Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;F)F
    .locals 0

    iput p1, p0, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;->mCurrentXDegree:F

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;->invalidateDXObject()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    const/4 v3, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;->mPaint:Landroid/graphics/Paint;

    const v0, 0x40e66666    # 7.2f

    iput v0, p0, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;->mMaxDegree:F

    const/high16 v0, 0x40c00000    # 6.0f

    iput v0, p0, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;->mMinDegree:F

    iget v0, p0, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;->mMinDegree:F

    iput v0, p0, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;->mCurrentXDegree:F

    iput v3, p0, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;->mCurrentYDegree:F

    iget v0, p0, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;->mMaxDegree:F

    iget v1, p0, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;->mMinDegree:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;->mDxDegree:F

    iget v0, p0, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;->mDxDegree:F

    const/high16 v1, 0x42700000    # 60.0f

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iput v0, p0, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;->mEasing:F

    iget v0, p0, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;->mEasing:F

    const v1, 0x3dcccccd    # 0.1f

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;->mMinDx:F

    iput v3, p0, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;->mPlusDX:F

    iput v3, p0, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;->mPlusValueX:F

    iput v2, p0, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;->mScaleX:F

    iput v2, p0, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;->mScaleY:F

    iput v2, p0, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;->mMainAlpha:F

    iput v2, p0, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;->mAlphaProgress:F

    iput v2, p0, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;->mAlphaLongProgress:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;->mIsChangingOption:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;->mDataArray:Ljava/util/ArrayList;

    new-instance v0, Lcom/altamirasoft/easing_helper/EasingHelper;

    invoke-direct {v0}, Lcom/altamirasoft/easing_helper/EasingHelper;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;->mEasingHelper:Lcom/altamirasoft/easing_helper/EasingHelper;

    iget-object v0, p0, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;->mEasingHelper:Lcom/altamirasoft/easing_helper/EasingHelper;

    iget v1, p0, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;->mEasing:F

    invoke-virtual {v0, v1}, Lcom/altamirasoft/easing_helper/EasingHelper;->setEasing(F)Lcom/altamirasoft/easing_helper/EasingHelper;

    move-result-object v0

    iget v1, p0, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;->mMinDx:F

    invoke-virtual {v0, v1}, Lcom/altamirasoft/easing_helper/EasingHelper;->setMinDiffer(F)Lcom/altamirasoft/easing_helper/EasingHelper;

    iget-object v0, p0, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;->mEasingHelper:Lcom/altamirasoft/easing_helper/EasingHelper;

    new-instance v1, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate$1;

    invoke-direct {v1, p0}, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate$1;-><init>(Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;)V

    invoke-virtual {v0, v1}, Lcom/altamirasoft/easing_helper/EasingHelper;->addUpdateListener(Lcom/altamirasoft/easing_helper/EasingUpdateListener;)Lcom/altamirasoft/easing_helper/EasingHelper;

    invoke-virtual {p0}, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;->initStarList()V

    iget-object v0, p0, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;->mPaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-virtual {p0}, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;->beginAlphaAnimation()V

    return-void
.end method

.method private getTargetValue(F)F
    .locals 3

    iget v1, p0, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;->mDxDegree:F

    mul-float/2addr v1, p1

    iget v2, p0, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;->mMinDegree:F

    add-float v0, v1, v2

    iget v1, p0, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;->mMaxDegree:F

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    iget v0, p0, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;->mMaxDegree:F

    :cond_0
    iget v1, p0, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;->mMinDegree:F

    cmpg-float v1, v0, v1

    if-gez v1, :cond_1

    iget v0, p0, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;->mMinDegree:F

    :cond_1
    return v0
.end method

.method private invalidateDXObject()V
    .locals 4

    iget-boolean v2, p0, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;->mIsChangingOption:Z

    if-eqz v2, :cond_0

    return-void

    :cond_0
    iget v2, p0, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;->mPlusValueX:F

    iget v3, p0, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;->mWidth:F

    div-float/2addr v2, v3

    const/high16 v3, 0x43b40000    # 360.0f

    mul-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    double-to-float v2, v2

    iput v2, p0, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;->mPlusDX:F

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;->mDataArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;->mDataArray:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate$ParticleModel;

    invoke-virtual {p0, v0}, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;->getAxisYTargetX(Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate$ParticleModel;)F

    move-result v2

    iput v2, v0, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate$ParticleModel;->yx:F

    invoke-virtual {p0, v0}, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;->getAxisYTargetY(Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate$ParticleModel;)F

    move-result v2

    iput v2, v0, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate$ParticleModel;->yy:F

    invoke-virtual {p0, v0}, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;->getAxisYTargetZ(Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate$ParticleModel;)F

    move-result v2

    iput v2, v0, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate$ParticleModel;->yz:F

    invoke-virtual {p0, v0}, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;->getAxisXTargetX(Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate$ParticleModel;)F

    move-result v2

    iput v2, v0, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate$ParticleModel;->tx:F

    invoke-virtual {p0, v0}, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;->getAxisXTargetY(Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate$ParticleModel;)F

    move-result v2

    iput v2, v0, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate$ParticleModel;->ty:F

    invoke-virtual {p0, v0}, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;->getAxisXTargetZ(Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate$ParticleModel;)F

    move-result v2

    iput v2, v0, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate$ParticleModel;->tz:F

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;->mDataArray:Ljava/util/ArrayList;

    sget-object v3, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate$ParticleModel;->ZIndexComparator:Ljava/util/Comparator;

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method


# virtual methods
.method public accChangeCurrent(F)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;->getTargetValue(F)F

    move-result v0

    iput v0, p0, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;->mCurrentXDegree:F

    iget-object v0, p0, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;->mEasingHelper:Lcom/altamirasoft/easing_helper/EasingHelper;

    iget v1, p0, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;->mCurrentXDegree:F

    invoke-virtual {v0, v1}, Lcom/altamirasoft/easing_helper/EasingHelper;->setCurrentValue(F)Lcom/altamirasoft/easing_helper/EasingHelper;

    invoke-direct {p0}, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;->invalidateDXObject()V

    invoke-virtual {p0}, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;->invalidate()V

    return-void
.end method

.method public accChangeX(F)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;->getTargetValue(F)F

    move-result v0

    iget-object v1, p0, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;->mEasingHelper:Lcom/altamirasoft/easing_helper/EasingHelper;

    invoke-virtual {v1, v0}, Lcom/altamirasoft/easing_helper/EasingHelper;->setTargetValue(F)Lcom/altamirasoft/easing_helper/EasingHelper;

    iget-object v1, p0, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;->mEasingHelper:Lcom/altamirasoft/easing_helper/EasingHelper;

    invoke-virtual {v1}, Lcom/altamirasoft/easing_helper/EasingHelper;->isStarted()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;->mEasingHelper:Lcom/altamirasoft/easing_helper/EasingHelper;

    invoke-virtual {v1}, Lcom/altamirasoft/easing_helper/EasingHelper;->start()V

    :cond_0
    return-void
.end method

.method public beginAlphaAnimation()V
    .locals 6

    const/4 v5, -0x1

    const/4 v4, 0x2

    new-array v2, v4, [F

    fill-array-data v2, :array_0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v2, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate$2;

    invoke-direct {v2, p0}, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate$2;-><init>(Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-wide/16 v2, 0x320

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    invoke-virtual {v0, v5}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    new-array v2, v4, [F

    fill-array-data v2, :array_1

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    new-instance v2, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate$3;

    invoke-direct {v2, p0}, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate$3;-><init>(Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-wide/16 v2, 0x8fc

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    invoke-virtual {v1, v5}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public changeAlpha(F)V
    .locals 0

    iput p1, p0, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;->mMainAlpha:F

    invoke-direct {p0}, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;->invalidateDXObject()V

    invoke-virtual {p0}, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;->invalidate()V

    return-void
.end method

.method public changePlusValue(F)V
    .locals 0

    iput p1, p0, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;->mPlusValueX:F

    invoke-direct {p0}, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;->invalidateDXObject()V

    return-void
.end method

.method public getAxisXTargetX(Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate$ParticleModel;)F
    .locals 1

    iget v0, p1, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate$ParticleModel;->yx:F

    return v0
.end method

.method public getAxisXTargetY(Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate$ParticleModel;)F
    .locals 6

    iget v0, p1, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate$ParticleModel;->yy:F

    float-to-double v0, v0

    iget v2, p0, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;->mCurrentYDegree:F

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    iget v2, p1, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate$ParticleModel;->yz:F

    float-to-double v2, v2

    iget v4, p0, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;->mCurrentYDegree:F

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    sub-double/2addr v0, v2

    double-to-float v0, v0

    return v0
.end method

.method public getAxisXTargetZ(Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate$ParticleModel;)F
    .locals 6

    iget v0, p1, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate$ParticleModel;->yy:F

    float-to-double v0, v0

    iget v2, p0, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;->mCurrentYDegree:F

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    iget v2, p1, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate$ParticleModel;->yz:F

    float-to-double v2, v2

    iget v4, p0, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;->mCurrentYDegree:F

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    double-to-float v0, v0

    return v0
.end method

.method public getAxisYTargetX(Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate$ParticleModel;)F
    .locals 6

    iget v0, p1, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate$ParticleModel;->x:F

    float-to-double v0, v0

    iget v2, p0, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;->mCurrentXDegree:F

    neg-float v2, v2

    iget v3, p0, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;->mPlusDX:F

    add-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    iget v2, p1, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate$ParticleModel;->z:F

    float-to-double v2, v2

    iget v4, p0, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;->mCurrentXDegree:F

    neg-float v4, v4

    iget v5, p0, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;->mPlusDX:F

    add-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    double-to-float v0, v0

    return v0
.end method

.method public getAxisYTargetY(Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate$ParticleModel;)F
    .locals 1

    iget v0, p1, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate$ParticleModel;->y:F

    return v0
.end method

.method public getAxisYTargetZ(Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate$ParticleModel;)F
    .locals 6

    iget v0, p1, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate$ParticleModel;->x:F

    neg-float v0, v0

    float-to-double v0, v0

    iget v2, p0, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;->mCurrentXDegree:F

    neg-float v2, v2

    iget v3, p0, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;->mPlusDX:F

    add-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    iget v2, p1, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate$ParticleModel;->z:F

    float-to-double v2, v2

    iget v4, p0, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;->mCurrentXDegree:F

    neg-float v4, v4

    iget v5, p0, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;->mPlusDX:F

    add-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    double-to-float v0, v0

    return v0
.end method

.method public getRadius(Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate$ParticleModel;)F
    .locals 3

    iget v1, p1, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate$ParticleModel;->tz:F

    const v2, 0x3e99999a    # 0.3f

    add-float/2addr v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float/2addr v1, v2

    const/high16 v2, 0x40800000    # 4.0f

    mul-float v0, v1, v2

    return v0
.end method

.method public getRandValue(F)F
    .locals 4

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    float-to-double v2, p1

    mul-double/2addr v0, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float v2, p1, v2

    float-to-double v2, v2

    sub-double/2addr v0, v2

    double-to-float v0, v0

    return v0
.end method

.method public initStarList()V
    .locals 53

    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;->mIsChangingOption:Z

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;->mDataArray:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    const v4, 0x3e4ccccd    # 0.2f

    const v25, 0x3e99999a    # 0.3f

    const v15, 0x3ea3d70a    # 0.32f

    const v49, 0x3eae147b    # 0.34f

    const v40, 0x3ec28f5c    # 0.38f

    const/high16 v5, 0x40d00000    # 6.5f

    const v16, 0x40d66666    # 6.7f

    const/high16 v26, 0x40e00000    # 7.0f

    const/high16 v52, 0x41000000    # 8.0f

    const v6, 0x4131999a    # 11.1f

    const/high16 v8, 0x3f000000    # 0.5f

    const/high16 v9, 0x44610000    # 900.0f

    const/high16 v48, 0x447a0000    # 1000.0f

    const/4 v10, 0x0

    const/high16 v36, 0x3f800000    # 1.0f

    const/high16 v21, 0x40000000    # 2.0f

    const v11, 0x3e4ccccd    # 0.2f

    const v50, 0x3f19999a    # 0.6f

    const v51, 0x3f99999a    # 1.2f

    const v47, 0x402ccccd    # 2.7f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;->mDataArray:Ljava/util/ArrayList;

    const/16 v3, 0x96

    const/high16 v7, 0x3f800000    # 1.0f

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v11}, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;->makeParticleWithDegree4(Ljava/util/ArrayList;IFFFFFFFF)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;->mDataArray:Ljava/util/ArrayList;

    const/16 v14, 0x96

    const/high16 v18, 0x3f800000    # 1.0f

    move-object/from16 v12, p0

    move/from16 v17, v6

    move/from16 v19, v8

    move/from16 v20, v9

    move/from16 v22, v11

    invoke-virtual/range {v12 .. v22}, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;->makeParticleWithDegree4(Ljava/util/ArrayList;IFFFFFFFF)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;->mDataArray:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    const/16 v24, 0x96

    const/high16 v28, 0x3f800000    # 1.0f

    move-object/from16 v22, p0

    move/from16 v27, v6

    move/from16 v29, v8

    move/from16 v30, v9

    move/from16 v31, v21

    move/from16 v32, v11

    invoke-virtual/range {v22 .. v32}, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;->makeParticleWithDegree4(Ljava/util/ArrayList;IFFFFFFFF)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;->mDataArray:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    const/16 v29, 0x96

    const/high16 v33, 0x3f800000    # 1.0f

    move-object/from16 v27, p0

    move/from16 v30, v4

    move/from16 v31, v5

    move/from16 v32, v6

    move/from16 v34, v8

    move/from16 v35, v9

    move/from16 v37, v11

    invoke-virtual/range {v27 .. v37}, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;->makeParticleWithDegree4(Ljava/util/ArrayList;IFFFFFFFF)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;->mDataArray:Ljava/util/ArrayList;

    const/16 v14, 0x96

    const/high16 v18, 0x3f800000    # 1.0f

    move-object/from16 v12, p0

    move/from16 v17, v6

    move/from16 v19, v8

    move/from16 v20, v9

    move/from16 v22, v11

    invoke-virtual/range {v12 .. v22}, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;->makeParticleWithDegree4(Ljava/util/ArrayList;IFFFFFFFF)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;->mDataArray:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    const/16 v24, 0x96

    const/high16 v28, 0x3f800000    # 1.0f

    move-object/from16 v22, p0

    move/from16 v27, v6

    move/from16 v29, v8

    move/from16 v30, v9

    move/from16 v31, v10

    move/from16 v32, v51

    invoke-virtual/range {v22 .. v32}, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;->makeParticleWithDegree4(Ljava/util/ArrayList;IFFFFFFFF)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;->mDataArray:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    const/16 v29, 0x96

    const/high16 v33, 0x3f800000    # 1.0f

    move-object/from16 v27, p0

    move/from16 v30, v49

    move/from16 v31, v26

    move/from16 v32, v6

    move/from16 v34, v8

    move/from16 v35, v9

    move/from16 v37, v50

    invoke-virtual/range {v27 .. v37}, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;->makeParticleWithDegree4(Ljava/util/ArrayList;IFFFFFFFF)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;->mDataArray:Ljava/util/ArrayList;

    move-object/from16 v38, v0

    const/16 v39, 0x96

    const/high16 v43, 0x3f800000    # 1.0f

    move-object/from16 v37, p0

    move/from16 v41, v26

    move/from16 v42, v6

    move/from16 v44, v8

    move/from16 v45, v9

    move/from16 v46, v10

    invoke-virtual/range {v37 .. v47}, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;->makeParticleWithDegree4(Ljava/util/ArrayList;IFFFFFFFF)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;->mDataArray:Ljava/util/ArrayList;

    move-object/from16 v38, v0

    const/16 v39, 0x96

    const/high16 v43, 0x3f800000    # 1.0f

    move-object/from16 v37, p0

    move/from16 v41, v52

    move/from16 v42, v6

    move/from16 v44, v8

    move/from16 v45, v48

    move/from16 v46, v10

    invoke-virtual/range {v37 .. v47}, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;->makeParticleWithDegree4(Ljava/util/ArrayList;IFFFFFFFF)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;->mDataArray:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;->mDataArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate$ParticleModel;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate$ParticleModel;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;->mListDataArray:[Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate$ParticleModel;

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;->mIsChangingOption:Z

    invoke-direct/range {p0 .. p0}, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;->invalidateDXObject()V

    return-void
.end method

.method public makeParticleWithDegree4(Ljava/util/ArrayList;IFFFFFFFF)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate$ParticleModel;",
            ">;IFFFFFFFF)V"
        }
    .end annotation

    const/4 v9, 0x0

    :goto_0
    move/from16 v0, p2

    if-ge v9, v0, :cond_0

    int-to-float v6, v9

    move/from16 v0, p2

    int-to-float v7, v0

    div-float v10, v6, v7

    neg-float v6, v10

    mul-float v8, v6, p5

    const/high16 v6, 0x3f800000    # 1.0f

    mul-float/2addr v6, v10

    add-float v11, p3, v6

    float-to-double v6, v11

    float-to-double v12, v8

    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    mul-double/2addr v6, v12

    double-to-float v6, v6

    move/from16 v0, p10

    invoke-virtual {p0, v0}, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;->getRandValue(F)F

    move-result v7

    add-float v3, v6, v7

    mul-float v4, p4, v10

    float-to-double v6, v11

    float-to-double v12, v8

    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    mul-double/2addr v6, v12

    double-to-float v6, v6

    move/from16 v0, p10

    invoke-virtual {p0, v0}, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;->getRandValue(F)F

    move-result v7

    add-float v5, v6, v7

    new-instance v2, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate$ParticleModel;

    move/from16 v6, p6

    move/from16 v7, p7

    invoke-direct/range {v2 .. v7}, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate$ParticleModel;-><init>(FFFFF)V

    move/from16 v0, p8

    iput v0, v2, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate$ParticleModel;->expand:F

    const/4 v6, -0x1

    iput v6, v2, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate$ParticleModel;->color:I

    move/from16 v0, p9

    iput v0, v2, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate$ParticleModel;->tension:F

    move/from16 v0, p10

    invoke-virtual {p0, v0}, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;->getRandValue(F)F

    move-result v6

    iput v6, v2, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate$ParticleModel;->xRand:F

    move/from16 v0, p10

    invoke-virtual {p0, v0}, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;->getRandValue(F)F

    move-result v6

    iput v6, v2, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate$ParticleModel;->yRand:F

    move/from16 v0, p10

    invoke-virtual {p0, v0}, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;->getRandValue(F)F

    move-result v6

    iput v6, v2, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate$ParticleModel;->zRand:F

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 12

    const/4 v11, 0x0

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-boolean v7, p0, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;->mIsChangingOption:Z

    if-eqz v7, :cond_0

    return-void

    :cond_0
    iget v7, p0, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;->mWidth:F

    invoke-virtual {p0}, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;->getWidth()I

    move-result v8

    int-to-float v8, v8

    cmpl-float v7, v7, v8

    if-eqz v7, :cond_1

    invoke-virtual {p0}, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;->getWidth()I

    move-result v7

    int-to-float v7, v7

    iput v7, p0, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;->mWidth:F

    :cond_1
    iget v7, p0, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;->mHeight:F

    invoke-virtual {p0}, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;->getHeight()I

    move-result v8

    int-to-float v8, v8

    cmpl-float v7, v7, v8

    if-eqz v7, :cond_2

    invoke-virtual {p0}, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;->getHeight()I

    move-result v7

    int-to-float v7, v7

    iput v7, p0, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;->mHeight:F

    :cond_2
    iget v7, p0, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;->mWidth:F

    cmpl-float v7, v7, v11

    if-eqz v7, :cond_3

    iget v7, p0, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;->mHeight:F

    cmpl-float v7, v7, v11

    if-nez v7, :cond_4

    :cond_3
    return-void

    :cond_4
    iget v7, p0, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;->mCurrentXDegree:F

    iget v8, p0, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;->mPlusDX:F

    sub-float/2addr v7, v8

    const/high16 v8, 0x40000000    # 2.0f

    div-float v3, v7, v8

    iget-object v7, p0, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;->mPaint:Landroid/graphics/Paint;

    const v8, -0xffff01

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v1, 0x0

    :goto_0
    iget-object v7, p0, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;->mDataArray:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v1, v7, :cond_7

    iget-object v7, p0, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;->mDataArray:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate$ParticleModel;

    iget-object v7, p0, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;->mPaint:Landroid/graphics/Paint;

    iget v8, v0, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate$ParticleModel;->color:I

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v7, p0, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;->mPaint:Landroid/graphics/Paint;

    iget v8, v0, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate$ParticleModel;->alpha:F

    const/high16 v9, 0x437f0000    # 255.0f

    mul-float/2addr v8, v9

    iget v9, p0, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;->mMainAlpha:F

    mul-float/2addr v8, v9

    float-to-int v8, v8

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setAlpha(I)V

    iget v7, v0, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate$ParticleModel;->xRand:F

    iget v8, v0, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate$ParticleModel;->tz:F

    mul-float/2addr v7, v8

    iget v8, v0, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate$ParticleModel;->tension:F

    mul-float v5, v7, v8

    iget v7, v0, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate$ParticleModel;->tz:F

    cmpg-float v7, v7, v11

    if-gez v7, :cond_5

    const/4 v5, 0x0

    :cond_5
    iget v7, v0, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate$ParticleModel;->yRand:F

    iget v8, v0, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate$ParticleModel;->tz:F

    mul-float/2addr v7, v8

    iget v8, v0, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate$ParticleModel;->tension:F

    mul-float v6, v7, v8

    iget v7, v0, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate$ParticleModel;->tz:F

    cmpg-float v7, v7, v11

    if-gez v7, :cond_6

    const/4 v6, 0x0

    :cond_6
    iget v7, p0, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;->mWidth:F

    iget v8, p0, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;->mWidth:F

    const v9, 0x3f19999a    # 0.6f

    mul-float/2addr v8, v9

    sub-float/2addr v7, v8

    iget v8, p0, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;->mWidth:F

    mul-float/2addr v8, v3

    const v9, 0x3da3d70a    # 0.08f

    mul-float/2addr v8, v9

    add-float v2, v7, v8

    iget v7, p0, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;->mHeight:F

    iget v8, p0, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;->mHeight:F

    mul-float/2addr v8, v3

    const v9, 0x3ecccccd    # 0.4f

    mul-float/2addr v8, v9

    sub-float v4, v7, v8

    iget v7, v0, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate$ParticleModel;->tx:F

    add-float/2addr v7, v5

    iget v8, v0, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate$ParticleModel;->expand:F

    mul-float/2addr v7, v8

    iget v8, p0, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;->mScaleX:F

    mul-float/2addr v7, v8

    add-float/2addr v7, v2

    iget v8, v0, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate$ParticleModel;->ty:F

    add-float/2addr v8, v6

    iget v9, v0, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate$ParticleModel;->expand:F

    mul-float/2addr v8, v9

    iget v9, p0, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;->mScaleY:F

    mul-float/2addr v8, v9

    add-float/2addr v8, v4

    invoke-virtual {p0, v0}, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;->getRadius(Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate$ParticleModel;)F

    move-result v9

    iget v10, v0, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate$ParticleModel;->radius:F

    mul-float/2addr v9, v10

    iget v10, p0, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;->mScaleX:F

    mul-float/2addr v9, v10

    iget-object v10, p0, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v7, v8, v9, v10}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_7
    return-void
.end method
