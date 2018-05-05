.class Landroid/widget/Editor$MagnifierView;
.super Landroid/view/View;
.source "Editor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MagnifierView"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/Editor$MagnifierView$UpdateMagnifierHandler;
    }
.end annotation


# static fields
.field private static final UPDATE_MAGNIFIER:I = 0x65

.field private static final ZOOM_FACTOR:F = 0.67f


# instance fields
.field private REGION_SIZE_X:I

.field private REGION_SIZE_Y:I

.field private ROUND_RADIUS:I

.field builder:Landroid/widget/Editor$SFEffectsAPI$Effect$Builder;

.field private defaultOffsetInOneHandedMode:[I

.field private defaultScaleInOneHandedMode:F

.field protected mAction:I

.field mBackground:Landroid/graphics/drawable/Drawable;

.field mBorderBitmap:Landroid/graphics/Bitmap;

.field private mContext:Landroid/content/Context;

.field private mDrawing:Z

.field private mEffectSizeX:I

.field private mEffectSizeY:I

.field private mExtraVerticalOffset:F

.field private mIsFirstTouchDown:Z

.field private mMagnifierViewHeight:I

.field private mMagnifierViewWidth:I

.field private mPaddingInBackground:Landroid/graphics/Rect;

.field private mPopupWindow:Landroid/widget/PopupWindow;

.field private mPositionX:F

.field private mPositionY:F

.field private mRawX:F

.field private mRawY:F

.field mRectDst:Landroid/graphics/RectF;

.field mRectSrc:Landroid/graphics/Rect;

.field private mTransitionOffset:[F

.field private mTruncated:[F

.field private mUpdateHandler:Landroid/widget/Editor$MagnifierView$UpdateMagnifierHandler;

.field private mVerticalOffset:I

.field private mView:Landroid/view/View;

.field final synthetic this$0:Landroid/widget/Editor;


# direct methods
.method static synthetic -get0(Landroid/widget/Editor$MagnifierView;)I
    .locals 1

    iget v0, p0, Landroid/widget/Editor$MagnifierView;->REGION_SIZE_X:I

    return v0
.end method

.method static synthetic -get1(Landroid/widget/Editor$MagnifierView;)I
    .locals 1

    iget v0, p0, Landroid/widget/Editor$MagnifierView;->REGION_SIZE_Y:I

    return v0
.end method

.method static synthetic -get10(Landroid/widget/Editor$MagnifierView;)[F
    .locals 1

    iget-object v0, p0, Landroid/widget/Editor$MagnifierView;->mTruncated:[F

    return-object v0
.end method

.method static synthetic -get11(Landroid/widget/Editor$MagnifierView;)I
    .locals 1

    iget v0, p0, Landroid/widget/Editor$MagnifierView;->mVerticalOffset:I

    return v0
.end method

.method static synthetic -get12(Landroid/widget/Editor$MagnifierView;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Landroid/widget/Editor$MagnifierView;->mView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get2(Landroid/widget/Editor$MagnifierView;)I
    .locals 1

    iget v0, p0, Landroid/widget/Editor$MagnifierView;->ROUND_RADIUS:I

    return v0
.end method

.method static synthetic -get3(Landroid/widget/Editor$MagnifierView;)[I
    .locals 1

    iget-object v0, p0, Landroid/widget/Editor$MagnifierView;->defaultOffsetInOneHandedMode:[I

    return-object v0
.end method

.method static synthetic -get4(Landroid/widget/Editor$MagnifierView;)F
    .locals 1

    iget v0, p0, Landroid/widget/Editor$MagnifierView;->defaultScaleInOneHandedMode:F

    return v0
.end method

.method static synthetic -get5(Landroid/widget/Editor$MagnifierView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Landroid/widget/Editor$MagnifierView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get6(Landroid/widget/Editor$MagnifierView;)I
    .locals 1

    iget v0, p0, Landroid/widget/Editor$MagnifierView;->mMagnifierViewHeight:I

    return v0
.end method

.method static synthetic -get7(Landroid/widget/Editor$MagnifierView;)F
    .locals 1

    iget v0, p0, Landroid/widget/Editor$MagnifierView;->mRawX:F

    return v0
.end method

.method static synthetic -get8(Landroid/widget/Editor$MagnifierView;)F
    .locals 1

    iget v0, p0, Landroid/widget/Editor$MagnifierView;->mRawY:F

    return v0
.end method

.method static synthetic -get9(Landroid/widget/Editor$MagnifierView;)[F
    .locals 1

    iget-object v0, p0, Landroid/widget/Editor$MagnifierView;->mTransitionOffset:[F

    return-object v0
.end method

.method static synthetic -set0(Landroid/widget/Editor$MagnifierView;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/widget/Editor$MagnifierView;->mDrawing:Z

    return p1
.end method

.method constructor <init>(Landroid/widget/Editor;Landroid/content/Context;)V
    .locals 6

    const/4 v1, 0x0

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x0

    iput-object p1, p0, Landroid/widget/Editor$MagnifierView;->this$0:Landroid/widget/Editor;

    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput v3, p0, Landroid/widget/Editor$MagnifierView;->mExtraVerticalOffset:F

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/Editor$MagnifierView;->mPaddingInBackground:Landroid/graphics/Rect;

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/widget/Editor$MagnifierView;->defaultScaleInOneHandedMode:F

    iput v4, p0, Landroid/widget/Editor$MagnifierView;->mAction:I

    iput-object v1, p0, Landroid/widget/Editor$MagnifierView;->mUpdateHandler:Landroid/widget/Editor$MagnifierView$UpdateMagnifierHandler;

    iput-boolean v4, p0, Landroid/widget/Editor$MagnifierView;->mDrawing:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/Editor$MagnifierView;->mIsFirstTouchDown:Z

    iput-object p2, p0, Landroid/widget/Editor$MagnifierView;->mContext:Landroid/content/Context;

    iput-object p0, p0, Landroid/widget/Editor$MagnifierView;->mView:Landroid/view/View;

    new-instance v0, Landroid/widget/Editor$MagnifierView$UpdateMagnifierHandler;

    invoke-direct {v0, p0, v1}, Landroid/widget/Editor$MagnifierView$UpdateMagnifierHandler;-><init>(Landroid/widget/Editor$MagnifierView;Landroid/widget/Editor$MagnifierView$UpdateMagnifierHandler;)V

    iput-object v0, p0, Landroid/widget/Editor$MagnifierView;->mUpdateHandler:Landroid/widget/Editor$MagnifierView$UpdateMagnifierHandler;

    iget-object v0, p0, Landroid/widget/Editor$MagnifierView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/Editor$MagnifierView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x1080ad9

    invoke-virtual {v0, v2, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/Editor$MagnifierView;->mBackground:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Landroid/widget/Editor$MagnifierView;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/widget/Editor$MagnifierView;->mBackground:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/widget/Editor$MagnifierView;->mPaddingInBackground:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    iget-object v0, p0, Landroid/widget/Editor$MagnifierView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10502a9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Landroid/widget/Editor$MagnifierView;->mMagnifierViewWidth:I

    iget-object v0, p0, Landroid/widget/Editor$MagnifierView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10502aa

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Landroid/widget/Editor$MagnifierView;->mMagnifierViewHeight:I

    iget-object v0, p0, Landroid/widget/Editor$MagnifierView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10502a8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Landroid/widget/Editor$MagnifierView;->mVerticalOffset:I

    invoke-direct {p0}, Landroid/widget/Editor$MagnifierView;->getBorderBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/Editor$MagnifierView;->mBorderBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Landroid/widget/Editor$MagnifierView;->createPopupWindow()Landroid/widget/PopupWindow;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/Editor$MagnifierView;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-direct {p0}, Landroid/widget/Editor$MagnifierView;->initEffect()V

    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/widget/Editor$MagnifierView;->mBorderBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget-object v2, p0, Landroid/widget/Editor$MagnifierView;->mBorderBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-direct {v0, v4, v4, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Landroid/widget/Editor$MagnifierView;->mRectSrc:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, v3, v3, v3, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Landroid/widget/Editor$MagnifierView;->mRectDst:Landroid/graphics/RectF;

    new-array v0, v5, [F

    iput-object v0, p0, Landroid/widget/Editor$MagnifierView;->mTruncated:[F

    new-array v0, v5, [F

    iput-object v0, p0, Landroid/widget/Editor$MagnifierView;->mTransitionOffset:[F

    new-array v0, v5, [I

    iput-object v0, p0, Landroid/widget/Editor$MagnifierView;->defaultOffsetInOneHandedMode:[I

    return-void
.end method

.method private createPopupWindow()Landroid/widget/PopupWindow;
    .locals 6

    const/4 v5, 0x0

    new-instance v2, Landroid/widget/PopupWindow;

    iget-object v4, p0, Landroid/widget/Editor$MagnifierView;->mContext:Landroid/content/Context;

    invoke-direct {v2, v4}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v5}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    const/16 v4, 0x3ed

    invoke-virtual {v2, v4}, Landroid/widget/PopupWindow;->setWindowLayoutType(I)V

    invoke-virtual {v2, v5}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v4, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v2, v4}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v4, p0, Landroid/widget/Editor$MagnifierView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v3, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setWidth(I)V

    invoke-virtual {v2, v1}, Landroid/widget/PopupWindow;->setHeight(I)V

    invoke-virtual {v2, v5}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    iget-object v4, p0, Landroid/widget/Editor$MagnifierView;->mView:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    return-object v2
.end method

.method private dismiss()V
    .locals 1

    iget-object v0, p0, Landroid/widget/Editor$MagnifierView;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method

.method private getBorderBitmap()Landroid/graphics/Bitmap;
    .locals 6

    const/4 v5, 0x0

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1}, Landroid/graphics/Canvas;-><init>()V

    iget v2, p0, Landroid/widget/Editor$MagnifierView;->mMagnifierViewWidth:I

    iget v3, p0, Landroid/widget/Editor$MagnifierView;->mMagnifierViewHeight:I

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    iget-object v2, p0, Landroid/widget/Editor$MagnifierView;->mBackground:Landroid/graphics/drawable/Drawable;

    iget v3, p0, Landroid/widget/Editor$MagnifierView;->mMagnifierViewWidth:I

    iget v4, p0, Landroid/widget/Editor$MagnifierView;->mMagnifierViewHeight:I

    invoke-virtual {v2, v5, v5, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v2, p0, Landroid/widget/Editor$MagnifierView;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-object v0
.end method

.method private initEffect()V
    .locals 8

    const v7, 0x3f2b851f    # 0.67f

    const/4 v6, 0x0

    iget-object v2, p0, Landroid/widget/Editor$MagnifierView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v1, v0, Landroid/util/DisplayMetrics;->density:F

    iget-object v2, p0, Landroid/widget/Editor$MagnifierView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e00f0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Landroid/widget/Editor$MagnifierView;->defaultScaleInOneHandedMode:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Landroid/widget/Editor$MagnifierView;->REGION_SIZE_X:I

    iget-object v2, p0, Landroid/widget/Editor$MagnifierView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e00f1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Landroid/widget/Editor$MagnifierView;->defaultScaleInOneHandedMode:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Landroid/widget/Editor$MagnifierView;->REGION_SIZE_Y:I

    iget-object v2, p0, Landroid/widget/Editor$MagnifierView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e00f2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Landroid/widget/Editor$MagnifierView;->defaultScaleInOneHandedMode:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Landroid/widget/Editor$MagnifierView;->ROUND_RADIUS:I

    new-instance v2, Landroid/widget/Editor$SFEffectsAPI$Effect$Builder;

    invoke-direct {v2}, Landroid/widget/Editor$SFEffectsAPI$Effect$Builder;-><init>()V

    iput-object v2, p0, Landroid/widget/Editor$MagnifierView;->builder:Landroid/widget/Editor$SFEffectsAPI$Effect$Builder;

    iget-object v2, p0, Landroid/widget/Editor$MagnifierView;->builder:Landroid/widget/Editor$SFEffectsAPI$Effect$Builder;

    sget-object v3, Landroid/widget/Editor$SFEffectsAPI$AnimationMode;->kAnimStatic:Landroid/widget/Editor$SFEffectsAPI$AnimationMode;

    invoke-virtual {v2, v3}, Landroid/widget/Editor$SFEffectsAPI$Effect$Builder;->setAnimationMode(Landroid/widget/Editor$SFEffectsAPI$AnimationMode;)Landroid/widget/Editor$SFEffectsAPI$Effect$Builder;

    move-result-object v2

    sget-object v3, Landroid/widget/Editor$SFEffectsAPI$EffectTarget;->BEHIND:Landroid/widget/Editor$SFEffectsAPI$EffectTarget;

    invoke-virtual {v2, v3}, Landroid/widget/Editor$SFEffectsAPI$Effect$Builder;->setEffectTarget(Landroid/widget/Editor$SFEffectsAPI$EffectTarget;)Landroid/widget/Editor$SFEffectsAPI$Effect$Builder;

    move-result-object v2

    sget-object v3, Landroid/widget/Editor$SFEffectsAPI$PixEffectType;->MAGNIFIER:Landroid/widget/Editor$SFEffectsAPI$PixEffectType;

    invoke-virtual {v2, v3}, Landroid/widget/Editor$SFEffectsAPI$Effect$Builder;->setPixelEffectType(Landroid/widget/Editor$SFEffectsAPI$PixEffectType;)Landroid/widget/Editor$SFEffectsAPI$Effect$Builder;

    iget-object v2, p0, Landroid/widget/Editor$MagnifierView;->builder:Landroid/widget/Editor$SFEffectsAPI$Effect$Builder;

    sget-object v3, Landroid/widget/Editor$SFEffectsAPI$AnimParam;->kAnimRegionSizeX:Landroid/widget/Editor$SFEffectsAPI$AnimParam;

    iget v4, p0, Landroid/widget/Editor$MagnifierView;->REGION_SIZE_X:I

    int-to-float v4, v4

    sget-object v5, Landroid/widget/Editor$SFEffectsAPI$InterpMode;->kInterpHold:Landroid/widget/Editor$SFEffectsAPI$InterpMode;

    invoke-virtual {v2, v3, v6, v4, v5}, Landroid/widget/Editor$SFEffectsAPI$Effect$Builder;->addPixAnimation(Landroid/widget/Editor$SFEffectsAPI$AnimParam;IFLandroid/widget/Editor$SFEffectsAPI$InterpMode;)Landroid/widget/Editor$SFEffectsAPI$Effect$Builder;

    move-result-object v2

    sget-object v3, Landroid/widget/Editor$SFEffectsAPI$AnimParam;->kAnimRegionSizeY:Landroid/widget/Editor$SFEffectsAPI$AnimParam;

    iget v4, p0, Landroid/widget/Editor$MagnifierView;->REGION_SIZE_Y:I

    int-to-float v4, v4

    sget-object v5, Landroid/widget/Editor$SFEffectsAPI$InterpMode;->kInterpHold:Landroid/widget/Editor$SFEffectsAPI$InterpMode;

    invoke-virtual {v2, v3, v6, v4, v5}, Landroid/widget/Editor$SFEffectsAPI$Effect$Builder;->addPixAnimation(Landroid/widget/Editor$SFEffectsAPI$AnimParam;IFLandroid/widget/Editor$SFEffectsAPI$InterpMode;)Landroid/widget/Editor$SFEffectsAPI$Effect$Builder;

    move-result-object v2

    sget-object v3, Landroid/widget/Editor$SFEffectsAPI$AnimParam;->kAnimRegionFactorX:Landroid/widget/Editor$SFEffectsAPI$AnimParam;

    sget-object v4, Landroid/widget/Editor$SFEffectsAPI$InterpMode;->kInterpHold:Landroid/widget/Editor$SFEffectsAPI$InterpMode;

    invoke-virtual {v2, v3, v6, v7, v4}, Landroid/widget/Editor$SFEffectsAPI$Effect$Builder;->addPixAnimation(Landroid/widget/Editor$SFEffectsAPI$AnimParam;IFLandroid/widget/Editor$SFEffectsAPI$InterpMode;)Landroid/widget/Editor$SFEffectsAPI$Effect$Builder;

    move-result-object v2

    sget-object v3, Landroid/widget/Editor$SFEffectsAPI$AnimParam;->kAnimRegionFactorY:Landroid/widget/Editor$SFEffectsAPI$AnimParam;

    sget-object v4, Landroid/widget/Editor$SFEffectsAPI$InterpMode;->kInterpHold:Landroid/widget/Editor$SFEffectsAPI$InterpMode;

    invoke-virtual {v2, v3, v6, v7, v4}, Landroid/widget/Editor$SFEffectsAPI$Effect$Builder;->addPixAnimation(Landroid/widget/Editor$SFEffectsAPI$AnimParam;IFLandroid/widget/Editor$SFEffectsAPI$InterpMode;)Landroid/widget/Editor$SFEffectsAPI$Effect$Builder;

    move-result-object v2

    sget-object v3, Landroid/widget/Editor$SFEffectsAPI$AnimParam;->kAnimRegionSizeT:Landroid/widget/Editor$SFEffectsAPI$AnimParam;

    iget v4, p0, Landroid/widget/Editor$MagnifierView;->ROUND_RADIUS:I

    int-to-float v4, v4

    sget-object v5, Landroid/widget/Editor$SFEffectsAPI$InterpMode;->kInterpHold:Landroid/widget/Editor$SFEffectsAPI$InterpMode;

    invoke-virtual {v2, v3, v6, v4, v5}, Landroid/widget/Editor$SFEffectsAPI$Effect$Builder;->addPixAnimation(Landroid/widget/Editor$SFEffectsAPI$AnimParam;IFLandroid/widget/Editor$SFEffectsAPI$InterpMode;)Landroid/widget/Editor$SFEffectsAPI$Effect$Builder;

    return-void
.end method

.method private isOneHandedMode()Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/widget/Editor$MagnifierView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "any_screen_running"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private updatePosition()V
    .locals 6

    const/4 v5, 0x0

    iget-object v3, p0, Landroid/widget/Editor$MagnifierView;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_0

    return-void

    :cond_0
    iget-object v3, p0, Landroid/widget/Editor$MagnifierView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iget-object v3, p0, Landroid/widget/Editor$MagnifierView;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v3, v2}, Landroid/widget/PopupWindow;->setWidth(I)V

    iget-object v3, p0, Landroid/widget/Editor$MagnifierView;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v3, v1}, Landroid/widget/PopupWindow;->setHeight(I)V

    iget-object v3, p0, Landroid/widget/Editor$MagnifierView;->mPopupWindow:Landroid/widget/PopupWindow;

    iget-object v4, p0, Landroid/widget/Editor$MagnifierView;->this$0:Landroid/widget/Editor;

    invoke-static {v4}, Landroid/widget/Editor;->-get14(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v4, v5, v5, v5}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    return-void
.end method


# virtual methods
.method public getMagnifierScreen()V
    .locals 2

    iget v0, p0, Landroid/widget/Editor$MagnifierView;->mAction:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/Editor$MagnifierView;->mDrawing:Z

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public handleTouchEvent(IFF)V
    .locals 25

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$MagnifierView;->this$0:Landroid/widget/Editor;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/widget/Editor;->-get3(Landroid/widget/Editor;)Z

    move-result v19

    if-nez v19, :cond_0

    return-void

    :cond_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/Editor$MagnifierView;->mIsFirstTouchDown:Z

    move/from16 v19, v0

    if-eqz v19, :cond_1

    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor$MagnifierView;->isOneHandedMode()Z

    move-result v19

    if-eqz v19, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$MagnifierView;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    const-string/jumbo v20, "reduce_screen_running_info"

    invoke-static/range {v19 .. v20}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :try_start_0
    const-string/jumbo v19, ";"

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$MagnifierView;->defaultOffsetInOneHandedMode:[I

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aget-object v20, v18, v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    const/16 v21, 0x0

    aput v20, v19, v21

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$MagnifierView;->defaultOffsetInOneHandedMode:[I

    move-object/from16 v19, v0

    const/16 v20, 0x1

    aget-object v20, v18, v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    const/16 v21, 0x1

    aput v20, v19, v21

    const/16 v19, 0x2

    aget-object v19, v18, v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/Editor$MagnifierView;->defaultScaleInOneHandedMode:F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor$MagnifierView;->initEffect()V

    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/Editor$MagnifierView;->mIsFirstTouchDown:Z

    :cond_1
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/Editor$MagnifierView;->mAction:I

    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/Editor$MagnifierView;->mRawX:F

    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/Editor$MagnifierView;->mRawY:F

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$MagnifierView;->mAction:I

    move/from16 v19, v0

    packed-switch v19, :pswitch_data_0

    :goto_1
    return-void

    :catch_0
    move-exception v2

    const-string/jumbo v19, "Editor"

    const-string/jumbo v20, "MagnifierView, Exception occured during getting the settings value at the one-handed mode."

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$MagnifierView;->defaultOffsetInOneHandedMode:[I

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const/16 v21, 0x0

    aput v20, v19, v21

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$MagnifierView;->defaultOffsetInOneHandedMode:[I

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const/16 v21, 0x1

    aput v20, v19, v21

    const/high16 v19, 0x3f800000    # 1.0f

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/Editor$MagnifierView;->defaultScaleInOneHandedMode:F

    goto :goto_0

    :pswitch_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/Editor$MagnifierView;->mDrawing:Z

    move/from16 v19, v0

    if-eqz v19, :cond_3

    return-void

    :cond_3
    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v15, v0, [I

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v14, v0, [I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$MagnifierView;->this$0:Landroid/widget/Editor;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/widget/Editor;->-get14(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Landroid/view/View;->getLocationOnScreen([I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$MagnifierView;->this$0:Landroid/widget/Editor;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/widget/Editor;->-get14(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Landroid/view/View;->getLocationInWindow([I)V

    const/16 v19, 0x0

    aget v19, v15, v19

    const/16 v20, 0x0

    aget v20, v14, v20

    sub-int v12, v19, v20

    const/16 v19, 0x1

    aget v19, v15, v19

    const/16 v20, 0x1

    aget v20, v14, v20

    sub-int v13, v19, v20

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$MagnifierView;->mRawX:F

    move/from16 v19, v0

    int-to-float v0, v12

    move/from16 v20, v0

    sub-float v19, v19, v20

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$MagnifierView;->mMagnifierViewWidth:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    const/high16 v21, 0x40000000    # 2.0f

    div-float v20, v20, v21

    sub-float v16, v19, v20

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$MagnifierView;->mRawY:F

    move/from16 v19, v0

    int-to-float v0, v13

    move/from16 v20, v0

    sub-float v19, v19, v20

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$MagnifierView;->mVerticalOffset:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    sub-float v19, v19, v20

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$MagnifierView;->mMagnifierViewHeight:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    sub-float v17, v19, v20

    const/16 v19, 0x0

    aget v19, v15, v19

    sub-int v19, v19, v12

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$MagnifierView;->this$0:Landroid/widget/Editor;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Landroid/widget/Editor;->-get14(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/widget/TextView;->getCompoundPaddingStart()I

    move-result v20

    add-int v19, v19, v20

    move/from16 v0, v19

    int-to-float v8, v0

    const/16 v19, 0x1

    aget v19, v15, v19

    sub-int v19, v19, v13

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$MagnifierView;->this$0:Landroid/widget/Editor;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Landroid/widget/Editor;->-get14(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v20

    add-int v19, v19, v20

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$MagnifierView;->mVerticalOffset:I

    move/from16 v20, v0

    sub-int v19, v19, v20

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$MagnifierView;->mMagnifierViewHeight:I

    move/from16 v20, v0

    sub-int v19, v19, v20

    move/from16 v0, v19

    int-to-float v9, v0

    const/16 v19, 0x0

    aget v19, v15, v19

    sub-int v19, v19, v12

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$MagnifierView;->this$0:Landroid/widget/Editor;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Landroid/widget/Editor;->-get14(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getMeasuredWidth()I

    move-result v20

    add-int v19, v19, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$MagnifierView;->this$0:Landroid/widget/Editor;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Landroid/widget/Editor;->-get14(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/widget/TextView;->getCompoundPaddingEnd()I

    move-result v20

    sub-int v19, v19, v20

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$MagnifierView;->mMagnifierViewWidth:I

    move/from16 v20, v0

    sub-int v19, v19, v20

    move/from16 v0, v19

    int-to-float v4, v0

    const/16 v19, 0x1

    aget v19, v15, v19

    sub-int v19, v19, v13

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$MagnifierView;->this$0:Landroid/widget/Editor;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Landroid/widget/Editor;->-get14(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getMeasuredHeight()I

    move-result v20

    add-int v19, v19, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$MagnifierView;->this$0:Landroid/widget/Editor;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Landroid/widget/Editor;->-get14(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v20

    sub-int v19, v19, v20

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$MagnifierView;->mVerticalOffset:I

    move/from16 v20, v0

    sub-int v19, v19, v20

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$MagnifierView;->mMagnifierViewHeight:I

    move/from16 v20, v0

    sub-int v19, v19, v20

    move/from16 v0, v19

    int-to-float v5, v0

    const/16 v19, 0x0

    cmpg-float v19, v5, v19

    if-gez v19, :cond_4

    const/4 v5, 0x0

    :cond_4
    move/from16 v0, v16

    invoke-static {v0, v8}, Ljava/lang/Math;->max(FF)F

    move-result v19

    const/16 v20, 0x0

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->max(FF)F

    move-result v19

    move/from16 v0, v19

    invoke-static {v0, v4}, Ljava/lang/Math;->min(FF)F

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/Editor$MagnifierView;->mPositionX:F

    move/from16 v0, v17

    invoke-static {v0, v9}, Ljava/lang/Math;->max(FF)F

    move-result v19

    const/16 v20, 0x0

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->max(FF)F

    move-result v19

    move/from16 v0, v19

    invoke-static {v0, v5}, Ljava/lang/Math;->min(FF)F

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/Editor$MagnifierView;->mPositionY:F

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$MagnifierView;->mTruncated:[F

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$MagnifierView;->mPositionX:F

    move/from16 v20, v0

    sub-float v20, v16, v20

    const/16 v21, 0x0

    aput v20, v19, v21

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$MagnifierView;->mTruncated:[F

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$MagnifierView;->mPositionY:F

    move/from16 v20, v0

    sub-float v20, v20, v17

    const/16 v21, 0x1

    aput v20, v19, v21

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$MagnifierView;->mTransitionOffset:[F

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$MagnifierView;->mTruncated:[F

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aget v20, v20, v21

    const/high16 v21, -0x40800000    # -1.0f

    mul-float v20, v20, v21

    const/16 v21, 0x0

    aput v20, v19, v21

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$MagnifierView;->mTransitionOffset:[F

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$MagnifierView;->mTruncated:[F

    move-object/from16 v20, v0

    const/16 v21, 0x1

    aget v20, v20, v21

    const/high16 v21, -0x40800000    # -1.0f

    mul-float v20, v20, v21

    const/16 v21, 0x1

    aput v20, v19, v21

    const/16 v19, 0x0

    aget v19, v15, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$MagnifierView;->this$0:Landroid/widget/Editor;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Landroid/widget/Editor;->-get14(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/widget/TextView;->getCompoundPaddingStart()I

    move-result v20

    add-int v19, v19, v20

    move/from16 v0, v19

    int-to-float v10, v0

    const/16 v19, 0x1

    aget v19, v15, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$MagnifierView;->this$0:Landroid/widget/Editor;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Landroid/widget/Editor;->-get14(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v20

    add-int v19, v19, v20

    move/from16 v0, v19

    int-to-float v11, v0

    const/16 v19, 0x0

    aget v19, v15, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$MagnifierView;->this$0:Landroid/widget/Editor;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Landroid/widget/Editor;->-get14(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getMeasuredWidth()I

    move-result v20

    add-int v19, v19, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$MagnifierView;->this$0:Landroid/widget/Editor;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Landroid/widget/Editor;->-get14(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/widget/TextView;->getCompoundPaddingEnd()I

    move-result v20

    sub-int v19, v19, v20

    move/from16 v0, v19

    int-to-float v6, v0

    const/16 v19, 0x1

    aget v19, v15, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$MagnifierView;->this$0:Landroid/widget/Editor;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Landroid/widget/Editor;->-get14(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getMeasuredHeight()I

    move-result v20

    add-int v19, v19, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$MagnifierView;->this$0:Landroid/widget/Editor;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Landroid/widget/Editor;->-get14(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v20

    sub-int v19, v19, v20

    move/from16 v0, v19

    int-to-float v7, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$MagnifierView;->mTruncated:[F

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aget v19, v19, v20

    const/16 v20, 0x0

    cmpl-float v19, v19, v20

    if-eqz v19, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$MagnifierView;->mTransitionOffset:[F

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const/16 v21, 0x0

    aput v20, v19, v21

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$MagnifierView;->mRawX:F

    move/from16 v19, v0

    cmpg-float v19, v19, v10

    if-gez v19, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$MagnifierView;->mTransitionOffset:[F

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$MagnifierView;->mRawX:F

    move/from16 v20, v0

    sub-float v20, v10, v20

    const/16 v21, 0x0

    aput v20, v19, v21

    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$MagnifierView;->mRawX:F

    move/from16 v19, v0

    cmpl-float v19, v19, v6

    if-lez v19, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$MagnifierView;->mTransitionOffset:[F

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$MagnifierView;->mRawX:F

    move/from16 v20, v0

    sub-float v20, v6, v20

    const/16 v21, 0x0

    aput v20, v19, v21

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$MagnifierView;->mTruncated:[F

    move-object/from16 v19, v0

    const/16 v20, 0x1

    aget v19, v19, v20

    const/16 v20, 0x0

    cmpl-float v19, v19, v20

    if-eqz v19, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$MagnifierView;->mTransitionOffset:[F

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const/16 v21, 0x1

    aput v20, v19, v21

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$MagnifierView;->mRawY:F

    move/from16 v19, v0

    cmpg-float v19, v19, v11

    if-gez v19, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$MagnifierView;->mTransitionOffset:[F

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$MagnifierView;->mRawY:F

    move/from16 v20, v0

    sub-float v20, v11, v20

    const/high16 v21, -0x40800000    # -1.0f

    mul-float v20, v20, v21

    const/16 v21, 0x1

    aput v20, v19, v21

    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$MagnifierView;->mRawY:F

    move/from16 v19, v0

    cmpl-float v19, v19, v7

    if-lez v19, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$MagnifierView;->mTransitionOffset:[F

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$MagnifierView;->mRawY:F

    move/from16 v20, v0

    sub-float v20, v7, v20

    const/high16 v21, -0x40800000    # -1.0f

    mul-float v20, v20, v21

    const/16 v21, 0x1

    aput v20, v19, v21

    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$MagnifierView;->mRectDst:Landroid/graphics/RectF;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$MagnifierView;->mPositionX:F

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$MagnifierView;->mPositionY:F

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$MagnifierView;->mPositionX:F

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$MagnifierView;->mMagnifierViewWidth:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    add-float v22, v22, v23

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$MagnifierView;->mPositionY:F

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$MagnifierView;->mMagnifierViewHeight:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    add-float v23, v23, v24

    invoke-virtual/range {v19 .. v23}, Landroid/graphics/RectF;->set(FFFF)V

    invoke-virtual/range {p0 .. p0}, Landroid/widget/Editor$MagnifierView;->getMagnifierScreen()V

    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor$MagnifierView;->updatePosition()V

    goto/16 :goto_1

    :pswitch_1
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/Editor$MagnifierView;->mDrawing:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$MagnifierView;->mUpdateHandler:Landroid/widget/Editor$MagnifierView$UpdateMagnifierHandler;

    move-object/from16 v19, v0

    const/16 v20, 0x65

    invoke-virtual/range {v19 .. v20}, Landroid/os/Handler;->removeMessages(I)V

    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor$MagnifierView;->dismiss()V

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-boolean v0, p0, Landroid/widget/Editor$MagnifierView;->mDrawing:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/widget/Editor$MagnifierView;->mAction:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/widget/Editor$MagnifierView;->mBorderBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Landroid/widget/Editor$MagnifierView;->mRectSrc:Landroid/graphics/Rect;

    iget-object v2, p0, Landroid/widget/Editor$MagnifierView;->mRectDst:Landroid/graphics/RectF;

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    iget-object v0, p0, Landroid/widget/Editor$MagnifierView;->mUpdateHandler:Landroid/widget/Editor$MagnifierView$UpdateMagnifierHandler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4

    iget-object v3, p0, Landroid/widget/Editor$MagnifierView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {p0, v2, v1}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public setExtraVerticalOffset(F)V
    .locals 1

    const v0, 0x3fa66666    # 1.3f

    mul-float/2addr v0, p1

    iput v0, p0, Landroid/widget/Editor$MagnifierView;->mExtraVerticalOffset:F

    return-void
.end method

.method public stopMagnifier()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/Editor$MagnifierView;->mDrawing:Z

    iget-object v0, p0, Landroid/widget/Editor$MagnifierView;->mUpdateHandler:Landroid/widget/Editor$MagnifierView$UpdateMagnifierHandler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    invoke-direct {p0}, Landroid/widget/Editor$MagnifierView;->dismiss()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/Editor$MagnifierView;->mIsFirstTouchDown:Z

    return-void
.end method
