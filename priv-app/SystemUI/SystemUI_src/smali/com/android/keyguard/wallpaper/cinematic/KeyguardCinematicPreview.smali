.class public Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;
.super Landroid/widget/FrameLayout;
.source "KeyguardCinematicPreview.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview$1;,
        Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview$CinematicCallback;
    }
.end annotation


# instance fields
.field private mAodCapturedView:Landroid/widget/ImageView;

.field private mCallback:Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview$CinematicCallback;

.field private mContext:Landroid/content/Context;

.field private mCurrentMode:I

.field private mCurrentPlusValue:F

.field private mDPlus:I

.field private mGalaxyView:Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;

.field private mHandler:Landroid/os/Handler;

.field private mHomeBackgroundView:Landroid/widget/ImageView;

.field private mHomeCapturedView:Landroid/widget/ImageView;

.field private mIsAodOptionChecked:Z

.field private mIsChangeHolding:Z

.field private mIsFirstSensor:Z

.field private mIsShowing:Z

.field private mLockBackgroundView:Landroid/widget/ImageView;

.field private mLockCapturedView:Landroid/widget/ImageView;

.field private mRootView:Landroid/view/View;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mStartPlusValue:I

.field private mTarget:[F


# direct methods
.method static synthetic -get0(Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;)Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview$CinematicCallback;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;->mCallback:Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview$CinematicCallback;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;)Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;->mGalaxyView:Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;->mIsShowing:Z

    return v0
.end method

.method static synthetic -set0(Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;F)F
    .locals 0

    iput p1, p0, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;->mCurrentPlusValue:F

    return p1
.end method

.method static synthetic -set1(Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;->mIsChangeHolding:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;->goNextMode()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IIZLcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview$CinematicCallback;)V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/16 v0, -0xc8

    iput v0, p0, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;->mDPlus:I

    const/16 v0, 0x64

    iput v0, p0, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;->mStartPlusValue:I

    iget v0, p0, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;->mStartPlusValue:I

    int-to-float v0, v0

    iput v0, p0, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;->mCurrentPlusValue:F

    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;->mTarget:[F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;->mIsFirstSensor:Z

    new-instance v0, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview$1;-><init>(Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;)V

    iput-object v0, p0, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;->mHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;->mContext:Landroid/content/Context;

    iput-boolean p4, p0, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;->mIsAodOptionChecked:Z

    iput-object p5, p0, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;->mCallback:Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview$CinematicCallback;

    iget-object v0, p0, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/keyguard/R$layout;->keyguard_cinematic_preview:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;->mRootView:Landroid/view/View;

    iget-object v0, p0, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;->mRootView:Landroid/view/View;

    const/16 v1, 0x5a0

    const/16 v2, 0xb90

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;->addView(Landroid/view/View;II)V

    sget v0, Lcom/android/keyguard/R$id;->lock_background_view:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;->mLockBackgroundView:Landroid/widget/ImageView;

    sget v0, Lcom/android/keyguard/R$id;->home_background_view:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;->mHomeBackgroundView:Landroid/widget/ImageView;

    sget v0, Lcom/android/keyguard/R$id;->aod_captured_view:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;->mAodCapturedView:Landroid/widget/ImageView;

    sget v0, Lcom/android/keyguard/R$id;->lock_captured_view:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;->mLockCapturedView:Landroid/widget/ImageView;

    sget v0, Lcom/android/keyguard/R$id;->home_captured_view:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;->mHomeCapturedView:Landroid/widget/ImageView;

    sget v0, Lcom/android/keyguard/R$id;->galaxy_view:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;

    iput-object v0, p0, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;->mGalaxyView:Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;

    iget-object v0, p0, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;->mRootView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setPivotX(F)V

    iget-object v0, p0, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;->mRootView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setPivotY(F)V

    iget-object v0, p0, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;->mRootView:Landroid/view/View;

    int-to-float v1, p2

    const/high16 v2, 0x44b40000    # 1440.0f

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    iget-object v0, p0, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;->mRootView:Landroid/view/View;

    int-to-float v1, p3

    const/high16 v2, 0x45390000    # 2960.0f

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    iget-object v0, p0, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-direct {p0}, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;->initCapturedView()V

    iget-object v0, p0, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;->mGalaxyView:Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;

    new-instance v1, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview$2;

    invoke-direct {v1, p0}, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview$2;-><init>(Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;)V

    invoke-virtual {v0, v1}, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;->mGalaxyView:Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;

    invoke-virtual {v0}, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview$3;

    invoke-direct {v1, p0}, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview$3;-><init>(Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return-void
.end method

.method private goAodMode()V
    .locals 10

    const/4 v4, 0x2

    const/4 v9, 0x1

    const-string/jumbo v1, "KeyguardCinematicPreview"

    const-string/jumbo v2, "goAodMode()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v2, 0x8fc

    invoke-direct {p0, v2, v3}, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;->holdChangeMode(J)V

    iget-object v1, p0, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;->mCallback:Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview$CinematicCallback;

    invoke-interface {v1, v9}, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview$CinematicCallback;->onModeChanged(I)V

    new-array v1, v4, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v8

    new-instance v1, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview$6;

    invoke-direct {v1, p0}, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview$6;-><init>(Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;)V

    invoke-virtual {v8, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v1, Lcom/samsung/android/view/animation/SineInOut90;

    invoke-direct {v1}, Lcom/samsung/android/view/animation/SineInOut90;-><init>()V

    invoke-virtual {v8, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v8, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v8}, Landroid/animation/ValueAnimator;->start()V

    iget-object v1, p0, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;->mAodCapturedView:Landroid/widget/ImageView;

    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v3, v4, [F

    fill-array-data v3, :array_1

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    iget-object v2, p0, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;->mGalaxyView:Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;

    iget v1, p0, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;->mCurrentPlusValue:F

    iget v3, p0, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;->mDPlus:I

    int-to-float v3, v3

    add-float/2addr v3, v1

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x7d0

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;->plusAnimation(Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;FJJ)V

    iput v9, p0, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;->mCurrentMode:I

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

.method private goHomeMode()V
    .locals 19

    const-string/jumbo v3, "KeyguardCinematicPreview"

    const-string/jumbo v4, "goHomeMode()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v4, 0x8fc

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;->holdChangeMode(J)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;->mCallback:Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview$CinematicCallback;

    const/4 v4, 0x3

    invoke-interface {v3, v4}, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview$CinematicCallback;->onModeChanged(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;->mLockBackgroundView:Landroid/widget/ImageView;

    sget-object v4, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v5, 0x2

    new-array v5, v5, [F

    fill-array-data v5, :array_0

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;->mLockCapturedView:Landroid/widget/ImageView;

    sget-object v4, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v5, 0x2

    new-array v5, v5, [F

    fill-array-data v5, :array_1

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;->mLockCapturedView:Landroid/widget/ImageView;

    sget-object v4, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    const/4 v5, 0x2

    new-array v5, v5, [F

    fill-array-data v5, :array_2

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;->mLockCapturedView:Landroid/widget/ImageView;

    sget-object v4, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    const/4 v5, 0x2

    new-array v5, v5, [F

    fill-array-data v5, :array_3

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v18

    new-instance v14, Landroid/animation/AnimatorSet;

    invoke-direct {v14}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v3, 0x4

    new-array v3, v3, [Landroid/animation/Animator;

    const/4 v4, 0x0

    aput-object v15, v3, v4

    const/4 v4, 0x1

    aput-object v16, v3, v4

    const/4 v4, 0x2

    aput-object v17, v3, v4

    const/4 v4, 0x3

    aput-object v18, v3, v4

    invoke-virtual {v14, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const-wide/16 v4, 0xc8

    invoke-virtual {v14, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    new-instance v3, Lcom/samsung/android/view/animation/SineIn90;

    invoke-direct {v3}, Lcom/samsung/android/view/animation/SineIn90;-><init>()V

    invoke-virtual {v14, v3}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v14}, Landroid/animation/AnimatorSet;->start()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;->mHomeBackgroundView:Landroid/widget/ImageView;

    sget-object v4, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v5, 0x2

    new-array v5, v5, [F

    fill-array-data v5, :array_4

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;->mHomeCapturedView:Landroid/widget/ImageView;

    sget-object v4, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v5, 0x2

    new-array v5, v5, [F

    fill-array-data v5, :array_5

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;->mHomeCapturedView:Landroid/widget/ImageView;

    sget-object v4, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    const/4 v5, 0x2

    new-array v5, v5, [F

    fill-array-data v5, :array_6

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;->mHomeCapturedView:Landroid/widget/ImageView;

    sget-object v4, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    const/4 v5, 0x2

    new-array v5, v5, [F

    fill-array-data v5, :array_7

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v13

    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v3, 0x4

    new-array v3, v3, [Landroid/animation/Animator;

    const/4 v4, 0x0

    aput-object v10, v3, v4

    const/4 v4, 0x1

    aput-object v11, v3, v4

    const/4 v4, 0x2

    aput-object v12, v3, v4

    const/4 v4, 0x3

    aput-object v13, v3, v4

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const-wide/16 v4, 0x12c

    invoke-virtual {v2, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    const-wide/16 v4, 0xc8

    invoke-virtual {v2, v4, v5}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    new-instance v3, Lcom/samsung/android/view/animation/SineOut90;

    invoke-direct {v3}, Lcom/samsung/android/view/animation/SineOut90;-><init>()V

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;->mGalaxyView:Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;->mCurrentPlusValue:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;->mDPlus:I

    int-to-float v5, v5

    add-float/2addr v3, v5

    const/high16 v5, 0x42480000    # 50.0f

    add-float/2addr v5, v3

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x7d0

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v9}, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;->plusAnimation(Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;FJJ)V

    const/4 v3, 0x3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;->mCurrentMode:I

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x3f4ccccd    # 0.8f
    .end array-data

    :array_3
    .array-data 4
        0x3f800000    # 1.0f
        0x3f4ccccd    # 0.8f
    .end array-data

    :array_4
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_5
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_6
    .array-data 4
        0x3f99999a    # 1.2f
        0x3f800000    # 1.0f
    .end array-data

    :array_7
    .array-data 4
        0x3f99999a    # 1.2f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private goLockMode()V
    .locals 13

    const-wide/16 v4, 0x12c

    const/4 v12, 0x2

    const-string/jumbo v1, "KeyguardCinematicPreview"

    const-string/jumbo v2, "goLockMode()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v2, 0x8fc

    invoke-direct {p0, v2, v3}, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;->holdChangeMode(J)V

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview$7;

    invoke-direct {v2, p0}, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview$7;-><init>(Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;)V

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-boolean v1, p0, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;->mIsAodOptionChecked:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;->mAodCapturedView:Landroid/widget/ImageView;

    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v3, v12, [F

    fill-array-data v3, :array_0

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/samsung/android/view/animation/SineIn90;

    invoke-direct {v1}, Lcom/samsung/android/view/animation/SineIn90;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    :goto_0
    iget-object v1, p0, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;->mLockBackgroundView:Landroid/widget/ImageView;

    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v3, v12, [F

    fill-array-data v3, :array_1

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v10

    iget-object v1, p0, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;->mLockCapturedView:Landroid/widget/ImageView;

    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v3, v12, [F

    fill-array-data v3, :array_2

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v11

    new-instance v9, Landroid/animation/AnimatorSet;

    invoke-direct {v9}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v1, v12, [Landroid/animation/Animator;

    const/4 v2, 0x0

    aput-object v10, v1, v2

    const/4 v2, 0x1

    aput-object v11, v1, v2

    invoke-virtual {v9, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    invoke-virtual {v9, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    invoke-virtual {v9, v4, v5}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    new-instance v1, Lcom/samsung/android/view/animation/SineOut90;

    invoke-direct {v1}, Lcom/samsung/android/view/animation/SineOut90;-><init>()V

    invoke-virtual {v9, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v9}, Landroid/animation/AnimatorSet;->start()V

    iget-object v2, p0, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;->mGalaxyView:Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;

    iget v1, p0, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;->mCurrentPlusValue:F

    iget v3, p0, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;->mDPlus:I

    int-to-float v3, v3

    add-float/2addr v1, v3

    const/high16 v3, 0x42480000    # 50.0f

    sub-float v3, v1, v3

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x7d0

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;->plusAnimation(Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;FJJ)V

    iput v12, p0, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;->mCurrentMode:I

    return-void

    :cond_0
    new-array v1, v12, [F

    fill-array-data v1, :array_3

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v8

    new-instance v1, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview$8;

    invoke-direct {v1, p0}, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview$8;-><init>(Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;)V

    invoke-virtual {v8, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v1, Lcom/samsung/android/view/animation/SineInOut90;

    invoke-direct {v1}, Lcom/samsung/android/view/animation/SineInOut90;-><init>()V

    invoke-virtual {v8, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v8, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v8}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

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

    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private goNextMode()V
    .locals 3

    const-string/jumbo v0, "KeyguardCinematicPreview"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "goNextMode(): mCurrentMode ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;->mCurrentMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;->mIsChangeHolding:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;->mCurrentMode:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-boolean v0, p0, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;->mIsAodOptionChecked:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;->goAodMode()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;->goLockMode()V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;->goLockMode()V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0}, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;->goHomeMode()V

    goto :goto_0

    :pswitch_3
    invoke-direct {p0}, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;->goOffMode()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private goOffMode()V
    .locals 5

    const/4 v4, 0x0

    const-string/jumbo v1, "KeyguardCinematicPreview"

    const-string/jumbo v2, "goOffMode()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v2, 0x258

    invoke-direct {p0, v2, v3}, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;->holdChangeMode(J)V

    iget-object v1, p0, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;->mCallback:Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview$CinematicCallback;

    invoke-interface {v1, v4}, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview$CinematicCallback;->onModeChanged(I)V

    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v2, 0x1

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v3, v2, v4

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview$5;

    invoke-direct {v1, p0}, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview$5;-><init>(Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method private holdChangeMode(J)V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;->mIsChangeHolding:Z

    iget-object v0, p0, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview$4;

    invoke-direct {v1, p0}, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview$4;-><init>(Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;)V

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private initCapturedView()V
    .locals 17

    const-string/jumbo v14, "KeyguardCinematicPreview"

    const-string/jumbo v15, "initCapturedView()"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "/storage/emulated/"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {}, Landroid/os/UserHandle;->semGetMyUserId()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "/Android/data/com.samsung.android.app.aodservice/cache/aod_capture.png"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v14, Ljava/io/File;

    invoke-direct {v14, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v14

    if-eqz v14, :cond_3

    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_0

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    const/4 v14, 0x0

    invoke-direct {v2, v14, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;->mAodCapturedView:Landroid/widget/ImageView;

    invoke-virtual {v14, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    const/4 v11, 0x0

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "/storage/emulated/"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {}, Landroid/os/UserHandle;->semGetMyUserId()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "/Android/data/com.android.systemui/cache/lockscreen_capture_port.png"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Ljava/io/File;

    invoke-direct {v14, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v14

    if-eqz v14, :cond_4

    invoke-static {v13}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v11

    :goto_1
    if-eqz v11, :cond_1

    new-instance v12, Landroid/graphics/drawable/BitmapDrawable;

    const/4 v14, 0x0

    invoke-direct {v12, v14, v11}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;->mLockCapturedView:Landroid/widget/ImageView;

    invoke-virtual {v14, v12}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    const/4 v7, 0x0

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "/storage/emulated/"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {}, Landroid/os/UserHandle;->semGetMyUserId()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "/Android/data/com.sec.android.app.launcher/cache/homescreenPreview.png"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-instance v14, Ljava/io/File;

    invoke-direct {v14, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v14

    if-eqz v14, :cond_5

    invoke-static {v9}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v7

    :goto_2
    if-eqz v7, :cond_2

    new-instance v8, Landroid/graphics/drawable/BitmapDrawable;

    const/4 v14, 0x0

    invoke-direct {v8, v14, v7}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;->mHomeCapturedView:Landroid/widget/ImageView;

    invoke-virtual {v14, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    return-void

    :cond_3
    const-string/jumbo v14, "KeyguardCinematicPreview"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "initCapturedView(): "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, " isn\'t exist"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_4
    const-string/jumbo v14, "KeyguardCinematicPreview"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "initCapturedView(): "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, " isn\'t exist"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    const-string/jumbo v14, "android.resource://com.android.systemui/drawable/lockscreen_capture_dummy_port"

    invoke-static {v14}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    invoke-virtual {v14, v4}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v10

    invoke-static {v10}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v11

    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_1

    :catch_0
    move-exception v5

    invoke-virtual {v5}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto/16 :goto_1

    :catch_1
    move-exception v6

    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1

    :cond_5
    const-string/jumbo v14, "KeyguardCinematicPreview"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "initCapturedView(): "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, " isn\'t exist"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_1
    const-string/jumbo v14, "android.resource://com.sec.android.app.wallpaperchooser/drawable/default_home_dummy"

    invoke-static {v14}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    invoke-virtual {v14, v4}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v10

    invoke-static {v10}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    goto/16 :goto_2

    :catch_2
    move-exception v5

    invoke-virtual {v5}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto/16 :goto_2

    :catch_3
    move-exception v6

    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_2
.end method

.method private plusAnimation(Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;FJJ)V
    .locals 5

    const/4 v1, 0x2

    new-array v1, v1, [F

    iget v2, p0, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;->mCurrentPlusValue:F

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v2, 0x1

    aput p2, v1, v2

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview$9;

    invoke-direct {v1, p0, p1}, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview$9;-><init>(Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v0, p3, p4}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    invoke-virtual {v0, p5, p6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/samsung/android/view/animation/SineOut90;

    invoke-direct {v1}, Lcom/samsung/android/view/animation/SineOut90;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onPause()V
    .locals 3

    const/16 v2, 0x63

    const-string/jumbo v0, "KeyguardCinematicPreview"

    const-string/jumbo v1, "onPause()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;->mIsShowing:Z

    iget-object v0, p0, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_1

    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 3

    const/16 v2, 0x63

    const-string/jumbo v0, "KeyguardCinematicPreview"

    const-string/jumbo v1, "onResume()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;->mIsShowing:Z

    iget-object v0, p0, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object v0, p0, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_1

    :cond_1
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 8

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/high16 v5, 0x41200000    # 10.0f

    const/4 v4, 0x0

    const/high16 v3, 0x3f000000    # 0.5f

    iget-object v1, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v1}, Landroid/hardware/Sensor;->getType()I

    move-result v1

    if-ne v1, v6, :cond_3

    iget-object v1, p0, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;->mTarget:[F

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v4

    div-float/2addr v2, v5

    aput v2, v1, v4

    iget-object v1, p0, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;->mTarget:[F

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v6

    div-float/2addr v2, v5

    aput v2, v1, v6

    iget-object v1, p0, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;->mTarget:[F

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v7

    div-float/2addr v2, v5

    sub-float/2addr v2, v3

    aput v2, v1, v7

    iget-object v1, p0, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;->mTarget:[F

    aget v0, v1, v4

    const/high16 v1, -0x41000000    # -0.5f

    cmpg-float v1, v0, v1

    if-gez v1, :cond_0

    const/high16 v0, -0x41000000    # -0.5f

    :cond_0
    cmpl-float v1, v0, v3

    if-lez v1, :cond_1

    const/high16 v0, 0x3f000000    # 0.5f

    :cond_1
    iget-boolean v1, p0, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;->mIsFirstSensor:Z

    if-eqz v1, :cond_2

    iput-boolean v4, p0, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;->mIsFirstSensor:Z

    iget-object v1, p0, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;->mGalaxyView:Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;

    add-float v2, v0, v3

    invoke-virtual {v1, v2}, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;->accChangeCurrent(F)V

    :cond_2
    iget v1, p0, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;->mCurrentMode:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_4

    iget-object v1, p0, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;->mGalaxyView:Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;

    add-float v2, v0, v3

    const v3, 0x3eb33333    # 0.35f

    mul-float/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;->accChangeX(F)V

    :cond_3
    :goto_0
    return-void

    :cond_4
    iget-object v1, p0, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;->mGalaxyView:Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;

    add-float v2, v0, v3

    invoke-virtual {v1, v2}, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;->accChangeX(F)V

    goto :goto_0
.end method

.method public reset()V
    .locals 4

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const-string/jumbo v0, "KeyguardCinematicPreview"

    const-string/jumbo v1, "reset()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;->mCurrentMode:I

    iget v0, p0, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;->mStartPlusValue:I

    int-to-float v0, v0

    iput v0, p0, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;->mCurrentPlusValue:F

    iget-object v0, p0, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;->mGalaxyView:Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;

    invoke-virtual {v0, v2}, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;->changePlusValue(F)V

    iget-object v0, p0, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;->mGalaxyView:Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;

    invoke-virtual {v0, v2}, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;->changeAlpha(F)V

    iget-object v0, p0, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;->mLockBackgroundView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;->mHomeBackgroundView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;->mAodCapturedView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;->mAodCapturedView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setScaleX(F)V

    iget-object v0, p0, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;->mAodCapturedView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setScaleY(F)V

    iget-object v0, p0, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;->mLockCapturedView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;->mLockCapturedView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setScaleX(F)V

    iget-object v0, p0, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;->mLockCapturedView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setScaleY(F)V

    iget-object v0, p0, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;->mHomeCapturedView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;->mHomeCapturedView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setScaleX(F)V

    iget-object v0, p0, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;->mHomeCapturedView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setScaleY(F)V

    invoke-virtual {p0, v3}, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;->setAlpha(F)V

    return-void
.end method

.method public setAodOptionChecked(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;->mIsAodOptionChecked:Z

    return-void
.end method
