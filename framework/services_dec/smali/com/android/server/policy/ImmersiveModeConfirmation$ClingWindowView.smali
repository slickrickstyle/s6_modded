.class Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;
.super Landroid/widget/FrameLayout;
.source "ImmersiveModeConfirmation.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/ImmersiveModeConfirmation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ClingWindowView"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView$1;,
        Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView$2;,
        Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView$3;,
        Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView$ClingWindowHandler;
    }
.end annotation


# static fields
.field private static final ANIMATION_DURATION:I = 0xfa

.field private static final BGCOLOR:I = -0x40dadadb

.field private static final OFFSET_DP:I = 0x60


# instance fields
.field private mClingHandler:Landroid/os/Handler;

.field private mClingLayout:Landroid/view/ViewGroup;

.field private final mColor:Landroid/graphics/drawable/ColorDrawable;

.field private mColorAnim:Landroid/animation/ValueAnimator;

.field private final mConfirm:Ljava/lang/Runnable;

.field private mImmersiveHelpStep:I

.field private mInsetsListener:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

.field private final mInterpolator:Landroid/view/animation/Interpolator;

.field private mLandButtonNext:Landroid/widget/Button;

.field private mLandButtonOK:Landroid/widget/Button;

.field private mLandHelpArea:Landroid/widget/LinearLayout;

.field private mLandLayoutStepOne:Landroid/widget/LinearLayout;

.field private mLandLayoutStepTwo:Landroid/widget/LinearLayout;

.field private mPortButtonNext:Landroid/widget/Button;

.field private mPortButtonOK:Landroid/widget/Button;

.field private mPortLayoutStepOne:Landroid/widget/LinearLayout;

.field private mPortLayoutStepTwo:Landroid/widget/LinearLayout;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mRot270ImageArea:Landroid/widget/LinearLayout;

.field private mRot90ImageArea:Landroid/widget/LinearLayout;

.field private mRotation:I

.field private mUpdateLayoutRunnable:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/android/server/policy/ImmersiveModeConfirmation;


# direct methods
.method static synthetic -get0(Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->mClingHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;)Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->mClingLayout:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;)Landroid/graphics/drawable/ColorDrawable;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->mColor:Landroid/graphics/drawable/ColorDrawable;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;)Landroid/animation/ValueAnimator;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->mColorAnim:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;)Landroid/view/animation/Interpolator;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->mInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;)I
    .locals 1

    iget v0, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->mRotation:I

    return v0
.end method

.method static synthetic -get6(Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->mUpdateLayoutRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    iput-object p1, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->mColorAnim:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->mRotation:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->handleHelpLayout(I)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/policy/ImmersiveModeConfirmation;Landroid/content/Context;Ljava/lang/Runnable;I)V
    .locals 2

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->this$0:Lcom/android/server/policy/ImmersiveModeConfirmation;

    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->mColor:Landroid/graphics/drawable/ColorDrawable;

    iput v1, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->mImmersiveHelpStep:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->mRotation:I

    new-instance v0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView$ClingWindowHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView$ClingWindowHandler;-><init>(Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView$ClingWindowHandler;)V

    iput-object v0, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->mClingHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView$1;

    invoke-direct {v0, p0}, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView$1;-><init>(Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;)V

    iput-object v0, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->mUpdateLayoutRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView$2;

    invoke-direct {v0, p0}, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView$2;-><init>(Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;)V

    iput-object v0, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->mInsetsListener:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

    new-instance v0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView$3;

    invoke-direct {v0, p0}, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView$3;-><init>(Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;)V

    iput-object v0, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->mReceiver:Landroid/content/BroadcastReceiver;

    iput-object p3, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->mConfirm:Ljava/lang/Runnable;

    iput p4, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->mRotation:I

    iget-object v0, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->mColor:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0, v0}, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->setImportantForAccessibility(I)V

    iget-object v0, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->mContext:Landroid/content/Context;

    const v1, 0x10c000e

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->mInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method private handleHelpLayout(I)V
    .locals 7

    const/4 v6, 0x5

    const/4 v5, 0x1

    const/4 v4, 0x3

    const/4 v3, 0x0

    const/4 v2, 0x4

    iget v0, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->mImmersiveHelpStep:I

    if-nez v0, :cond_3

    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->mPortLayoutStepOne:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->mPortLayoutStepTwo:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->mLandLayoutStepOne:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->mLandLayoutStepTwo:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->mClingLayout:Landroid/view/ViewGroup;

    const v1, 0x10203fd

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->mRot90ImageArea:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->mClingLayout:Landroid/view/ViewGroup;

    const v1, 0x10203fa

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->mRot270ImageArea:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->mClingLayout:Landroid/view/ViewGroup;

    const v1, 0x1020400

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->mLandHelpArea:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->mPortLayoutStepOne:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->mPortLayoutStepTwo:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    if-ne p1, v5, :cond_2

    iget-object v0, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->mLandLayoutStepOne:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->mLandLayoutStepOne:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setGravity(I)V

    iget-object v0, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->mRot90ImageArea:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->mLandLayoutStepTwo:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->mRot270ImageArea:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    :cond_2
    if-ne p1, v4, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->mLandLayoutStepOne:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->mLandLayoutStepOne:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    iget-object v0, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->mRot270ImageArea:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->mLandLayoutStepTwo:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->mRot90ImageArea:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    :cond_3
    if-nez p1, :cond_4

    iget-object v0, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->mPortLayoutStepOne:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->mPortLayoutStepTwo:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->mLandLayoutStepOne:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->mLandLayoutStepTwo:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->mClingLayout:Landroid/view/ViewGroup;

    const v1, 0x1020402

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->mRot90ImageArea:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->mClingLayout:Landroid/view/ViewGroup;

    const v1, 0x10203ff

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->mRot270ImageArea:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->mClingLayout:Landroid/view/ViewGroup;

    const v1, 0x1020400

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->mLandHelpArea:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->mPortLayoutStepOne:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->mPortLayoutStepTwo:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    if-ne p1, v5, :cond_5

    iget-object v0, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->mLandLayoutStepTwo:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setGravity(I)V

    iget-object v0, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->mLandLayoutStepTwo:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->mRot90ImageArea:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->mLandLayoutStepOne:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->mRot270ImageArea:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0

    :cond_5
    if-ne p1, v4, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->mLandLayoutStepTwo:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    iget-object v0, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->mLandLayoutStepTwo:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->mRot270ImageArea:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->mLandLayoutStepOne:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->mRot90ImageArea:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0
.end method


# virtual methods
.method public onAttachedToWindow()V
    .locals 8

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    new-instance v3, Landroid/util/DisplayMetrics;

    invoke-direct {v3}, Landroid/util/DisplayMetrics;-><init>()V

    iget-object v4, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->this$0:Lcom/android/server/policy/ImmersiveModeConfirmation;

    invoke-static {v4}, Lcom/android/server/policy/ImmersiveModeConfirmation;->-get2(Lcom/android/server/policy/ImmersiveModeConfirmation;)Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v1, v3, Landroid/util/DisplayMetrics;->density:F

    invoke-virtual {p0}, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->mInsetsListener:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

    invoke-virtual {v4, v5}, Landroid/view/ViewTreeObserver;->addOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;)V

    invoke-virtual {p0}, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x109007a

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    iput-object v4, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->mClingLayout:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->mClingLayout:Landroid/view/ViewGroup;

    const v5, 0x10203f5

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->mPortLayoutStepOne:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->mClingLayout:Landroid/view/ViewGroup;

    const v5, 0x10203f7

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->mPortLayoutStepTwo:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->mClingLayout:Landroid/view/ViewGroup;

    const v5, 0x10203f9

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->mLandLayoutStepOne:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->mClingLayout:Landroid/view/ViewGroup;

    const v5, 0x10203fe

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->mLandLayoutStepTwo:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->mClingLayout:Landroid/view/ViewGroup;

    const v5, 0x10203f6

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->mPortButtonNext:Landroid/widget/Button;

    iget-object v4, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->mClingLayout:Landroid/view/ViewGroup;

    const v5, 0x10203f8

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->mPortButtonOK:Landroid/widget/Button;

    iget-object v4, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->mClingLayout:Landroid/view/ViewGroup;

    const v5, 0x10203fc

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->mLandButtonNext:Landroid/widget/Button;

    iget-object v4, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->mClingLayout:Landroid/view/ViewGroup;

    const v5, 0x1020401

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->mLandButtonOK:Landroid/widget/Button;

    iget-object v4, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->mPortButtonNext:Landroid/widget/Button;

    invoke-virtual {v4, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v4, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->mPortButtonOK:Landroid/widget/Button;

    invoke-virtual {v4, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v4, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->mLandButtonNext:Landroid/widget/Button;

    invoke-virtual {v4, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v4, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->mLandButtonOK:Landroid/widget/Button;

    invoke-virtual {v4, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget v4, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->mRotation:I

    invoke-direct {p0, v4}, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->handleHelpLayout(I)V

    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v4

    new-instance v5, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView$4;

    invoke-direct {v5, p0}, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView$4;-><init>(Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;)V

    invoke-interface {v4, v5}, Landroid/view/IWindowManager;->watchRotation(Landroid/view/IRotationWatcher;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v4, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->mClingLayout:Landroid/view/ViewGroup;

    iget-object v5, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->this$0:Lcom/android/server/policy/ImmersiveModeConfirmation;

    invoke-virtual {v5}, Lcom/android/server/policy/ImmersiveModeConfirmation;->getBubbleLayoutParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {}, Landroid/app/ActivityManager;->isHighEndGfx()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->mClingLayout:Landroid/view/ViewGroup;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/view/View;->setAlpha(F)V

    const/high16 v4, -0x3d400000    # -96.0f

    mul-float/2addr v4, v1

    invoke-virtual {v0, v4}, Landroid/view/View;->setTranslationY(F)V

    new-instance v4, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView$5;

    invoke-direct {v4, p0, v0}, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView$5;-><init>(Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;Landroid/view/View;)V

    invoke-virtual {p0, v4}, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->postOnAnimation(Ljava/lang/Runnable;)V

    :goto_0
    iget-object v4, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v6, Landroid/content/IntentFilter;

    const-string/jumbo v7, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-direct {v6, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v4

    throw v4

    :cond_0
    iget-object v4, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->mColor:Landroid/graphics/drawable/ColorDrawable;

    const v5, -0x40dadadb

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/ColorDrawable;->setColor(I)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->mImmersiveHelpStep:I

    iget-object v0, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->mClingHandler:Landroid/os/Handler;

    iget v1, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->mRotation:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->mConfirm:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x10203f6 -> :sswitch_0
        0x10203f8 -> :sswitch_1
        0x10203fc -> :sswitch_0
        0x1020401 -> :sswitch_1
    .end sparse-switch
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    iget-object v1, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->mClingLayout:Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->mRotation:I

    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->mClingLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v0

    iput v0, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->mRotation:I

    iget-object v1, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->mClingHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
