.class public Lcom/sec/android/app/camera/shootingmode/WideSelfie;
.super Ljava/lang/Object;
.source "WideSelfie.java"

# interfaces
.implements Lcom/sec/android/app/camera/interfaces/ShootingMode;
.implements Lcom/samsung/android/camera/core/SemCamera$WideSelfieEventListener;
.implements Lcom/samsung/android/glview/GLView$OrientationChangeListener;
.implements Lcom/sec/android/app/camera/interfaces/CameraContext$HRMShutterListener;
.implements Lcom/sec/android/app/camera/interfaces/Engine$DBUpdateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/shootingmode/WideSelfie$WideSelfieHandler;
    }
.end annotation


# static fields
.field private static final DELAY_TO_HIDE_PROGRESS_POPUP:I = 0x32

.field private static final GUIDETEXT_LEFT:I = 0x1

.field private static final GUIDETEXT_NONE:I = 0x3

.field private static final GUIDETEXT_RIGHT:I = 0x2

.field private static final GUIDETEXT_START:I = 0x0

.field private static final LANDSCAPE_CAPTURE_COUNT:I = 0x3

.field private static final MESSAGE_HIDE_PROGRESS_POPUP:I = 0x8

.field private static final MESSAGE_SHOW_LIVEPREVIEW:I = 0x7

.field private static final MESSAGE_TIMEOUT_CANCEL:I = 0x1

.field private static final MESSAGE_TIMEOUT_GUIDETEXT:I = 0x4

.field private static final MESSAGE_TIMEOUT_SKIP_CAPTURE:I = 0x5

.field private static final MESSAGE_TIMEOUT_SKIP_CHECK_WARNING:I = 0x6

.field private static final MESSAGE_WIDE_SELFIE_WARNING_HIGH:I = 0x3

.field private static final MESSAGE_WIDE_SELFIE_WARNING_LOW:I = 0x2

.field private static final PORTRATE_CAPTURE_COUNT:I = 0x5

.field private static final PREVIEW_RATIO:F = 1.3333334f

.field private static final PROCESS_TIMER_TIMEOUT:I = 0x4e20

.field protected static final TAG:Ljava/lang/String; = "WideSelfie"

.field private static final WARNINGTEXT_MOVE_SLOWLY:I = 0x4

.field private static final WARNINGTEXT_WARNING_DOWN:I = 0x1

.field private static final WARNINGTEXT_WARNING_LEFT:I = 0x2

.field private static final WARNINGTEXT_WARNING_RIGHT:I = 0x3

.field private static final WARNINGTEXT_WARNING_UP:I = 0x0

.field private static final WARNING_DOWN:I = 0x1

.field private static final WARNING_LEFT:I = 0x2

.field private static final WARNING_LEVEL_HIGH:I = 0x2

.field private static final WARNING_LEVEL_LOW:I = 0x1

.field private static final WARNING_LEVEL_NONE:I = 0x0

.field private static final WARNING_LEVEL_STOP:I = 0x3

.field private static final WARNING_NONE:I = 0x4

.field private static final WARNING_RIGHT:I = 0x3

.field private static final WARNING_UP:I = 0x0

.field private static final WIDE_SELFIE_ERROR_BLURED_RESULT_IMAGE:I = 0x4

.field private static final WIDE_SELFIE_ERROR_NO_DIRECTION:I = 0x1

.field private static final WIDE_SELFIE_ERROR_REACHED_MAX_FRAME_COUNT:I = 0x3

.field private static final WIDE_SELFIE_ERROR_STITCHING:I = 0x0

.field private static final WIDE_SELFIE_ERROR_TRACING:I = 0x2


# instance fields
.field private final ANIMATION_TOP_MARGIN_LEFT:F

.field private final ANIMATION_TOP_MARGIN_TOP:F

.field private final ARROW_LANDSCAPE_OVERLAY:F

.field private final ARROW_MARGIN:F

.field private final BACKGROUND_RECT_PORTRAIT_X:F

.field private final BACKGROUND_RECT_PORTRAIT_Y:F

.field private FOCUS_RECT_LANDSCAPE_X:F

.field private final FOCUS_RECT_LANDSCAPE_Y:F

.field private final FOCUS_RECT_PORTRAIT_X:F

.field private FOCUS_RECT_PORTRAIT_Y:F

.field private final GUIDE_TEXT_FONT_COLOR:I

.field private final GUIDE_TEXT_HEIGHT:F

.field private GUIDE_TEXT_PORTRAIT_HEIGHT:F

.field private GUIDE_TEXT_PORTRAIT_WIDTH:F

.field private final GUIDE_TEXT_PORTRAIT_X:F

.field private final GUIDE_TEXT_PORTRAIT_Y:F

.field private final GUIDE_TEXT_POS_X:F

.field private final GUIDE_TEXT_POS_Y:F

.field private final GUIDE_TEXT_SIZE:F

.field private final GUIDE_TEXT_STROKE_COLOR:I

.field private final GUIDE_TEXT_STROKE_WIDTH:I

.field private final GUIDE_TEXT_WIDTH:F

.field private final LIVEPREVIEW_LANDSCAPE_HEIGHT:F

.field private LIVEPREVIEW_LANDSCAPE_WIDTH:F

.field private final LIVEPREVIEW_LANDSCAPE_X:F

.field private final LIVEPREVIEW_LANDSCAPE_Y:F

.field private LIVEPREVIEW_PORTRAIT_HEIGHT:F

.field private final LIVEPREVIEW_PORTRAIT_WIDTH:F

.field private final LIVEPREVIEW_PORTRAIT_X:F

.field private final LIVEPREVIEW_PORTRAIT_Y:F

.field private final LIVEPREVIEW_RECT_THICKNESS:F

.field private final LIVEPREVIEW_SCREEN_WIDTH:I

.field private final LIVEPREVIEW_SINGLE_HEIGHT:F

.field private final LIVEPREVIEW_SINGLE_PORTRAIT_HEIGHT:F

.field private final LIVEPREVIEW_SINGLE_PORTRAIT_WIDTH:F

.field private LIVEPREVIEW_SINGLE_PORTRAIT_Y:F

.field private final LIVEPREVIEW_SINGLE_WIDTH:F

.field private LIVEPREVIEW_SINGLE_X:F

.field private final NEXT_CAPTURE_FOCUS_LINE_WIDTH:F

.field private final NEXT_CAPTURE_FOCUS_PORTRAIT_X:F

.field private final PREVIEW_PORTRAIT_MARGIN:F

.field private final PREVIEW_PORTRAIT_RIGHT_MARGIN:F

.field private final PREVIEW_TOP_MARGIN:F

.field private final SCREEN_CROP_LANDSCAPE_HEIGHT:I

.field private final SCREEN_CROP_PORTRAIT_BOTTOM_OFFSET_NORMAL:I

.field private final SCREEN_CROP_PORTRAIT_OFFSET_NORMAL:I

.field private final SCREEN_CROP_PORTRAIT_TOP_OFFSET_NORMAL:I

.field private final SCREEN_CROP_PORTRAIT_WIDTH_NORMAL:I

.field private final SCREEN_HEIGHT:I

.field private final SCREEN_WIDTH:I

.field private final SHUTTER_BUTTON_PORTRAIT_BOTTOM_PADDING:F

.field private final SHUTTER_BUTTON_WIDTH:F

.field private final STOP_BUTTON_DIAMETER:I

.field private final STOP_BUTTON_POS_X:I

.field private final STOP_BUTTON_POS_Y:I

.field private mAnimationDirection:Z

.field private mBackgroundRect:Lcom/samsung/android/glview/GLNinePatch;

.field private mBackgroundRectGroup:Lcom/samsung/android/glview/GLViewGroup;

.field private mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

.field private mBlinkAnimation:Landroid/view/animation/AlphaAnimation;

.field private mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

.field private mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

.field private mCaptureCount:I

.field private mCaptureFocusRect:Lcom/samsung/android/glview/GLNinePatch;

.field private mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

.field private mChanged:Z

.field private mCropLandscapeDownArea:Lcom/samsung/android/glview/GLNinePatch;

.field private mCropLandscapeUpArea:Lcom/samsung/android/glview/GLNinePatch;

.field private mCropPortraitDownArea:Lcom/samsung/android/glview/GLNinePatch;

.field private mCropPortraitUpArea:Lcom/samsung/android/glview/GLNinePatch;

.field private mCurrentDirection:I

.field private mCurrentOrientation:I

.field private mDetectedDirection:I

.field private mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

.field private mFocusRectCenterX:F

.field private mFocusRectCenterY:F

.field private mFocusRectLeft:F

.field private mFocusRectTop:F

.field private mGLContext:Lcom/samsung/android/glview/GLContext;

.field private mGuideArrow:[Lcom/samsung/android/glview/GLImage;

.field private mGuideRect:[Lcom/samsung/android/glview/GLImage;

.field private mGuideShow:Z

.field private mGuideState:I

.field private mGuideText:Lcom/samsung/android/glview/GLText;

.field private mHeight:F

.field private mIsCapturePreparing:Z

.field private mIsStartCapture:Z

.field private mIsWideSelfieCaptureStarted:Z

.field private mLeftBottomX:F

.field private mLeftBottomY:F

.field private mLeftTopX:F

.field private mLeftTopY:F

.field private mLivePreview:Lcom/samsung/android/glview/GLBitmapTexture;

.field private mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

.field private mLivePreviewPortraitHeightMargin:F

.field private mLivePreviewRealThumbnailHeight:F

.field private mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

.field private mMovingDetection:Z

.field private mNextCaptureFocusRect:Lcom/samsung/android/glview/GLImage;

.field private mNextCaptureFocusRectCenterX:F

.field private mNextCaptureFocusRectCenterY:F

.field private mNextCaptureFocusRectLeft:F

.field private mNextCaptureFocusRectPort:Lcom/samsung/android/glview/GLImage;

.field private mNextCaptureFocusRectTop:F

.field private mNextCaptureFocusStep:I

.field private mPlayHaptic:Z

.field private mPostProgress:I

.field private mPrevFocusRectCenterX:F

.field private mPrevFocusRectCenterY:F

.field private mPrevThumbnailHeight:F

.field private mPrevThumbnailScaleFactor:F

.field private mPrevThumbnailWidth:F

.field private mPreviewFocusRect:Lcom/samsung/android/glview/GLNinePatch;

.field private mPreviewThumbnailHeight:F

.field private mPreviewThumbnailLeft:F

.field private mPreviewThumbnailTop:F

.field private mPreviewThumbnailWidth:F

.field private mRightBottomX:F

.field private mRightBottomY:F

.field private mRightTopX:F

.field private mRightTopY:F

.field private mSkipCapture:Z

.field private mSkipCheckWarning:Z

.field private mSkipFrame:I

.field private mSkipFrameOnWideSelfie:Z

.field private mStartCheckWarning:Z

.field private mTimerMenu:Lcom/sec/android/app/camera/menu/TimerCountingMenu;

.field private mTrapezoidCaptureFocusRect:Lcom/sec/android/app/camera/widget/gl/Trapezoid;

.field private mTwoBlinkAnimation:Landroid/view/animation/AlphaAnimation;

.field private mViewLayout:Lcom/samsung/android/glview/GLViewGroup;

.field private mWarningArrow:[Lcom/samsung/android/glview/GLImage;

.field private mWarningText:Lcom/samsung/android/glview/GLText;

.field private mWideSelfieMsgHandler:Lcom/sec/android/app/camera/shootingmode/WideSelfie$WideSelfieHandler;

.field private mWideSelfieWarning:Z

.field private mWidth:F

.field private misWideSelfieCapturing:Z

.field private misWideSelfieStopping:Z


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/CameraSettings;)V
    .locals 6

    const/high16 v5, 0x40000000    # 2.0f

    const v1, 0x3faaaaab

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7f0b024b

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_SCREEN_WIDTH:I

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenWidthPixels()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->SCREEN_WIDTH:I

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenHeightPixels()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->SCREEN_HEIGHT:I

    const v0, 0x7f0b023e

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->GUIDE_TEXT_WIDTH:F

    const v0, 0x7f0b023a

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->GUIDE_TEXT_HEIGHT:F

    const v0, 0x7f0b0051

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->GUIDE_TEXT_POS_X:F

    const v0, 0x7f0b023d

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->GUIDE_TEXT_POS_Y:F

    const v0, 0x7f0b003f

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->GUIDE_TEXT_PORTRAIT_X:F

    const v0, 0x7f0b0040

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->GUIDE_TEXT_PORTRAIT_Y:F

    const v0, 0x7f0b028f

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->GUIDE_TEXT_SIZE:F

    const v0, 0x7f0e0017

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->GUIDE_TEXT_STROKE_WIDTH:I

    const v0, 0x7f0d000f

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->GUIDE_TEXT_STROKE_COLOR:I

    const v0, 0x7f0d001d

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->GUIDE_TEXT_FONT_COLOR:I

    const v0, 0x7f0b0237

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->ARROW_MARGIN:F

    const v0, 0x7f0b0236

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->ARROW_LANDSCAPE_OVERLAY:F

    const v0, 0x7f0b023f

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_LANDSCAPE_HEIGHT:F

    const v0, 0x7f0b0241

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_LANDSCAPE_X:F

    const v0, 0x7f0b0242

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_LANDSCAPE_Y:F

    const v0, 0x7f0b0244

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    div-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_PORTRAIT_WIDTH:F

    const v0, 0x7f0b0245

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_PORTRAIT_X:F

    const v0, 0x7f0b0246

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_PORTRAIT_Y:F

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_LANDSCAPE_HEIGHT:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_SINGLE_WIDTH:F

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_LANDSCAPE_HEIGHT:F

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_SINGLE_HEIGHT:F

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_PORTRAIT_WIDTH:F

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_SINGLE_PORTRAIT_WIDTH:F

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_PORTRAIT_WIDTH:F

    div-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_SINGLE_PORTRAIT_HEIGHT:F

    const v0, 0x7f0b0247

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_RECT_THICKNESS:F

    const v0, 0x7f0b0248

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->NEXT_CAPTURE_FOCUS_LINE_WIDTH:F

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_PORTRAIT_X:F

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->NEXT_CAPTURE_FOCUS_LINE_WIDTH:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->NEXT_CAPTURE_FOCUS_PORTRAIT_X:F

    const v0, 0x7f0b0238

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->BACKGROUND_RECT_PORTRAIT_X:F

    const v0, 0x7f0b0239

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->BACKGROUND_RECT_PORTRAIT_Y:F

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_LANDSCAPE_Y:F

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->FOCUS_RECT_LANDSCAPE_Y:F

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_PORTRAIT_X:F

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->FOCUS_RECT_PORTRAIT_X:F

    const v0, 0x7f0b024a

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->PREVIEW_TOP_MARGIN:F

    const v0, 0x7f0b0041

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->PREVIEW_PORTRAIT_MARGIN:F

    const v0, 0x7f0b0249

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->PREVIEW_PORTRAIT_RIGHT_MARGIN:F

    const v0, 0x7f0b0053

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->ANIMATION_TOP_MARGIN_TOP:F

    const v0, 0x7f0b0052

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->ANIMATION_TOP_MARGIN_LEFT:F

    const v0, 0x7f0b01d6

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->STOP_BUTTON_DIAMETER:I

    const v0, 0x7f0b003c

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->SCREEN_CROP_LANDSCAPE_HEIGHT:I

    const v0, 0x7f0b003e

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->SCREEN_CROP_PORTRAIT_WIDTH_NORMAL:I

    const v0, 0x7f0b003d

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->SCREEN_CROP_PORTRAIT_OFFSET_NORMAL:I

    const v0, 0x7f0b0144

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->SCREEN_CROP_PORTRAIT_TOP_OFFSET_NORMAL:I

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->SCREEN_CROP_PORTRAIT_OFFSET_NORMAL:I

    const v1, 0x7f0b0144

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->SCREEN_CROP_PORTRAIT_BOTTOM_OFFSET_NORMAL:I

    const v0, 0x7f0b01d8

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->SHUTTER_BUTTON_WIDTH:F

    const v0, 0x7f0b034d

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->SHUTTER_BUTTON_PORTRAIT_BOTTOM_PADDING:F

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->SCREEN_WIDTH:I

    int-to-float v0, v0

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->SHUTTER_BUTTON_PORTRAIT_BOTTOM_PADDING:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->SHUTTER_BUTTON_WIDTH:F

    sub-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->STOP_BUTTON_POS_X:I

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->SCREEN_HEIGHT:I

    int-to-float v0, v0

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->SHUTTER_BUTTON_WIDTH:F

    sub-float/2addr v0, v1

    div-float/2addr v0, v5

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->STOP_BUTTON_POS_Y:I

    iput-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWideSelfieMsgHandler:Lcom/sec/android/app/camera/shootingmode/WideSelfie$WideSelfieHandler;

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->SCREEN_HEIGHT:I

    int-to-float v0, v0

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->PREVIEW_PORTRAIT_RIGHT_MARGIN:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->GUIDE_TEXT_PORTRAIT_HEIGHT:F

    const v0, 0x7f0b023c

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->GUIDE_TEXT_PORTRAIT_WIDTH:F

    const v0, 0x7f0b0240

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_LANDSCAPE_WIDTH:F

    const v0, 0x7f0b0243

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_LANDSCAPE_WIDTH:F

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_SINGLE_WIDTH:F

    sub-float/2addr v0, v1

    div-float/2addr v0, v5

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_SINGLE_X:F

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_SINGLE_PORTRAIT_HEIGHT:F

    sub-float/2addr v0, v1

    div-float/2addr v0, v5

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_SINGLE_PORTRAIT_Y:F

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_LANDSCAPE_X:F

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_SINGLE_X:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->FOCUS_RECT_LANDSCAPE_X:F

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_PORTRAIT_Y:F

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_SINGLE_PORTRAIT_Y:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->FOCUS_RECT_PORTRAIT_Y:F

    iput v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCaptureCount:I

    iput v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mSkipFrame:I

    iput-boolean v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mIsCapturePreparing:Z

    iput v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCurrentOrientation:I

    iput-boolean v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mIsStartCapture:Z

    iput-boolean v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mSkipCapture:Z

    iput-boolean v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mSkipCheckWarning:Z

    iput-boolean v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mIsWideSelfieCaptureStarted:Z

    iput-boolean v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->misWideSelfieCapturing:Z

    iput-boolean v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->misWideSelfieStopping:Z

    iput-boolean v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWideSelfieWarning:Z

    iput-boolean v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPlayHaptic:Z

    iput-boolean v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mSkipFrameOnWideSelfie:Z

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPreviewThumbnailWidth:F

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPreviewThumbnailHeight:F

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPreviewThumbnailLeft:F

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPreviewThumbnailTop:F

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPrevThumbnailWidth:F

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPrevThumbnailHeight:F

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPrevThumbnailScaleFactor:F

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mFocusRectCenterX:F

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mFocusRectCenterY:F

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mFocusRectLeft:F

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mFocusRectTop:F

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPrevFocusRectCenterX:F

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPrevFocusRectCenterY:F

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLeftTopX:F

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLeftTopY:F

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mRightTopX:F

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mRightTopY:F

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mRightBottomX:F

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mRightBottomY:F

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLeftBottomX:F

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLeftBottomY:F

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWidth:F

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mHeight:F

    iput-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCropLandscapeUpArea:Lcom/samsung/android/glview/GLNinePatch;

    iput-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCropLandscapeDownArea:Lcom/samsung/android/glview/GLNinePatch;

    iput-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCropPortraitUpArea:Lcom/samsung/android/glview/GLNinePatch;

    iput-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCropPortraitDownArea:Lcom/samsung/android/glview/GLNinePatch;

    iput-boolean v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mStartCheckWarning:Z

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/samsung/android/glview/GLImage;

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    const/16 v0, 0xe

    new-array v0, v0, [Lcom/samsung/android/glview/GLImage;

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideArrow:[Lcom/samsung/android/glview/GLImage;

    const/16 v0, 0xe

    new-array v0, v0, [Lcom/samsung/android/glview/GLImage;

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideRect:[Lcom/samsung/android/glview/GLImage;

    iput-boolean v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mAnimationDirection:Z

    iput-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

    iput-boolean v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mChanged:Z

    iput-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideText:Lcom/samsung/android/glview/GLText;

    iput-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningText:Lcom/samsung/android/glview/GLText;

    iput-boolean v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideShow:Z

    const/4 v0, 0x3

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideState:I

    iput-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mBlinkAnimation:Landroid/view/animation/AlphaAnimation;

    iput-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mTwoBlinkAnimation:Landroid/view/animation/AlphaAnimation;

    iput v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPostProgress:I

    iput-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iput-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    iput-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    iput-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    iput-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mTimerMenu:Lcom/sec/android/app/camera/menu/TimerCountingMenu;

    iput-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    iput-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGLContext:Lcom/samsung/android/glview/GLContext;

    iput-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mViewLayout:Lcom/samsung/android/glview/GLViewGroup;

    iput-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    iput-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPreviewFocusRect:Lcom/samsung/android/glview/GLNinePatch;

    iput-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mBackgroundRectGroup:Lcom/samsung/android/glview/GLViewGroup;

    iput-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLivePreview:Lcom/samsung/android/glview/GLBitmapTexture;

    iput-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mBackgroundRect:Lcom/samsung/android/glview/GLNinePatch;

    iput-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCaptureFocusRect:Lcom/samsung/android/glview/GLNinePatch;

    iput-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mTrapezoidCaptureFocusRect:Lcom/sec/android/app/camera/widget/gl/Trapezoid;

    iput-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mNextCaptureFocusRect:Lcom/samsung/android/glview/GLImage;

    iput-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mNextCaptureFocusRectPort:Lcom/samsung/android/glview/GLImage;

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mNextCaptureFocusRectLeft:F

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mNextCaptureFocusRectTop:F

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mNextCaptureFocusRectCenterX:F

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mNextCaptureFocusRectCenterY:F

    iput v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mNextCaptureFocusStep:I

    iput v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mDetectedDirection:I

    iput v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCurrentDirection:I

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLivePreviewRealThumbnailHeight:F

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLivePreviewPortraitHeightMargin:F

    iput-boolean v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mMovingDetection:Z

    new-instance v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie$1;-><init>(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iput-object p2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/shootingmode/WideSelfie;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->setHRMsensor(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)Lcom/sec/android/app/camera/interfaces/CameraContext;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)Landroid/view/animation/AlphaAnimation;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mTwoBlinkAnimation:Landroid/view/animation/AlphaAnimation;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/sec/android/app/camera/shootingmode/WideSelfie;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->showGuideRect(I)V

    return-void
.end method

.method static synthetic access$1200(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->clearWideSelfieRect()V

    return-void
.end method

.method static synthetic access$1300(Lcom/sec/android/app/camera/shootingmode/WideSelfie;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->setHapticEnabled(Z)V

    return-void
.end method

.method static synthetic access$1400(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->cancelWideSelfieCapture()V

    return-void
.end method

.method static synthetic access$1500(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->reset()V

    return-void
.end method

.method static synthetic access$1600(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->showPreviewGroup()V

    return-void
.end method

.method static synthetic access$1700(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWideSelfieWarning:Z

    return v0
.end method

.method static synthetic access$1800(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->hideGuideText()V

    return-void
.end method

.method static synthetic access$1902(Lcom/sec/android/app/camera/shootingmode/WideSelfie;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mSkipCapture:Z

    return p1
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)Landroid/content/BroadcastReceiver;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/sec/android/app/camera/shootingmode/WideSelfie;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->setSkipCheckWarning(Z)V

    return-void
.end method

.method static synthetic access$2100(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)Lcom/sec/android/app/camera/shootingmode/WideSelfie$WideSelfieHandler;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWideSelfieMsgHandler:Lcom/sec/android/app/camera/shootingmode/WideSelfie$WideSelfieHandler;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/sec/android/app/camera/shootingmode/WideSelfie;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->setPostCaptureProgress(I)V

    return-void
.end method

.method static synthetic access$2300(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)Lcom/sec/android/app/camera/interfaces/BaseMenuController;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    return-object v0
.end method

.method static synthetic access$302(Lcom/sec/android/app/camera/shootingmode/WideSelfie;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->misWideSelfieStopping:Z

    return p1
.end method

.method static synthetic access$400(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)Lcom/sec/android/app/camera/interfaces/Engine;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->hideStopButton()V

    return-void
.end method

.method static synthetic access$700(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCurrentOrientation:I

    return v0
.end method

.method static synthetic access$800(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)[Lcom/samsung/android/glview/GLImage;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideArrow:[Lcom/samsung/android/glview/GLImage;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mAnimationDirection:Z

    return v0
.end method

.method static synthetic access$902(Lcom/sec/android/app/camera/shootingmode/WideSelfie;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mAnimationDirection:Z

    return p1
.end method

.method private calcLivePreviewSize(FFFF)F
    .locals 4

    const/high16 v2, 0x40000000    # 2.0f

    const/4 v0, 0x0

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCurrentOrientation:I

    packed-switch v1, :pswitch_data_0

    :goto_0
    return v0

    :pswitch_0
    mul-float v1, v2, p1

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPrevThumbnailScaleFactor:F

    mul-float/2addr v1, v2

    sub-float v2, p3, p1

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPrevThumbnailScaleFactor:F

    mul-float/2addr v2, v3

    add-float v0, v1, v2

    goto :goto_0

    :pswitch_1
    mul-float v1, v2, p2

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPrevThumbnailScaleFactor:F

    mul-float/2addr v1, v2

    sub-float v2, p4, p2

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPrevThumbnailScaleFactor:F

    mul-float/2addr v2, v3

    add-float v0, v1, v2

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private cancelWideSelfieCapture()V
    .locals 3

    const/4 v2, 0x1

    const-string v0, "WideSelfie"

    const-string v1, "cancelCaptureForWideSelfie"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->waitForWideSelfieStartThreadComplete()V

    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mIsWideSelfieCaptureStarted:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getCurrentStateId()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->stopPreview()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->cancelWideSelfie()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->unlockAEAWB()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->abandonAudioFocus()V

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mIsWideSelfieCaptureStarted:Z

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->startFaceDetection()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->scheduleStartPreview()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getGestureControlMode()I

    move-result v0

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/Engine;->setGestureControlMode(I)V

    :cond_2
    return-void
.end method

.method private clearMessageHandler()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWideSelfieMsgHandler:Lcom/sec/android/app/camera/shootingmode/WideSelfie$WideSelfieHandler;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/WideSelfie$WideSelfieHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWideSelfieMsgHandler:Lcom/sec/android/app/camera/shootingmode/WideSelfie$WideSelfieHandler;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie$WideSelfieHandler;->access$600(Lcom/sec/android/app/camera/shootingmode/WideSelfie$WideSelfieHandler;)V

    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWideSelfieMsgHandler:Lcom/sec/android/app/camera/shootingmode/WideSelfie$WideSelfieHandler;

    return-void
.end method

.method private clearTrapezoidFocusRect()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mTrapezoidCaptureFocusRect:Lcom/sec/android/app/camera/widget/gl/Trapezoid;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mViewLayout:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mTrapezoidCaptureFocusRect:Lcom/sec/android/app/camera/widget/gl/Trapezoid;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->removeView(Lcom/samsung/android/glview/GLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mTrapezoidCaptureFocusRect:Lcom/sec/android/app/camera/widget/gl/Trapezoid;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/Trapezoid;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mTrapezoidCaptureFocusRect:Lcom/sec/android/app/camera/widget/gl/Trapezoid;

    :cond_0
    return-void
.end method

.method private clearWideSelfieRect()V
    .locals 4

    const/4 v3, 0x4

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLivePreview:Lcom/samsung/android/glview/GLBitmapTexture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLivePreview:Lcom/samsung/android/glview/GLBitmapTexture;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLViewGroup;->removeView(Lcom/samsung/android/glview/GLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLivePreview:Lcom/samsung/android/glview/GLBitmapTexture;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLBitmapTexture;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLivePreview:Lcom/samsung/android/glview/GLBitmapTexture;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPreviewFocusRect:Lcom/samsung/android/glview/GLNinePatch;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPreviewFocusRect:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLNinePatch;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mBackgroundRectGroup:Lcom/samsung/android/glview/GLViewGroup;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mBackgroundRectGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLViewGroup;->resetTranslate()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mBackgroundRect:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLNinePatch;->resetTranslate()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mBackgroundRectGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCaptureFocusRect:Lcom/samsung/android/glview/GLNinePatch;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCaptureFocusRect:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLNinePatch;->setVisibility(I)V

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideText:Lcom/samsung/android/glview/GLText;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningText:Lcom/samsung/android/glview/GLText;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mNextCaptureFocusRect:Lcom/samsung/android/glview/GLImage;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mNextCaptureFocusRect:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mNextCaptureFocusRectPort:Lcom/samsung/android/glview/GLImage;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mNextCaptureFocusRectPort:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    :cond_7
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mTrapezoidCaptureFocusRect:Lcom/sec/android/app/camera/widget/gl/Trapezoid;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mTrapezoidCaptureFocusRect:Lcom/sec/android/app/camera/widget/gl/Trapezoid;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/widget/gl/Trapezoid;->setVisibility(I)V

    :cond_8
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->hideWarningArrow()V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private createTrapezoidFocusRect()V
    .locals 6

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mTrapezoidCaptureFocusRect:Lcom/sec/android/app/camera/widget/gl/Trapezoid;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/app/camera/widget/gl/Trapezoid;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGLContext:Lcom/samsung/android/glview/GLContext;

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_SINGLE_WIDTH:F

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_SINGLE_HEIGHT:F

    move v3, v2

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/widget/gl/Trapezoid;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mTrapezoidCaptureFocusRect:Lcom/sec/android/app/camera/widget/gl/Trapezoid;

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mTrapezoidCaptureFocusRect:Lcom/sec/android/app/camera/widget/gl/Trapezoid;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/Trapezoid;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mTrapezoidCaptureFocusRect:Lcom/sec/android/app/camera/widget/gl/Trapezoid;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/Trapezoid;->setBypassTouch(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mViewLayout:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mTrapezoidCaptureFocusRect:Lcom/sec/android/app/camera/widget/gl/Trapezoid;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    :cond_0
    return-void
.end method

.method private decodeRgbaBitmap([B)Landroid/graphics/Bitmap;
    .locals 9

    const/16 v8, 0x10

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    array-length v6, p1

    if-ge v6, v8, :cond_1

    :cond_0
    const-string v6, "WideSelfie"

    const-string v7, "Util.decodeRgbaBitmap: Received null or invalid data"

    invoke-static {v6, v7}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v1

    :cond_1
    const/4 v6, 0x0

    aget-byte v6, p1, v6

    const/16 v7, 0x52

    if-ne v6, v7, :cond_2

    const/4 v6, 0x1

    aget-byte v6, p1, v6

    const/16 v7, 0x47

    if-ne v6, v7, :cond_2

    const/4 v6, 0x2

    aget-byte v6, p1, v6

    const/16 v7, 0x42

    if-ne v6, v7, :cond_2

    const/4 v6, 0x3

    aget-byte v6, p1, v6

    const/16 v7, 0x41

    if-eq v6, v7, :cond_3

    :cond_2
    const-string v6, "WideSelfie"

    const-string v7, "Util.decodeRgbaBitmap: Data is invalid (RGBA tag not found)"

    invoke-static {v6, v7}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    const/4 v6, 0x4

    :try_start_0
    invoke-static {p1, v6}, Lcom/sec/android/app/camera/util/Util;->byteArrayToInt([BI)I

    move-result v5

    const/16 v6, 0x8

    invoke-static {p1, v6}, Lcom/sec/android/app/camera/util/Util;->byteArrayToInt([BI)I
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    array-length v6, p1

    mul-int v7, v5, v3

    mul-int/lit8 v7, v7, 0x4

    add-int/lit8 v7, v7, 0x10

    if-ge v6, v7, :cond_4

    const-string v6, "WideSelfie"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Util.decodeRgbaBitmap: The buffer is too small to contain a image of "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "x"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v6, "WideSelfie"

    const-string v7, "Util.decodeRgbaBitmap: Could not parse panorama bitmap header"

    invoke-static {v6, v7}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    :try_start_1
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v3, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    array-length v6, p1

    add-int/lit8 v6, v6, -0x10

    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    array-length v6, p1

    add-int/lit8 v6, v6, -0x10

    invoke-virtual {v0, p1, v8, v6}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    invoke-virtual {v1, v0}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    goto/16 :goto_0

    :catch_1
    move-exception v4

    const-string v6, "WideSelfie"

    const-string v7, "Util.decodeRgbaBitmap: Out of memory [1]"

    invoke-static {v6, v7}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private declared-synchronized getCaptureProgressIncreased()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCaptureCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private getFocusRectDistance()F
    .locals 3

    const/4 v0, 0x0

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCurrentOrientation:I

    packed-switch v1, :pswitch_data_0

    :goto_0
    return v0

    :pswitch_0
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPrevFocusRectCenterX:F

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mFocusRectCenterX:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    goto :goto_0

    :pswitch_1
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPrevFocusRectCenterY:F

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mFocusRectCenterY:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getGuideDirection(I)I
    .locals 3

    const/4 v0, 0x2

    const/4 v1, 0x1

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mDetectedDirection:I

    if-ne v2, v0, :cond_2

    if-ne p1, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mDetectedDirection:I

    if-ne v2, v1, :cond_3

    if-ne p1, v1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_3
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private getSkipCheckWarning()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mSkipCheckWarning:Z

    return v0
.end method

.method private hideCropArea()V
    .locals 3

    const/4 v2, 0x4

    const-string v0, "WideSelfie"

    const-string v1, "hideCropArea"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCropLandscapeDownArea:Lcom/samsung/android/glview/GLNinePatch;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCropLandscapeUpArea:Lcom/samsung/android/glview/GLNinePatch;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCropPortraitDownArea:Lcom/samsung/android/glview/GLNinePatch;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCropPortraitUpArea:Lcom/samsung/android/glview/GLNinePatch;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCropLandscapeUpArea:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLNinePatch;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCropLandscapeDownArea:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLNinePatch;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCropPortraitUpArea:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLNinePatch;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCropPortraitDownArea:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLNinePatch;->setVisibility(I)V

    goto :goto_0
.end method

.method private hideGuideRect()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0xe

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideRect:[Lcom/samsung/android/glview/GLImage;

    aget-object v1, v1, v0

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private hideGuideText()V
    .locals 3

    const/4 v2, 0x4

    const-string v0, "WideSelfie"

    const-string v1, "hideGuideText"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideText:Lcom/samsung/android/glview/GLText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWideSelfieMsgHandler:Lcom/sec/android/app/camera/shootingmode/WideSelfie$WideSelfieHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWideSelfieMsgHandler:Lcom/sec/android/app/camera/shootingmode/WideSelfie$WideSelfieHandler;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/shootingmode/WideSelfie$WideSelfieHandler;->removeMessages(I)V

    :cond_0
    return-void
.end method

.method private hideStopButton()V
    .locals 2

    const-string v0, "WideSelfie"

    const-string v1, "hideStopButton"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    return-void
.end method

.method private hideWarningArrow()V
    .locals 5

    const/16 v4, 0xe

    const/4 v3, 0x4

    const-string v1, "WideSelfie"

    const-string v2, "hideWarningArrow"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLImage;->resetTranslate()V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v1, v1, v0

    invoke-virtual {v1, v3}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v4, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLImage;->resetTranslate()V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v1, v1, v0

    invoke-virtual {v1, v3}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_2
    if-ge v0, v4, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideRect:[Lcom/samsung/android/glview/GLImage;

    aget-object v1, v1, v0

    invoke-virtual {v1, v3}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method private hideWarningText()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningText:Lcom/samsung/android/glview/GLText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningText:Lcom/samsung/android/glview/GLText;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mTrapezoidCaptureFocusRect:Lcom/sec/android/app/camera/widget/gl/Trapezoid;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mTrapezoidCaptureFocusRect:Lcom/sec/android/app/camera/widget/gl/Trapezoid;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/Trapezoid;->changeColor(Z)V

    :cond_1
    return-void
.end method

.method private isMaxPositionReached(FF)Z
    .locals 5

    const/4 v3, 0x2

    const/4 v1, 0x0

    const/4 v0, 0x1

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCurrentOrientation:I

    packed-switch v2, :pswitch_data_0

    :cond_0
    iput-boolean v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideShow:Z

    move v0, v1

    :goto_0
    return v0

    :pswitch_0
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mDetectedDirection:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_LANDSCAPE_X:F

    cmpg-float v2, p1, v2

    if-gtz v2, :cond_0

    iget-boolean v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideShow:Z

    if-nez v2, :cond_1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideShow:Z

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mDetectedDirection:I

    if-ne v2, v0, :cond_0

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_SINGLE_WIDTH:F

    add-float/2addr v2, p1

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_LANDSCAPE_X:F

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_LANDSCAPE_WIDTH:F

    add-float/2addr v3, v4

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_0

    iget-boolean v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideShow:Z

    if-nez v2, :cond_3

    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideShow:Z

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0

    :pswitch_1
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mDetectedDirection:I

    if-ne v2, v3, :cond_5

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_SINGLE_PORTRAIT_HEIGHT:F

    add-float/2addr v2, p2

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_PORTRAIT_Y:F

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    add-float/2addr v3, v4

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_0

    iget-boolean v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideShow:Z

    if-nez v2, :cond_4

    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideShow:Z

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_0

    :cond_5
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mDetectedDirection:I

    if-ne v2, v0, :cond_0

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_PORTRAIT_Y:F

    cmpg-float v2, p2, v2

    if-gtz v2, :cond_0

    iget-boolean v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideShow:Z

    if-nez v2, :cond_6

    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideShow:Z

    goto :goto_0

    :cond_6
    move v0, v1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private declared-synchronized isReadyToCapture()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLivePreview:Lcom/samsung/android/glview/GLBitmapTexture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private isRectGuideVisible()Z
    .locals 2

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0xe

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideRect:[Lcom/samsung/android/glview/GLImage;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLImage;->isVisible()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_1
    return v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private declared-synchronized onLivePreviewData([B)V
    .locals 14

    const/4 v3, 0x2

    const/4 v1, 0x3

    const/4 v2, 0x1

    monitor-enter p0

    const/4 v6, 0x0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->decodeRgbaBitmap([B)Landroid/graphics/Bitmap;

    move-result-object v6

    if-nez v6, :cond_1

    const-string v0, "WideSelfie"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to RGBA Data Creation Failed. mCaptureCount:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCaptureCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mSkipFrameOnWideSelfie:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mSkipFrame:I

    if-ge v0, v1, :cond_2

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->clearWideSelfieRect()V

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mSkipFrame:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mSkipFrame:I

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mSkipFrame:I

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->showPreviewGroup()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mSkipFrameOnWideSelfie:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mSkipFrame:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    :try_start_2
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCaptureCount:I

    if-eq v0, v2, :cond_3

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCaptureCount:I

    if-nez v0, :cond_5

    :cond_3
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {v6, v0, v1}, Lcom/sec/android/app/camera/util/ImageUtils;->rotateAndMirror(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v6

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mStartCheckWarning:Z

    :cond_4
    :goto_1
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPreviewThumbnailWidth:F

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPrevThumbnailWidth:F

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPreviewThumbnailHeight:F

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPrevThumbnailHeight:F

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->setPreviewThumbnailSize(II)V

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v7, 0x0

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCurrentOrientation:I

    packed-switch v0, :pswitch_data_0

    const-string v0, "WideSelfie"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLivePreviewData : invalid orientation "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCurrentOrientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_5
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mIsWideSelfieCaptureStarted:Z

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCurrentOrientation:I

    if-eq v0, v2, :cond_6

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCurrentOrientation:I

    if-eq v0, v1, :cond_6

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getLastOrientation()I

    move-result v0

    if-eq v0, v2, :cond_6

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getLastOrientation()I

    move-result v0

    if-ne v0, v1, :cond_4

    :cond_6
    const/16 v0, 0xb4

    const/4 v1, 0x0

    invoke-static {v6, v0, v1}, Lcom/sec/android/app/camera/util/ImageUtils;->rotateAndMirror(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v6

    goto :goto_1

    :pswitch_0
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCaptureCount:I

    if-gt v0, v2, :cond_d

    iget v11, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_SINGLE_WIDTH:F

    iget v7, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_SINGLE_HEIGHT:F

    iget v8, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_SINGLE_X:F

    const/4 v10, 0x0

    :cond_7
    :goto_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v12, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    monitor-enter v12
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLivePreview:Lcom/samsung/android/glview/GLBitmapTexture;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLivePreview:Lcom/samsung/android/glview/GLBitmapTexture;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->removeView(Lcom/samsung/android/glview/GLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLivePreview:Lcom/samsung/android/glview/GLBitmapTexture;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLBitmapTexture;->clear()V

    :cond_8
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPreviewFocusRect:Lcom/samsung/android/glview/GLNinePatch;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPreviewFocusRect:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->removeView(Lcom/samsung/android/glview/GLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPreviewFocusRect:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLNinePatch;->clear()V

    :cond_9
    new-instance v0, Lcom/samsung/android/glview/GLBitmapTexture;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGLContext:Lcom/samsung/android/glview/GLContext;

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_RECT_THICKNESS:F

    add-float/2addr v2, v8

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_RECT_THICKNESS:F

    add-float/2addr v3, v10

    const/high16 v4, 0x40000000    # 2.0f

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float/2addr v4, v5

    sub-float v4, v11, v4

    const/high16 v5, 0x40000000    # 2.0f

    iget v13, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float/2addr v5, v13

    sub-float v5, v7, v5

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/glview/GLBitmapTexture;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLandroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLivePreview:Lcom/samsung/android/glview/GLBitmapTexture;

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLivePreview:Lcom/samsung/android/glview/GLBitmapTexture;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mIsStartCapture:Z

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPreviewFocusRect:Lcom/samsung/android/glview/GLNinePatch;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPreviewFocusRect:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLNinePatch;->getVisibility()I

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPreviewFocusRect:Lcom/samsung/android/glview/GLNinePatch;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLNinePatch;->setVisibility(I)V

    :cond_a
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCaptureFocusRect:Lcom/samsung/android/glview/GLNinePatch;

    if-eqz v0, :cond_b

    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWideSelfieWarning:Z

    if-nez v0, :cond_b

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->isRectGuideVisible()Z

    move-result v0

    if-nez v0, :cond_b

    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->misWideSelfieCapturing:Z

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCaptureFocusRect:Lcom/samsung/android/glview/GLNinePatch;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLNinePatch;->setVisibility(I)V

    const/16 v0, 0x8

    new-array v9, v0, [F

    const/4 v0, 0x0

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLeftTopX:F

    aput v1, v9, v0

    const/4 v0, 0x1

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLeftTopY:F

    aput v1, v9, v0

    const/4 v0, 0x2

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mRightTopX:F

    aput v1, v9, v0

    const/4 v0, 0x3

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mRightTopY:F

    aput v1, v9, v0

    const/4 v0, 0x4

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mRightBottomX:F

    aput v1, v9, v0

    const/4 v0, 0x5

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mRightBottomY:F

    aput v1, v9, v0

    const/4 v0, 0x6

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLeftBottomX:F

    aput v1, v9, v0

    const/4 v0, 0x7

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLeftBottomY:F

    aput v1, v9, v0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mTrapezoidCaptureFocusRect:Lcom/sec/android/app/camera/widget/gl/Trapezoid;

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWidth:F

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mHeight:F

    invoke-virtual {v0, v1, v2, v9}, Lcom/sec/android/app/camera/widget/gl/Trapezoid;->setRect(FF[F)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mTrapezoidCaptureFocusRect:Lcom/sec/android/app/camera/widget/gl/Trapezoid;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/Trapezoid;->setVisibility(I)V

    :cond_b
    :goto_3
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mChanged:Z

    if-eqz v0, :cond_c

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->refreshBackgroundRect()V

    :cond_c
    monitor-exit v12

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v12
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v0

    :cond_d
    iget v11, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPreviewThumbnailWidth:F

    iget v7, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_SINGLE_HEIGHT:F

    iget v8, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPreviewThumbnailLeft:F

    const/4 v10, 0x0

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mDetectedDirection:I

    if-ne v0, v3, :cond_e

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mFocusRectLeft:F

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_LANDSCAPE_X:F

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_SINGLE_X:F

    add-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_7

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mStartCheckWarning:Z

    goto/16 :goto_2

    :cond_e
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mDetectedDirection:I

    if-ne v0, v2, :cond_7

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mFocusRectLeft:F

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_LANDSCAPE_X:F

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_SINGLE_X:F

    add-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gez v0, :cond_7

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mStartCheckWarning:Z

    goto/16 :goto_2

    :pswitch_1
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCaptureCount:I

    if-gt v0, v2, :cond_f

    iget v11, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_SINGLE_PORTRAIT_WIDTH:F

    iget v7, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_SINGLE_PORTRAIT_HEIGHT:F

    const/4 v8, 0x0

    iget v10, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_SINGLE_PORTRAIT_Y:F

    goto/16 :goto_2

    :cond_f
    iget v11, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_SINGLE_PORTRAIT_WIDTH:F

    iget v7, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPreviewThumbnailHeight:F

    const/4 v8, 0x0

    iget v10, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPreviewThumbnailTop:F

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mDetectedDirection:I

    if-ne v0, v3, :cond_10

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mFocusRectTop:F

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_PORTRAIT_Y:F

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_SINGLE_PORTRAIT_Y:F

    add-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gez v0, :cond_7

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mStartCheckWarning:Z

    goto/16 :goto_2

    :cond_10
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mDetectedDirection:I

    if-ne v0, v2, :cond_7

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mFocusRectTop:F

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_PORTRAIT_Y:F

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_SINGLE_PORTRAIT_Y:F

    add-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_7

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mStartCheckWarning:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_2

    :cond_11
    :try_start_5
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCaptureFocusRect:Lcom/samsung/android/glview/GLNinePatch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLNinePatch;->setVisibility(I)V

    goto :goto_3

    :cond_12
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCaptureFocusRect:Lcom/samsung/android/glview/GLNinePatch;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCaptureFocusRect:Lcom/samsung/android/glview/GLNinePatch;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLNinePatch;->setVisibility(I)V

    :cond_13
    new-instance v0, Lcom/samsung/android/glview/GLNinePatch;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGLContext:Lcom/samsung/android/glview/GLContext;

    const v2, 0x7f020155

    invoke-direct {v0, v1, v8, v10, v2}, Lcom/samsung/android/glview/GLNinePatch;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPreviewFocusRect:Lcom/samsung/android/glview/GLNinePatch;

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPreviewFocusRect:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v0, v11, v7}, Lcom/samsung/android/glview/GLNinePatch;->setSize(FF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPreviewFocusRect:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto/16 :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private onWideDirectionChanged(I)V
    .locals 7

    const/4 v6, 0x2

    const/4 v5, 0x1

    const-string v2, "WideSelfie"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onWideDirectionChanged: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCurrentDirection:I

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLivePreview:Lcom/samsung/android/glview/GLBitmapTexture;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mChanged:Z

    if-nez v2, :cond_2

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mDetectedDirection:I

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mDetectedDirection:I

    if-eq v2, p1, :cond_2

    iput-boolean v5, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mChanged:Z

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->showGuideArrow(I)V

    :cond_2
    if-eqz p1, :cond_0

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mDetectedDirection:I

    if-nez v2, :cond_0

    const/4 v1, 0x0

    const/4 v0, 0x0

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCurrentOrientation:I

    packed-switch v2, :pswitch_data_0

    :goto_1
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mDetectedDirection:I

    if-eq v2, p1, :cond_4

    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mDetectedDirection:I

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mDetectedDirection:I

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->showGuideArrow(I)V

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCurrentOrientation:I

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCurrentOrientation:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_6

    :cond_3
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mDetectedDirection:I

    if-ne v2, v6, :cond_5

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->hideWarningText()V

    invoke-direct {p0, v5}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->showGuideText(I)V

    :cond_4
    :goto_2
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCaptureFocusRect:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v2, v1, v0}, Lcom/samsung/android/glview/GLNinePatch;->setSize(FF)V

    const-string v2, "WideSelfie"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onWideDirectionChanged: mDetectedDirection: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mDetectedDirection:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->showStopButton()V

    goto :goto_0

    :pswitch_0
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_SINGLE_WIDTH:F

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_SINGLE_HEIGHT:F

    goto :goto_1

    :pswitch_1
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_SINGLE_PORTRAIT_WIDTH:F

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_SINGLE_PORTRAIT_HEIGHT:F

    goto :goto_1

    :cond_5
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mDetectedDirection:I

    if-ne v2, v5, :cond_4

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->hideWarningText()V

    invoke-direct {p0, v6}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->showGuideText(I)V

    goto :goto_2

    :cond_6
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mDetectedDirection:I

    if-ne v2, v6, :cond_7

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->hideWarningText()V

    invoke-direct {p0, v6}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->showGuideText(I)V

    goto :goto_2

    :cond_7
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mDetectedDirection:I

    if-ne v2, v5, :cond_4

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->hideWarningText()V

    invoke-direct {p0, v5}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->showGuideText(I)V

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private prepareWarningArrow(I)V
    .locals 8

    const/4 v7, 0x3

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x2

    if-ne p1, v6, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWideSelfieMsgHandler:Lcom/sec/android/app/camera/shootingmode/WideSelfie$WideSelfieHandler;

    invoke-virtual {v0, v7}, Lcom/sec/android/app/camera/shootingmode/WideSelfie$WideSelfieHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWideSelfieMsgHandler:Lcom/sec/android/app/camera/shootingmode/WideSelfie$WideSelfieHandler;

    invoke-virtual {v0, v7}, Lcom/sec/android/app/camera/shootingmode/WideSelfie$WideSelfieHandler;->removeMessages(I)V

    iput-boolean v5, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWideSelfieWarning:Z

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mBlinkAnimation:Landroid/view/animation/AlphaAnimation;

    if-nez v0, :cond_1

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mBlinkAnimation:Landroid/view/animation/AlphaAnimation;

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mBlinkAnimation:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mBlinkAnimation:Landroid/view/animation/AlphaAnimation;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setRepeatCount(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mBlinkAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v4}, Landroid/view/animation/AlphaAnimation;->setRepeatMode(I)V

    :cond_1
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWideSelfieWarning:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWideSelfieMsgHandler:Lcom/sec/android/app/camera/shootingmode/WideSelfie$WideSelfieHandler;

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/shootingmode/WideSelfie$WideSelfieHandler;->sendEmptyMessage(I)Z

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v0, v0, v5

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mBlinkAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v0, v0, v6

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mBlinkAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v0, v0, v4

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mBlinkAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v0, v0, v7

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mBlinkAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v0, v0, v5

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->startAnimation()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v0, v0, v6

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->startAnimation()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v0, v0, v4

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->startAnimation()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v0, v0, v7

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->startAnimation()V

    iput-boolean v6, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWideSelfieWarning:Z

    :cond_2
    :goto_0
    return-void

    :cond_3
    if-ne p1, v4, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWideSelfieMsgHandler:Lcom/sec/android/app/camera/shootingmode/WideSelfie$WideSelfieHandler;

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/shootingmode/WideSelfie$WideSelfieHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWideSelfieMsgHandler:Lcom/sec/android/app/camera/shootingmode/WideSelfie$WideSelfieHandler;

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/shootingmode/WideSelfie$WideSelfieHandler;->removeMessages(I)V

    iput-boolean v5, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWideSelfieWarning:Z

    :cond_4
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWideSelfieWarning:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWideSelfieMsgHandler:Lcom/sec/android/app/camera/shootingmode/WideSelfie$WideSelfieHandler;

    invoke-virtual {v0, v7}, Lcom/sec/android/app/camera/shootingmode/WideSelfie$WideSelfieHandler;->sendEmptyMessage(I)Z

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v0, v0, v5

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mBlinkAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v0, v0, v6

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mBlinkAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v0, v0, v4

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mBlinkAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v0, v0, v7

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mBlinkAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v0, v0, v5

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->startAnimation()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v0, v0, v6

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->startAnimation()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v0, v0, v4

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->startAnimation()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v0, v0, v7

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->startAnimation()V

    iput-boolean v6, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWideSelfieWarning:Z

    goto :goto_0

    :cond_5
    iput-boolean v5, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWideSelfieWarning:Z

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->stopWideSelfieSound()V

    goto :goto_0
.end method

.method private refreshBackgroundRect()V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v0, 0x0

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCurrentOrientation:I

    if-nez v1, :cond_2

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPrevThumbnailWidth:F

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPreviewThumbnailWidth:F

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_0

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mDetectedDirection:I

    if-ne v1, v3, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mBackgroundRect:Lcom/samsung/android/glview/GLNinePatch;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLivePreview:Lcom/samsung/android/glview/GLBitmapTexture;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLBitmapTexture;->getRight()F

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v3}, Lcom/samsung/android/glview/GLViewGroup;->getCurrentLeft()F

    move-result v3

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_RECT_THICKNESS:F

    add-float/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLNinePatch;->setWidth(F)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mDetectedDirection:I

    if-ne v1, v4, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLivePreview:Lcom/samsung/android/glview/GLBitmapTexture;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLBitmapTexture;->getCurrentLeft()F

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLViewGroup;->getCurrentLeft()F

    move-result v2

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_RECT_THICKNESS:F

    sub-float v0, v1, v2

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mBackgroundRect:Lcom/samsung/android/glview/GLNinePatch;

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_LANDSCAPE_WIDTH:F

    sub-float/2addr v2, v0

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLNinePatch;->setWidth(F)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mBackgroundRect:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v1, v0, v5}, Lcom/samsung/android/glview/GLNinePatch;->translateAbsolute(FF)V

    goto :goto_0

    :cond_2
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCurrentOrientation:I

    if-ne v1, v4, :cond_4

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPrevThumbnailWidth:F

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPreviewThumbnailWidth:F

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_0

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mDetectedDirection:I

    if-ne v1, v3, :cond_3

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_LANDSCAPE_WIDTH:F

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPreviewThumbnailLeft:F

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPreviewThumbnailWidth:F

    add-float/2addr v2, v3

    sub-float v0, v1, v2

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mBackgroundRect:Lcom/samsung/android/glview/GLNinePatch;

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPreviewThumbnailLeft:F

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPreviewThumbnailWidth:F

    add-float/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLNinePatch;->setWidth(F)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mBackgroundRect:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v1, v0, v5}, Lcom/samsung/android/glview/GLNinePatch;->translateAbsolute(FF)V

    goto :goto_0

    :cond_3
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mDetectedDirection:I

    if-ne v1, v4, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mBackgroundRect:Lcom/samsung/android/glview/GLNinePatch;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLViewGroup;->getCurrentRight()F

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLivePreview:Lcom/samsung/android/glview/GLBitmapTexture;

    invoke-virtual {v3}, Lcom/samsung/android/glview/GLBitmapTexture;->getCurrentLeft()F

    move-result v3

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_RECT_THICKNESS:F

    add-float/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLNinePatch;->setWidth(F)V

    goto :goto_0

    :cond_4
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCurrentOrientation:I

    if-ne v1, v3, :cond_6

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPrevThumbnailHeight:F

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPreviewThumbnailHeight:F

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_0

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mDetectedDirection:I

    if-ne v1, v3, :cond_5

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPreviewThumbnailTop:F

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mBackgroundRect:Lcom/samsung/android/glview/GLNinePatch;

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPreviewThumbnailTop:F

    sub-float/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLNinePatch;->setWidth(F)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mBackgroundRect:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v1, v0, v5}, Lcom/samsung/android/glview/GLNinePatch;->translateAbsolute(FF)V

    goto/16 :goto_0

    :cond_5
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mDetectedDirection:I

    if-ne v1, v4, :cond_0

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPreviewThumbnailTop:F

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPreviewThumbnailHeight:F

    add-float v0, v1, v2

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mBackgroundRect:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v1, v0}, Lcom/samsung/android/glview/GLNinePatch;->setWidth(F)V

    goto/16 :goto_0

    :cond_6
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCurrentOrientation:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPrevThumbnailHeight:F

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPreviewThumbnailHeight:F

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_0

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mDetectedDirection:I

    if-ne v1, v3, :cond_7

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPreviewThumbnailTop:F

    sub-float v0, v1, v2

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mBackgroundRect:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v1, v0}, Lcom/samsung/android/glview/GLNinePatch;->setWidth(F)V

    goto/16 :goto_0

    :cond_7
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mDetectedDirection:I

    if-ne v1, v4, :cond_0

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPreviewThumbnailTop:F

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPreviewThumbnailHeight:F

    add-float/2addr v2, v3

    sub-float v0, v1, v2

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mBackgroundRect:Lcom/samsung/android/glview/GLNinePatch;

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPreviewThumbnailTop:F

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPreviewThumbnailHeight:F

    add-float/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLNinePatch;->setWidth(F)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mBackgroundRect:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v1, v0, v5}, Lcom/samsung/android/glview/GLNinePatch;->translateAbsolute(FF)V

    goto/16 :goto_0
.end method

.method private refreshLivePreviewPosition()V
    .locals 14

    const/4 v10, 0x0

    const/4 v13, 0x3

    const/4 v6, 0x0

    const/4 v12, 0x1

    const/high16 v11, 0x40000000    # 2.0f

    iget-object v7, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mBackgroundRectGroup:Lcom/samsung/android/glview/GLViewGroup;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCaptureFocusRect:Lcom/samsung/android/glview/GLNinePatch;

    if-nez v7, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v7, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mIsStartCapture:Z

    if-eqz v7, :cond_3

    iget-boolean v7, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPlayHaptic:Z

    if-eqz v7, :cond_2

    const/16 v7, 0x8

    new-array v5, v7, [F

    iget v7, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLeftTopX:F

    aput v7, v5, v10

    iget v7, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLeftTopY:F

    aput v7, v5, v12

    const/4 v7, 0x2

    iget v8, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mRightTopX:F

    aput v8, v5, v7

    iget v7, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mRightTopY:F

    aput v7, v5, v13

    const/4 v7, 0x4

    iget v8, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mRightBottomX:F

    aput v8, v5, v7

    const/4 v7, 0x5

    iget v8, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mRightBottomY:F

    aput v8, v5, v7

    const/4 v7, 0x6

    iget v8, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLeftBottomX:F

    aput v8, v5, v7

    const/4 v7, 0x7

    iget v8, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLeftBottomY:F

    aput v8, v5, v7

    iget-object v7, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mTrapezoidCaptureFocusRect:Lcom/sec/android/app/camera/widget/gl/Trapezoid;

    iget v8, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWidth:F

    iget v9, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mHeight:F

    invoke-virtual {v7, v8, v9, v5}, Lcom/sec/android/app/camera/widget/gl/Trapezoid;->setRect(FF[F)V

    iget-object v7, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mTrapezoidCaptureFocusRect:Lcom/sec/android/app/camera/widget/gl/Trapezoid;

    invoke-virtual {v7, v10}, Lcom/sec/android/app/camera/widget/gl/Trapezoid;->setVisibility(I)V

    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->hideWarningText()V

    invoke-direct {p0, v10}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->showGuideText(I)V

    :cond_3
    iget v7, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCurrentOrientation:I

    packed-switch v7, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-boolean v7, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mIsStartCapture:Z

    if-eqz v7, :cond_4

    move v3, v6

    :goto_1
    const/4 v0, 0x0

    iget v7, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCaptureCount:I

    if-ne v7, v12, :cond_7

    const/4 v4, 0x0

    :goto_2
    const/4 v7, 0x7

    if-ge v4, v7, :cond_5

    iget-object v7, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideRect:[Lcom/samsung/android/glview/GLImage;

    aget-object v7, v7, v4

    iget v8, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPreviewThumbnailLeft:F

    iget v9, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_SINGLE_X:F

    sub-float/2addr v8, v9

    invoke-virtual {v7, v8, v6}, Lcom/samsung/android/glview/GLImage;->translateAbsolute(FF)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_4
    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->PREVIEW_TOP_MARGIN:F

    goto :goto_1

    :cond_5
    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPreviewThumbnailLeft:F

    mul-float/2addr v6, v11

    iget v7, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPreviewThumbnailWidth:F

    add-float/2addr v6, v7

    iput v6, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_LANDSCAPE_WIDTH:F

    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_LANDSCAPE_WIDTH:F

    iget v7, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_SINGLE_WIDTH:F

    sub-float/2addr v6, v7

    div-float/2addr v6, v11

    iput v6, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_SINGLE_X:F

    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_LANDSCAPE_X:F

    iget v7, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_SINGLE_X:F

    add-float/2addr v6, v7

    iput v6, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->FOCUS_RECT_LANDSCAPE_X:F

    :cond_6
    :goto_3
    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget v7, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_LANDSCAPE_WIDTH:F

    iget v8, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_LANDSCAPE_HEIGHT:F

    invoke-virtual {v6, v7, v8}, Lcom/samsung/android/glview/GLViewGroup;->setSize(FF)V

    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget v7, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_LANDSCAPE_X:F

    add-float/2addr v7, v0

    iget v8, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_LANDSCAPE_Y:F

    add-float/2addr v8, v3

    invoke-virtual {v6, v10, v7, v8}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v6, v10}, Lcom/samsung/android/glview/GLViewGroup;->setOrientation(I)V

    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mBackgroundRectGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget v7, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_LANDSCAPE_WIDTH:F

    iget v8, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_LANDSCAPE_HEIGHT:F

    invoke-virtual {v6, v7, v8}, Lcom/samsung/android/glview/GLViewGroup;->setSize(FF)V

    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mBackgroundRectGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget v7, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_LANDSCAPE_X:F

    add-float/2addr v7, v0

    iget v8, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_LANDSCAPE_Y:F

    add-float/2addr v8, v3

    invoke-virtual {v6, v7, v8}, Lcom/samsung/android/glview/GLViewGroup;->translateAbsolute(FF)V

    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mBackgroundRect:Lcom/samsung/android/glview/GLNinePatch;

    iget v7, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_LANDSCAPE_WIDTH:F

    iget v8, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_LANDSCAPE_HEIGHT:F

    invoke-virtual {v6, v7, v8}, Lcom/samsung/android/glview/GLNinePatch;->setSize(FF)V

    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCaptureFocusRect:Lcom/samsung/android/glview/GLNinePatch;

    iget v7, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_SINGLE_WIDTH:F

    iget v8, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_SINGLE_HEIGHT:F

    invoke-virtual {v6, v7, v8}, Lcom/samsung/android/glview/GLNinePatch;->setSize(FF)V

    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCaptureFocusRect:Lcom/samsung/android/glview/GLNinePatch;

    iget v7, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->FOCUS_RECT_LANDSCAPE_X:F

    add-float/2addr v7, v0

    iget v8, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_LANDSCAPE_Y:F

    add-float/2addr v8, v3

    invoke-virtual {v6, v7, v8}, Lcom/samsung/android/glview/GLNinePatch;->translateAbsolute(FF)V

    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideText:Lcom/samsung/android/glview/GLText;

    iget v7, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->GUIDE_TEXT_WIDTH:F

    iget v8, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->GUIDE_TEXT_HEIGHT:F

    invoke-virtual {v6, v7, v8}, Lcom/samsung/android/glview/GLText;->setSize(FF)V

    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideText:Lcom/samsung/android/glview/GLText;

    iget v7, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->GUIDE_TEXT_POS_X:F

    iget v8, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->GUIDE_TEXT_POS_Y:F

    invoke-virtual {v6, v7, v8}, Lcom/samsung/android/glview/GLText;->translateAbsolute(FF)V

    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningText:Lcom/samsung/android/glview/GLText;

    iget v7, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->GUIDE_TEXT_WIDTH:F

    iget v8, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->GUIDE_TEXT_HEIGHT:F

    invoke-virtual {v6, v7, v8}, Lcom/samsung/android/glview/GLText;->setSize(FF)V

    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningText:Lcom/samsung/android/glview/GLText;

    iget v7, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->GUIDE_TEXT_POS_X:F

    iget v8, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->GUIDE_TEXT_POS_Y:F

    invoke-virtual {v6, v7, v8}, Lcom/samsung/android/glview/GLText;->translateAbsolute(FF)V

    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCurrentOrientation:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_8

    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v6, v13, v13}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v6, v13, v13}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    goto/16 :goto_0

    :cond_7
    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCaptureCount:I

    if-nez v6, :cond_6

    const v6, 0x7f0b0240

    invoke-static {v6}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v6

    iput v6, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_LANDSCAPE_WIDTH:F

    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_LANDSCAPE_WIDTH:F

    iget v7, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_SINGLE_WIDTH:F

    sub-float/2addr v6, v7

    div-float/2addr v6, v11

    iput v6, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_SINGLE_X:F

    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_LANDSCAPE_X:F

    iget v7, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_SINGLE_X:F

    add-float/2addr v6, v7

    iput v6, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->FOCUS_RECT_LANDSCAPE_X:F

    goto/16 :goto_3

    :cond_8
    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v6, v12, v12}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v6, v12, v12}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    goto/16 :goto_0

    :pswitch_1
    iget-boolean v7, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mIsStartCapture:Z

    if-eqz v7, :cond_9

    move v1, v6

    :goto_4
    iget-boolean v7, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mIsStartCapture:Z

    if-eqz v7, :cond_a

    move v2, v6

    :goto_5
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->setPortraitModePosition()V

    iget v7, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCaptureCount:I

    if-ne v7, v12, :cond_d

    const/4 v4, 0x7

    :goto_6
    const/16 v7, 0xe

    if-ge v4, v7, :cond_b

    iget-object v7, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideRect:[Lcom/samsung/android/glview/GLImage;

    aget-object v7, v7, v4

    iget v8, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPreviewThumbnailTop:F

    iget v9, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_SINGLE_PORTRAIT_Y:F

    sub-float/2addr v8, v9

    invoke-virtual {v7, v6, v8}, Lcom/samsung/android/glview/GLImage;->translateAbsolute(FF)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    :cond_9
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->PREVIEW_PORTRAIT_MARGIN:F

    goto :goto_4

    :cond_a
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->PREVIEW_PORTRAIT_RIGHT_MARGIN:F

    goto :goto_5

    :cond_b
    iget v7, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    iget v8, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPreviewThumbnailTop:F

    mul-float/2addr v8, v11

    iget v9, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPreviewThumbnailHeight:F

    add-float/2addr v8, v9

    sub-float/2addr v7, v8

    iput v7, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLivePreviewPortraitHeightMargin:F

    iget v7, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPreviewThumbnailTop:F

    mul-float/2addr v7, v11

    iget v8, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPreviewThumbnailHeight:F

    add-float/2addr v7, v8

    iput v7, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    iget v7, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    iget v8, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_SINGLE_PORTRAIT_HEIGHT:F

    sub-float/2addr v7, v8

    div-float/2addr v7, v11

    iput v7, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_SINGLE_PORTRAIT_Y:F

    iget v7, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_PORTRAIT_Y:F

    iget v8, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_SINGLE_PORTRAIT_Y:F

    add-float/2addr v7, v8

    iput v7, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->FOCUS_RECT_PORTRAIT_Y:F

    :cond_c
    :goto_7
    iget-object v7, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget v8, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_PORTRAIT_WIDTH:F

    iget v9, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    invoke-virtual {v7, v8, v9}, Lcom/samsung/android/glview/GLViewGroup;->setSize(FF)V

    iget-object v7, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget v8, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_PORTRAIT_X:F

    add-float/2addr v8, v1

    iget v9, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_PORTRAIT_Y:F

    add-float/2addr v9, v2

    invoke-virtual {v7, v10, v8, v9}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    iget-object v7, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v7, v10}, Lcom/samsung/android/glview/GLViewGroup;->setOrientation(I)V

    iget-object v7, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mBackgroundRectGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget v8, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    iget v9, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_PORTRAIT_WIDTH:F

    invoke-virtual {v7, v8, v9}, Lcom/samsung/android/glview/GLViewGroup;->setSize(FF)V

    iget-object v7, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mBackgroundRectGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget v8, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->BACKGROUND_RECT_PORTRAIT_X:F

    add-float/2addr v8, v1

    iget v9, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLivePreviewPortraitHeightMargin:F

    div-float/2addr v9, v11

    add-float/2addr v8, v9

    iget v9, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->BACKGROUND_RECT_PORTRAIT_Y:F

    add-float/2addr v9, v2

    iget v10, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLivePreviewPortraitHeightMargin:F

    div-float/2addr v10, v11

    sub-float/2addr v9, v10

    invoke-virtual {v7, v8, v9}, Lcom/samsung/android/glview/GLViewGroup;->translateAbsolute(FF)V

    iget-object v7, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mBackgroundRect:Lcom/samsung/android/glview/GLNinePatch;

    iget v8, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    iget v9, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_PORTRAIT_WIDTH:F

    invoke-virtual {v7, v8, v9}, Lcom/samsung/android/glview/GLNinePatch;->setSize(FF)V

    iget-object v7, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCaptureFocusRect:Lcom/samsung/android/glview/GLNinePatch;

    iget v8, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_PORTRAIT_WIDTH:F

    iget v9, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_SINGLE_PORTRAIT_HEIGHT:F

    invoke-virtual {v7, v8, v9}, Lcom/samsung/android/glview/GLNinePatch;->setSize(FF)V

    iget-object v7, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCaptureFocusRect:Lcom/samsung/android/glview/GLNinePatch;

    iget v8, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->FOCUS_RECT_PORTRAIT_X:F

    add-float/2addr v8, v1

    iget v9, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->FOCUS_RECT_PORTRAIT_Y:F

    add-float/2addr v9, v2

    invoke-virtual {v7, v8, v9}, Lcom/samsung/android/glview/GLNinePatch;->translateAbsolute(FF)V

    iget-object v7, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideText:Lcom/samsung/android/glview/GLText;

    iget v8, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->GUIDE_TEXT_PORTRAIT_HEIGHT:F

    iget v9, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->GUIDE_TEXT_PORTRAIT_WIDTH:F

    invoke-virtual {v7, v8, v9}, Lcom/samsung/android/glview/GLText;->setSize(FF)V

    iget-object v7, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideText:Lcom/samsung/android/glview/GLText;

    iget v8, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->GUIDE_TEXT_PORTRAIT_X:F

    sub-float v8, v6, v8

    iget v9, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->GUIDE_TEXT_PORTRAIT_Y:F

    invoke-virtual {v7, v8, v9}, Lcom/samsung/android/glview/GLText;->translateAbsolute(FF)V

    iget-object v7, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningText:Lcom/samsung/android/glview/GLText;

    iget v8, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->GUIDE_TEXT_PORTRAIT_HEIGHT:F

    iget v9, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->GUIDE_TEXT_PORTRAIT_WIDTH:F

    invoke-virtual {v7, v8, v9}, Lcom/samsung/android/glview/GLText;->setSize(FF)V

    iget-object v7, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningText:Lcom/samsung/android/glview/GLText;

    iget v8, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->GUIDE_TEXT_PORTRAIT_X:F

    sub-float/2addr v6, v8

    iget v8, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->GUIDE_TEXT_PORTRAIT_Y:F

    invoke-virtual {v7, v6, v8}, Lcom/samsung/android/glview/GLText;->translateAbsolute(FF)V

    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCurrentOrientation:I

    if-ne v6, v13, :cond_e

    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideText:Lcom/samsung/android/glview/GLText;

    const/4 v7, 0x2

    invoke-virtual {v6, v13, v7}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningText:Lcom/samsung/android/glview/GLText;

    const/4 v7, 0x2

    invoke-virtual {v6, v13, v7}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    goto/16 :goto_0

    :cond_d
    iget v7, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCaptureCount:I

    if-nez v7, :cond_c

    iput v6, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLivePreviewPortraitHeightMargin:F

    const v7, 0x7f0b0243

    invoke-static {v7}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v7

    iput v7, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    iget v7, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    iget v8, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_SINGLE_PORTRAIT_HEIGHT:F

    sub-float/2addr v7, v8

    div-float/2addr v7, v11

    iput v7, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_SINGLE_PORTRAIT_Y:F

    iget v7, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_PORTRAIT_Y:F

    iget v8, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_SINGLE_PORTRAIT_Y:F

    add-float/2addr v7, v8

    iput v7, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->FOCUS_RECT_PORTRAIT_Y:F

    goto/16 :goto_7

    :cond_e
    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideText:Lcom/samsung/android/glview/GLText;

    const/4 v7, 0x2

    invoke-virtual {v6, v12, v7}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningText:Lcom/samsung/android/glview/GLText;

    const/4 v7, 0x2

    invoke-virtual {v6, v12, v7}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private reset()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    const-string v0, "WideSelfie"

    const-string v1, "reset"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mIsWideSelfieCaptureStarted:Z

    iput-boolean v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->misWideSelfieCapturing:Z

    iput-boolean v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mIsStartCapture:Z

    iput-boolean v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mSkipCapture:Z

    iput-boolean v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mSkipCheckWarning:Z

    iput-boolean v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mChanged:Z

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPostProgress:I

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mDetectedDirection:I

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCurrentDirection:I

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mNextCaptureFocusStep:I

    iput v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPrevThumbnailWidth:F

    iput v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPrevThumbnailHeight:F

    iput-boolean v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->misWideSelfieStopping:Z

    iput-boolean v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mMovingDetection:Z

    iput-boolean v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mIsCapturePreparing:Z

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCaptureCount:I

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->clearWideSelfieRect()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->stopCancelTimer()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->stopWideSelfieSound()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->endShutterProgressWheel()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v1, 0x2c0

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->enableView(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    :cond_0
    const/4 v0, 0x3

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideState:I

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->hideStopButton()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->setPreviewThumbnailSizeToDefault()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->resetTrapezoid()V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private resetTrapezoid()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLeftTopX:F

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLeftTopY:F

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mRightTopX:F

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mRightTopY:F

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mRightBottomX:F

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mRightBottomY:F

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLeftBottomX:F

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLeftBottomY:F

    return-void
.end method

.method private restartCancelTimer()V
    .locals 2

    const-string v0, "WideSelfie"

    const-string v1, "call restartCancelTimer..."

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->stopCancelTimer()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->startCancelTimer()V

    return-void
.end method

.method private setDelayedSkipCapture()V
    .locals 5

    const/4 v4, 0x5

    const-string v0, "WideSelfie"

    const-string v1, "setDelayedSkipCapture"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWideSelfieMsgHandler:Lcom/sec/android/app/camera/shootingmode/WideSelfie$WideSelfieHandler;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mSkipCapture:Z

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWideSelfieMsgHandler:Lcom/sec/android/app/camera/shootingmode/WideSelfie$WideSelfieHandler;

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/shootingmode/WideSelfie$WideSelfieHandler;->removeMessages(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWideSelfieMsgHandler:Lcom/sec/android/app/camera/shootingmode/WideSelfie$WideSelfieHandler;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v4, v2, v3}, Lcom/sec/android/app/camera/shootingmode/WideSelfie$WideSelfieHandler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method

.method private setFocusRectLeftTop(FF)V
    .locals 6

    const/4 v3, 0x0

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mFocusRectCenterX:F

    iput v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPrevFocusRectCenterX:F

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mFocusRectCenterY:F

    iput v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPrevFocusRectCenterY:F

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPrevThumbnailScaleFactor:F

    mul-float/2addr v4, p1

    iput v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mFocusRectCenterX:F

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPrevThumbnailScaleFactor:F

    mul-float/2addr v4, p2

    iput v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mFocusRectCenterY:F

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCurrentOrientation:I

    packed-switch v4, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-boolean v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mIsStartCapture:Z

    if-eqz v4, :cond_0

    :goto_1
    const/4 v0, 0x0

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->FOCUS_RECT_LANDSCAPE_X:F

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mFocusRectCenterX:F

    add-float/2addr v4, v5

    add-float/2addr v4, v0

    iput v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mFocusRectLeft:F

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_LANDSCAPE_Y:F

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mFocusRectCenterY:F

    add-float/2addr v4, v5

    add-float/2addr v4, v3

    iput v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mFocusRectTop:F

    goto :goto_0

    :cond_0
    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->PREVIEW_TOP_MARGIN:F

    goto :goto_1

    :pswitch_1
    iget-boolean v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mIsStartCapture:Z

    if-eqz v4, :cond_1

    move v1, v3

    :goto_2
    iget-boolean v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mIsStartCapture:Z

    if-eqz v4, :cond_2

    move v2, v3

    :goto_3
    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_PORTRAIT_X:F

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mFocusRectCenterX:F

    add-float/2addr v4, v5

    add-float/2addr v4, v1

    iput v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mFocusRectLeft:F

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_PORTRAIT_Y:F

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_SINGLE_PORTRAIT_Y:F

    add-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mFocusRectCenterY:F

    add-float/2addr v4, v5

    add-float/2addr v4, v2

    iput v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mFocusRectTop:F

    goto :goto_0

    :cond_1
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->PREVIEW_PORTRAIT_MARGIN:F

    goto :goto_2

    :cond_2
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->PREVIEW_PORTRAIT_RIGHT_MARGIN:F

    goto :goto_3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private setHRMsensor(Z)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getHRMShutter()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0, p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->registerHRMShutterListener(Lcom/sec/android/app/camera/interfaces/CameraContext$HRMShutterListener;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->unregisterHRMShutterListener()V

    goto :goto_0
.end method

.method private setHapticEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPlayHaptic:Z

    return-void
.end method

.method private setPortraitModePosition()V
    .locals 2

    const v0, 0x7f0b0243

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_SINGLE_PORTRAIT_HEIGHT:F

    sub-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_SINGLE_PORTRAIT_Y:F

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_PORTRAIT_Y:F

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_SINGLE_PORTRAIT_Y:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->FOCUS_RECT_PORTRAIT_Y:F

    return-void
.end method

.method private declared-synchronized setPostCaptureProgress(I)V
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "WideSelfie"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPostCaptureProgress :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPostProgress:I

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->hideStopButton()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private setPreviewThumbnailLeftTop(FFFF)V
    .locals 2

    const/4 v1, 0x0

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCurrentOrientation:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPrevThumbnailScaleFactor:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPreviewThumbnailLeft:F

    iput v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPreviewThumbnailTop:F

    goto :goto_0

    :pswitch_1
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLivePreviewRealThumbnailHeight:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->calcLivePreviewSize(FFFF)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLivePreviewRealThumbnailHeight:F

    :cond_0
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLivePreviewRealThumbnailHeight:F

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPrevThumbnailScaleFactor:F

    mul-float/2addr v1, p4

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPreviewThumbnailTop:F

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private setPreviewThumbnailSize(II)V
    .locals 2

    int-to-float v0, p1

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPrevThumbnailScaleFactor:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPreviewThumbnailWidth:F

    int-to-float v0, p2

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPrevThumbnailScaleFactor:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPreviewThumbnailHeight:F

    return-void
.end method

.method private setPreviewThumbnailSizeToDefault()V
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_SINGLE_WIDTH:F

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPreviewThumbnailWidth:F

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_SINGLE_HEIGHT:F

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPreviewThumbnailHeight:F

    return-void
.end method

.method private setSkipCheckWarning(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mSkipCheckWarning:Z

    return-void
.end method

.method private setStartCapture(Z)V
    .locals 2

    const-string v0, "WideSelfie"

    const-string v1, "setStartCapture()"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mIsStartCapture:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mIsCapturePreparing:Z

    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mIsStartCapture:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mNextCaptureFocusStep:I

    :cond_0
    return-void
.end method

.method private setTrapezoidPosition(FFFFFFFF)V
    .locals 6

    const/high16 v5, 0x40000000    # 2.0f

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCurrentOrientation:I

    packed-switch v2, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    const-string v2, "WideSelfie"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mFocusRectCenterX : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mFocusRectCenterX:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mFocusRectCenterY : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mFocusRectCenterY:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->FOCUS_RECT_LANDSCAPE_X:F

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_SINGLE_WIDTH:F

    div-float/2addr v3, v5

    add-float v0, v2, v3

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_LANDSCAPE_Y:F

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_SINGLE_HEIGHT:F

    div-float/2addr v3, v5

    add-float v1, v2, v3

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPrevThumbnailScaleFactor:F

    mul-float/2addr v2, p1

    add-float/2addr v2, v0

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLeftTopX:F

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPrevThumbnailScaleFactor:F

    mul-float/2addr v2, p2

    add-float/2addr v2, v1

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLeftTopY:F

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPrevThumbnailScaleFactor:F

    mul-float/2addr v2, p3

    add-float/2addr v2, v0

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mRightTopX:F

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPrevThumbnailScaleFactor:F

    mul-float/2addr v2, p4

    add-float/2addr v2, v1

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mRightTopY:F

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPrevThumbnailScaleFactor:F

    mul-float/2addr v2, p5

    add-float/2addr v2, v0

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mRightBottomX:F

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPrevThumbnailScaleFactor:F

    mul-float/2addr v2, p6

    add-float/2addr v2, v1

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mRightBottomY:F

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPrevThumbnailScaleFactor:F

    mul-float/2addr v2, p7

    add-float/2addr v2, v0

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLeftBottomX:F

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPrevThumbnailScaleFactor:F

    mul-float/2addr v2, p8

    add-float/2addr v2, v1

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLeftBottomY:F

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLeftTopX:F

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mRightTopX:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLeftBottomX:F

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mRightBottomX:F

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLeftTopX:F

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mRightTopX:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    :goto_1
    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWidth:F

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLeftTopY:F

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLeftBottomY:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mRightTopY:F

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mRightBottomY:F

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLeftTopY:F

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLeftBottomY:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    :goto_2
    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mHeight:F

    goto/16 :goto_0

    :cond_0
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLeftBottomX:F

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mRightBottomX:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    goto :goto_1

    :cond_1
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mRightTopY:F

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mRightBottomY:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    goto :goto_2

    :pswitch_1
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_PORTRAIT_X:F

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_SINGLE_WIDTH:F

    div-float/2addr v3, v5

    add-float v0, v2, v3

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_PORTRAIT_Y:F

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_SINGLE_PORTRAIT_Y:F

    add-float/2addr v2, v3

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_SINGLE_HEIGHT:F

    div-float/2addr v3, v5

    add-float v1, v2, v3

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPrevThumbnailScaleFactor:F

    mul-float/2addr v2, p1

    add-float/2addr v2, v0

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLeftTopX:F

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPrevThumbnailScaleFactor:F

    mul-float/2addr v2, p2

    add-float/2addr v2, v1

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLeftTopY:F

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPrevThumbnailScaleFactor:F

    mul-float/2addr v2, p3

    add-float/2addr v2, v0

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mRightTopX:F

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPrevThumbnailScaleFactor:F

    mul-float/2addr v2, p4

    add-float/2addr v2, v1

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mRightTopY:F

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPrevThumbnailScaleFactor:F

    mul-float/2addr v2, p5

    add-float/2addr v2, v0

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mRightBottomX:F

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPrevThumbnailScaleFactor:F

    mul-float/2addr v2, p6

    add-float/2addr v2, v1

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mRightBottomY:F

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPrevThumbnailScaleFactor:F

    mul-float/2addr v2, p7

    add-float/2addr v2, v0

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLeftBottomX:F

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPrevThumbnailScaleFactor:F

    mul-float/2addr v2, p8

    add-float/2addr v2, v1

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLeftBottomY:F

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLeftTopX:F

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mRightTopX:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLeftBottomX:F

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mRightBottomX:F

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_2

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLeftTopX:F

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mRightTopX:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    :goto_3
    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWidth:F

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLeftTopY:F

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLeftBottomY:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mRightTopY:F

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mRightBottomY:F

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_3

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLeftTopY:F

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLeftBottomY:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    :goto_4
    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mHeight:F

    goto/16 :goto_0

    :cond_2
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLeftBottomX:F

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mRightBottomX:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    goto :goto_3

    :cond_3
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mRightTopY:F

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mRightBottomY:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    goto :goto_4

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private showCropArea(I)V
    .locals 4

    const/4 v3, 0x4

    const/4 v2, 0x0

    const-string v0, "WideSelfie"

    const-string v1, "showCropArea"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCropLandscapeDownArea:Lcom/samsung/android/glview/GLNinePatch;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCropLandscapeUpArea:Lcom/samsung/android/glview/GLNinePatch;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCropPortraitDownArea:Lcom/samsung/android/glview/GLNinePatch;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCropPortraitUpArea:Lcom/samsung/android/glview/GLNinePatch;

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "WideSelfie"

    const-string v1, "return, because some cropArea is null"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCropLandscapeUpArea:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLNinePatch;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCropLandscapeDownArea:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLNinePatch;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCropPortraitUpArea:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLNinePatch;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCropPortraitDownArea:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLNinePatch;->setVisibility(I)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCropLandscapeUpArea:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLNinePatch;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCropLandscapeDownArea:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLNinePatch;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCropPortraitUpArea:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLNinePatch;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCropPortraitDownArea:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLNinePatch;->setVisibility(I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private showGuideArrow(I)V
    .locals 11

    const/high16 v10, 0x40000000    # 2.0f

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v6, 0x4

    const/4 v7, 0x0

    iget-boolean v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mIsWideSelfieCaptureStarted:Z

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideState:I

    if-eq v3, p1, :cond_0

    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideState:I

    const/4 v0, 0x0

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mBlinkAnimation:Landroid/view/animation/AlphaAnimation;

    if-nez v3, :cond_2

    new-instance v3, Landroid/view/animation/AlphaAnimation;

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v3, v4, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mBlinkAnimation:Landroid/view/animation/AlphaAnimation;

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mBlinkAnimation:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v4, 0xfa

    invoke-virtual {v3, v4, v5}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mBlinkAnimation:Landroid/view/animation/AlphaAnimation;

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/view/animation/AlphaAnimation;->setRepeatCount(I)V

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mBlinkAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v3, v9}, Landroid/view/animation/AlphaAnimation;->setRepeatMode(I)V

    :cond_2
    if-nez p1, :cond_3

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mTwoBlinkAnimation:Landroid/view/animation/AlphaAnimation;

    if-nez v3, :cond_3

    new-instance v3, Landroid/view/animation/AlphaAnimation;

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v3, v4, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mTwoBlinkAnimation:Landroid/view/animation/AlphaAnimation;

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mTwoBlinkAnimation:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v4, 0x46

    invoke-virtual {v3, v4, v5}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mTwoBlinkAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v3, v8}, Landroid/view/animation/AlphaAnimation;->setRepeatCount(I)V

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mTwoBlinkAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v3, v9}, Landroid/view/animation/AlphaAnimation;->setRepeatMode(I)V

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mTwoBlinkAnimation:Landroid/view/animation/AlphaAnimation;

    new-instance v4, Lcom/sec/android/app/camera/shootingmode/WideSelfie$3;

    invoke-direct {v4, p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie$3;-><init>(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)V

    invoke-virtual {v3, v4}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    :cond_3
    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCurrentOrientation:I

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    if-ne p1, v8, :cond_4

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_LANDSCAPE_X:F

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_LANDSCAPE_WIDTH:F

    div-float/2addr v4, v10

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    const/4 v5, 0x3

    aget-object v4, v4, v5

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLImage;->getWidth()F

    move-result v4

    div-float/2addr v4, v10

    sub-float v0, v3, v4

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_LANDSCAPE_Y:F

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_LANDSCAPE_HEIGHT:F

    add-float/2addr v3, v4

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->ARROW_LANDSCAPE_OVERLAY:F

    sub-float v1, v3, v4

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->hideWarningArrow()V

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    const/4 v4, 0x3

    aget-object v3, v3, v4

    invoke-virtual {v3, v0, v1}, Lcom/samsung/android/glview/GLImage;->translateAbsolute(FF)V

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v3, v3, v7

    invoke-virtual {v3, v6}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v3, v3, v8

    invoke-virtual {v3, v6}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v3, v3, v9

    invoke-virtual {v3, v6}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    const/4 v4, 0x3

    aget-object v3, v3, v4

    invoke-virtual {v3, v7}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    const/4 v4, 0x3

    aget-object v3, v3, v4

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mBlinkAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v3, v4}, Lcom/samsung/android/glview/GLImage;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    const/4 v4, 0x3

    aget-object v3, v3, v4

    invoke-virtual {v3}, Lcom/samsung/android/glview/GLImage;->startAnimation()V

    goto/16 :goto_0

    :cond_4
    if-ne p1, v9, :cond_5

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_LANDSCAPE_X:F

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_LANDSCAPE_WIDTH:F

    div-float/2addr v4, v10

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    const/4 v5, 0x3

    aget-object v4, v4, v5

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLImage;->getWidth()F

    move-result v4

    div-float/2addr v4, v10

    sub-float v0, v3, v4

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_LANDSCAPE_Y:F

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_LANDSCAPE_HEIGHT:F

    add-float/2addr v3, v4

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->ARROW_LANDSCAPE_OVERLAY:F

    sub-float v1, v3, v4

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->hideWarningArrow()V

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v3, v3, v9

    invoke-virtual {v3, v0, v1}, Lcom/samsung/android/glview/GLImage;->translateAbsolute(FF)V

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v3, v3, v7

    invoke-virtual {v3, v6}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v3, v3, v8

    invoke-virtual {v3, v6}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v3, v3, v9

    invoke-virtual {v3, v7}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    const/4 v4, 0x3

    aget-object v3, v3, v4

    invoke-virtual {v3, v6}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v3, v3, v9

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mBlinkAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v3, v4}, Lcom/samsung/android/glview/GLImage;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v3, v3, v9

    invoke-virtual {v3}, Lcom/samsung/android/glview/GLImage;->startAnimation()V

    goto/16 :goto_0

    :cond_5
    if-nez p1, :cond_0

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_LANDSCAPE_X:F

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_LANDSCAPE_WIDTH:F

    div-float/2addr v4, v10

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideArrow:[Lcom/samsung/android/glview/GLImage;

    const/4 v5, 0x3

    aget-object v4, v4, v5

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLImage;->getWidth()F

    move-result v4

    div-float/2addr v4, v10

    sub-float v0, v3, v4

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_LANDSCAPE_Y:F

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_LANDSCAPE_HEIGHT:F

    add-float/2addr v3, v4

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->ARROW_LANDSCAPE_OVERLAY:F

    sub-float v1, v3, v4

    iput-boolean v7, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mAnimationDirection:Z

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->hideWarningArrow()V

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPreviewFocusRect:Lcom/samsung/android/glview/GLNinePatch;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPreviewFocusRect:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v3, v6}, Lcom/samsung/android/glview/GLNinePatch;->setVisibility(I)V

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCaptureFocusRect:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v3, v6}, Lcom/samsung/android/glview/GLNinePatch;->setVisibility(I)V

    :cond_6
    invoke-direct {p0, v7}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->showGuideRect(I)V

    const/4 v2, 0x0

    :goto_1
    const/4 v3, 0x7

    if-ge v2, v3, :cond_7

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v3, v3, v2

    invoke-virtual {v3, v0, v1}, Lcom/samsung/android/glview/GLImage;->translateAbsolute(FF)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_7
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v3, v3, v7

    invoke-virtual {v3, v7}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v3, v3, v7

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mTwoBlinkAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v3, v4}, Lcom/samsung/android/glview/GLImage;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v3, v3, v7

    invoke-virtual {v3}, Lcom/samsung/android/glview/GLImage;->startAnimation()V

    goto/16 :goto_0

    :pswitch_1
    if-ne p1, v8, :cond_8

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_PORTRAIT_X:F

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_SINGLE_PORTRAIT_WIDTH:F

    add-float/2addr v3, v4

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->ARROW_MARGIN:F

    add-float v0, v3, v4

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_PORTRAIT_Y:F

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v5, v5, v8

    invoke-virtual {v5}, Lcom/samsung/android/glview/GLImage;->getHeight()F

    move-result v5

    sub-float/2addr v4, v5

    div-float/2addr v4, v10

    add-float v1, v3, v4

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->hideWarningArrow()V

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v3, v3, v7

    invoke-virtual {v3, v0, v1}, Lcom/samsung/android/glview/GLImage;->translateAbsolute(FF)V

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v3, v3, v7

    invoke-virtual {v3, v7}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v3, v3, v8

    invoke-virtual {v3, v6}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v3, v3, v9

    invoke-virtual {v3, v6}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    const/4 v4, 0x3

    aget-object v3, v3, v4

    invoke-virtual {v3, v6}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v3, v3, v7

    invoke-virtual {v3, v7}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v3, v3, v7

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mBlinkAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v3, v4}, Lcom/samsung/android/glview/GLImage;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v3, v3, v7

    invoke-virtual {v3}, Lcom/samsung/android/glview/GLImage;->startAnimation()V

    goto/16 :goto_0

    :cond_8
    if-ne p1, v9, :cond_9

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_PORTRAIT_X:F

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_SINGLE_PORTRAIT_WIDTH:F

    add-float/2addr v3, v4

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->ARROW_MARGIN:F

    add-float v0, v3, v4

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_PORTRAIT_Y:F

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v5, v5, v8

    invoke-virtual {v5}, Lcom/samsung/android/glview/GLImage;->getHeight()F

    move-result v5

    sub-float/2addr v4, v5

    div-float/2addr v4, v10

    add-float v1, v3, v4

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->hideWarningArrow()V

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v3, v3, v8

    invoke-virtual {v3, v0, v1}, Lcom/samsung/android/glview/GLImage;->translateAbsolute(FF)V

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v3, v3, v7

    invoke-virtual {v3, v6}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v3, v3, v8

    invoke-virtual {v3, v7}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v3, v3, v9

    invoke-virtual {v3, v6}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    const/4 v4, 0x3

    aget-object v3, v3, v4

    invoke-virtual {v3, v6}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v3, v3, v8

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mBlinkAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v3, v4}, Lcom/samsung/android/glview/GLImage;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v3, v3, v8

    invoke-virtual {v3}, Lcom/samsung/android/glview/GLImage;->startAnimation()V

    goto/16 :goto_0

    :cond_9
    if-nez p1, :cond_0

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_PORTRAIT_X:F

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_SINGLE_PORTRAIT_WIDTH:F

    add-float/2addr v3, v4

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->ARROW_MARGIN:F

    add-float v0, v3, v4

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_PORTRAIT_Y:F

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v5, v5, v8

    invoke-virtual {v5}, Lcom/samsung/android/glview/GLImage;->getHeight()F

    move-result v5

    sub-float/2addr v4, v5

    div-float/2addr v4, v10

    add-float v1, v3, v4

    iput-boolean v7, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mAnimationDirection:Z

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->hideWarningArrow()V

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPreviewFocusRect:Lcom/samsung/android/glview/GLNinePatch;

    if-eqz v3, :cond_a

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPreviewFocusRect:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v3, v6}, Lcom/samsung/android/glview/GLNinePatch;->setVisibility(I)V

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCaptureFocusRect:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v3, v6}, Lcom/samsung/android/glview/GLNinePatch;->setVisibility(I)V

    :cond_a
    const/4 v2, 0x7

    :goto_2
    const/16 v3, 0xe

    if-ge v2, v3, :cond_b

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v3, v3, v2

    invoke-virtual {v3, v0, v1}, Lcom/samsung/android/glview/GLImage;->translateAbsolute(FF)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_b
    const/4 v2, 0x7

    :goto_3
    const/16 v3, 0xe

    if-ge v2, v3, :cond_c

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideRect:[Lcom/samsung/android/glview/GLImage;

    aget-object v3, v3, v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLivePreviewPortraitHeightMargin:F

    div-float/2addr v6, v10

    sub-float/2addr v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/glview/GLImage;->translateAbsolute(FF)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_c
    const/4 v3, 0x7

    invoke-direct {p0, v3}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->showGuideRect(I)V

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideArrow:[Lcom/samsung/android/glview/GLImage;

    const/4 v4, 0x7

    aget-object v3, v3, v4

    invoke-virtual {v3, v7}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideArrow:[Lcom/samsung/android/glview/GLImage;

    const/4 v4, 0x7

    aget-object v3, v3, v4

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mTwoBlinkAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v3, v4}, Lcom/samsung/android/glview/GLImage;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideArrow:[Lcom/samsung/android/glview/GLImage;

    const/4 v4, 0x7

    aget-object v3, v3, v4

    invoke-virtual {v3}, Lcom/samsung/android/glview/GLImage;->startAnimation()V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private showGuideRect(I)V
    .locals 3

    iget-boolean v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mMovingDetection:Z

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    :goto_1
    const/16 v1, 0xe

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideRect:[Lcom/samsung/android/glview/GLImage;

    aget-object v1, v1, v0

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideRect:[Lcom/samsung/android/glview/GLImage;

    aget-object v1, v1, p1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    goto :goto_0
.end method

.method private showGuideText(I)V
    .locals 5

    const/4 v4, 0x4

    const/4 v3, 0x0

    const-string v0, "WideSelfie"

    const-string v1, "showGuideText"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideText:Lcom/samsung/android/glview/GLText;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPostProgress:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWideSelfieMsgHandler:Lcom/sec/android/app/camera/shootingmode/WideSelfie$WideSelfieHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWideSelfieMsgHandler:Lcom/sec/android/app/camera/shootingmode/WideSelfie$WideSelfieHandler;

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/shootingmode/WideSelfie$WideSelfieHandler;->removeMessages(I)V

    :cond_0
    packed-switch p1, :pswitch_data_0

    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getOverlayLayoutController()Lcom/sec/android/app/camera/interfaces/OverlayLayoutController;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/OverlayLayoutController;->hideShootingModeText()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWideSelfieMsgHandler:Lcom/sec/android/app/camera/shootingmode/WideSelfie$WideSelfieHandler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWideSelfieMsgHandler:Lcom/sec/android/app/camera/shootingmode/WideSelfie$WideSelfieHandler;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v4, v2, v3}, Lcom/sec/android/app/camera/shootingmode/WideSelfie$WideSelfieHandler;->sendEmptyMessageDelayed(IJ)Z

    :cond_1
    return-void

    :pswitch_0
    invoke-direct {p0, v3}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->showGuideArrow(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideText:Lcom/samsung/android/glview/GLText;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a027e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->showGuideArrow(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideText:Lcom/samsung/android/glview/GLText;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a027f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->showGuideArrow(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideText:Lcom/samsung/android/glview/GLText;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a0280

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private showNextCaptureFocusRect()V
    .locals 5

    const/4 v3, 0x4

    const/4 v4, 0x0

    const-string v0, "WideSelfie"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showNextCaptureFocusRect left : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mNextCaptureFocusRectLeft:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " top : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mNextCaptureFocusRectTop:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mIsWideSelfieCaptureStarted:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mNextCaptureFocusRect:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->resetTranslate()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mNextCaptureFocusRectPort:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->resetTranslate()V

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCurrentOrientation:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mNextCaptureFocusRectPort:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mNextCaptureFocusRect:Lcom/samsung/android/glview/GLImage;

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mNextCaptureFocusRectLeft:F

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_LANDSCAPE_Y:F

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->NEXT_CAPTURE_FOCUS_LINE_WIDTH:F

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLImage;->translateAbsolute(FF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mNextCaptureFocusRect:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v4}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mNextCaptureFocusRect:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mNextCaptureFocusRectPort:Lcom/samsung/android/glview/GLImage;

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->NEXT_CAPTURE_FOCUS_PORTRAIT_X:F

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mNextCaptureFocusRectTop:F

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLImage;->translateAbsolute(FF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mNextCaptureFocusRectPort:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v4}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private showPreviewGroup()V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "WideSelfie"

    const-string v1, "showPreviewGroup"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->refreshLivePreviewPosition()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mBackgroundRectGroup:Lcom/samsung/android/glview/GLViewGroup;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mBackgroundRectGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method private showStopButton()V
    .locals 2

    const-string v0, "WideSelfie"

    const-string v1, "showStopButton"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v1, 0x100

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    return-void
.end method

.method private showWarningArrow(FFI)V
    .locals 4

    const/16 v2, 0xe

    const/4 v3, 0x4

    if-ne p3, v3, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v1, v1, p3

    invoke-virtual {v1, p1, p2}, Lcom/samsung/android/glview/GLImage;->translateAbsolute(FF)V

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideRect:[Lcom/samsung/android/glview/GLImage;

    aget-object v1, v1, v0

    invoke-virtual {v1, v3}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_2
    if-ge v0, v2, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLImage;->resetTranslate()V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v1, v1, v0

    invoke-virtual {v1, v3}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_3
    if-ge v0, v3, :cond_4

    if-ne v0, p3, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v1, v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v1, v1, v0

    invoke-virtual {v1, v3}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    goto :goto_4

    :cond_4
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->hideGuideText()V

    invoke-direct {p0, p3}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->translateRelativeDirection(I)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->showWarningText(I)V

    goto :goto_0
.end method

.method private showWarningText(I)V
    .locals 6

    const v5, 0x7f0a0286

    const v4, 0x7f0a0284

    const v3, 0x7f0a0283

    const v2, 0x7f0a0282

    const/4 v1, 0x2

    packed-switch p1, :pswitch_data_0

    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningText:Lcom/samsung/android/glview/GLText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mTrapezoidCaptureFocusRect:Lcom/sec/android/app/camera/widget/gl/Trapezoid;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/Trapezoid;->changeColor(Z)V

    return-void

    :pswitch_0
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCurrentOrientation:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCurrentOrientation:I

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningText:Lcom/samsung/android/glview/GLText;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningText:Lcom/samsung/android/glview/GLText;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCurrentOrientation:I

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCurrentOrientation:I

    if-ne v0, v1, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningText:Lcom/samsung/android/glview/GLText;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningText:Lcom/samsung/android/glview/GLText;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCurrentOrientation:I

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCurrentOrientation:I

    if-ne v0, v1, :cond_5

    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningText:Lcom/samsung/android/glview/GLText;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningText:Lcom/samsung/android/glview/GLText;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_3
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCurrentOrientation:I

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCurrentOrientation:I

    if-ne v0, v1, :cond_7

    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningText:Lcom/samsung/android/glview/GLText;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningText:Lcom/samsung/android/glview/GLText;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningText:Lcom/samsung/android/glview/GLText;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a0285

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private showWideSelfieToastPopup(I)V
    .locals 3

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const v1, 0x7f0a019b

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/widget/CameraToast;->makeText(Lcom/sec/android/app/camera/interfaces/CameraContext;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const v1, 0x7f0a0281

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/widget/CameraToast;->makeText(Lcom/sec/android/app/camera/interfaces/CameraContext;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const v1, 0x7f0a027d

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/widget/CameraToast;->makeText(Lcom/sec/android/app/camera/interfaces/CameraContext;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const v1, 0x7f0a027c

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/widget/CameraToast;->makeText(Lcom/sec/android/app/camera/interfaces/CameraContext;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private startCancelTimer()V
    .locals 4

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWideSelfieMsgHandler:Lcom/sec/android/app/camera/shootingmode/WideSelfie$WideSelfieHandler;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/WideSelfie$WideSelfieHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWideSelfieMsgHandler:Lcom/sec/android/app/camera/shootingmode/WideSelfie$WideSelfieHandler;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/WideSelfie$WideSelfieHandler;->removeMessages(I)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWideSelfieMsgHandler:Lcom/sec/android/app/camera/shootingmode/WideSelfie$WideSelfieHandler;

    const-wide/16 v2, 0x4e20

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/camera/shootingmode/WideSelfie$WideSelfieHandler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private stopCancelTimer()V
    .locals 3

    const/4 v2, 0x1

    const-string v0, "WideSelfie"

    const-string v1, "stopCancelTimer..."

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWideSelfieMsgHandler:Lcom/sec/android/app/camera/shootingmode/WideSelfie$WideSelfieHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWideSelfieMsgHandler:Lcom/sec/android/app/camera/shootingmode/WideSelfie$WideSelfieHandler;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/shootingmode/WideSelfie$WideSelfieHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWideSelfieMsgHandler:Lcom/sec/android/app/camera/shootingmode/WideSelfie$WideSelfieHandler;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/shootingmode/WideSelfie$WideSelfieHandler;->removeMessages(I)V

    :cond_0
    return-void
.end method

.method private stopWideSelfie()Z
    .locals 3

    const/4 v1, 0x0

    const/4 v0, 0x1

    iget-boolean v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mIsCapturePreparing:Z

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->getCaptureProgressIncreased()I

    move-result v2

    if-lez v2, :cond_2

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->stopWideSelfieCapture()V

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCurrentOrientation:I

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->showCropArea(I)V

    goto :goto_0

    :cond_2
    iget-boolean v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mIsWideSelfieCaptureStarted:Z

    if-eqz v2, :cond_6

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCaptureCount:I

    if-nez v2, :cond_6

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/Engine;->isTimerCounting()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->cancelShutterTimer()V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->startFaceDetection()V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getGestureControlMode()I

    move-result v1

    if-ne v1, v0, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1, v0}, Lcom/sec/android/app/camera/interfaces/Engine;->setGestureControlMode(I)V

    :cond_3
    :goto_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->reset()V

    goto :goto_0

    :cond_4
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->clearWideSelfieRect()V

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->setHapticEnabled(Z)V

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isTouchToCaptureStarted()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2, v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->setTouchToCaptureStarted(Z)V

    :cond_5
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->cancelWideSelfieCapture()V

    goto :goto_1

    :cond_6
    move v0, v1

    goto :goto_0
.end method

.method private stopWideSelfieCapture()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->misWideSelfieStopping:Z

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->clearWideSelfieRect()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->setHapticEnabled(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->stopWideSelfie()V

    :cond_0
    return-void
.end method

.method private stopWideSelfieSound()V
    .locals 3

    const/4 v2, 0x3

    const/4 v1, 0x2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWideSelfieMsgHandler:Lcom/sec/android/app/camera/shootingmode/WideSelfie$WideSelfieHandler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWideSelfieMsgHandler:Lcom/sec/android/app/camera/shootingmode/WideSelfie$WideSelfieHandler;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/WideSelfie$WideSelfieHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWideSelfieMsgHandler:Lcom/sec/android/app/camera/shootingmode/WideSelfie$WideSelfieHandler;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/shootingmode/WideSelfie$WideSelfieHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWideSelfieMsgHandler:Lcom/sec/android/app/camera/shootingmode/WideSelfie$WideSelfieHandler;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/WideSelfie$WideSelfieHandler;->removeMessages(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWideSelfieMsgHandler:Lcom/sec/android/app/camera/shootingmode/WideSelfie$WideSelfieHandler;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/shootingmode/WideSelfie$WideSelfieHandler;->removeMessages(I)V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->stopCameraSound(I)V

    :cond_2
    return-void
.end method

.method private translateRelativeDirection(I)I
    .locals 3

    const/4 v0, 0x2

    const/4 v1, 0x1

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCurrentOrientation:I

    if-eq v2, v1, :cond_0

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCurrentOrientation:I

    if-ne v2, v0, :cond_1

    :cond_0
    packed-switch p1, :pswitch_data_0

    :cond_1
    :goto_0
    return p1

    :pswitch_0
    move p1, v0

    goto :goto_0

    :pswitch_1
    const/4 p1, 0x3

    goto :goto_0

    :pswitch_2
    move p1, v1

    goto :goto_0

    :pswitch_3
    const/4 p1, 0x0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private wideSelfieRectChanged([B)V
    .locals 40

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v4}, Lcom/sec/android/app/camera/util/Util;->byteArrayToInt([BI)I

    move-result v17

    const/4 v4, 0x4

    move-object/from16 v0, p1

    invoke-static {v0, v4}, Lcom/sec/android/app/camera/util/Util;->byteArrayToInt([BI)I

    move-result v29

    const/16 v4, 0x8

    move-object/from16 v0, p1

    invoke-static {v0, v4}, Lcom/sec/android/app/camera/util/Util;->byteArrayToInt([BI)I

    move-result v24

    const/16 v4, 0xc

    move-object/from16 v0, p1

    invoke-static {v0, v4}, Lcom/sec/android/app/camera/util/Util;->byteArrayToInt([BI)I

    move-result v16

    const/16 v4, 0x10

    move-object/from16 v0, p1

    invoke-static {v0, v4}, Lcom/sec/android/app/camera/util/Util;->byteArrayToInt([BI)I

    move-result v22

    const/16 v4, 0x14

    move-object/from16 v0, p1

    invoke-static {v0, v4}, Lcom/sec/android/app/camera/util/Util;->byteArrayToInt([BI)I

    move-result v23

    const/16 v4, 0x18

    move-object/from16 v0, p1

    invoke-static {v0, v4}, Lcom/sec/android/app/camera/util/Util;->byteArrayToInt([BI)I

    move-result v20

    const/16 v4, 0x1c

    move-object/from16 v0, p1

    invoke-static {v0, v4}, Lcom/sec/android/app/camera/util/Util;->byteArrayToInt([BI)I

    move-result v21

    const/16 v4, 0x20

    move-object/from16 v0, p1

    invoke-static {v0, v4}, Lcom/sec/android/app/camera/util/Util;->byteArrayToInt([BI)I

    move-result v27

    const/16 v4, 0x24

    move-object/from16 v0, p1

    invoke-static {v0, v4}, Lcom/sec/android/app/camera/util/Util;->byteArrayToInt([BI)I

    move-result v28

    const/16 v4, 0x28

    move-object/from16 v0, p1

    invoke-static {v0, v4}, Lcom/sec/android/app/camera/util/Util;->byteArrayToInt([BI)I

    move-result v18

    const/16 v4, 0x2c

    move-object/from16 v0, p1

    invoke-static {v0, v4}, Lcom/sec/android/app/camera/util/Util;->byteArrayToInt([BI)I

    move-result v19

    const/16 v4, 0x30

    move-object/from16 v0, p1

    invoke-static {v0, v4}, Lcom/sec/android/app/camera/util/Util;->byteArrayToInt([BI)I

    move-result v25

    const/16 v4, 0x34

    move-object/from16 v0, p1

    invoke-static {v0, v4}, Lcom/sec/android/app/camera/util/Util;->byteArrayToInt([BI)I

    move-result v26

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLViewGroup;->getVisibility()I

    move-result v4

    const/4 v5, 0x4

    if-eq v4, v5, :cond_0

    move/from16 v0, v22

    int-to-float v4, v0

    move/from16 v0, v23

    int-to-float v5, v0

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->setFocusRectLeftTop(FF)V

    move/from16 v0, v17

    int-to-float v4, v0

    move/from16 v0, v29

    int-to-float v5, v0

    move/from16 v0, v24

    int-to-float v6, v0

    move/from16 v0, v16

    int-to-float v7, v0

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5, v6, v7}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->setPreviewThumbnailLeftTop(FFFF)V

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCaptureCount:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->refreshLivePreviewPosition()V

    :cond_2
    move/from16 v0, v20

    int-to-float v5, v0

    move/from16 v0, v21

    int-to-float v6, v0

    move/from16 v0, v27

    int-to-float v7, v0

    move/from16 v0, v28

    int-to-float v8, v0

    move/from16 v0, v25

    int-to-float v9, v0

    move/from16 v0, v26

    int-to-float v10, v0

    move/from16 v0, v18

    int-to-float v11, v0

    move/from16 v0, v19

    int-to-float v12, v0

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v12}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->setTrapezoidPosition(FFFFFFFF)V

    const-string v4, "WideSelfie"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onWideSelfieRectChanged: mDetectedDirection: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mDetectedDirection:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "WideSelfie"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onWideSelfieRectChanged: mFocusRectCenterX :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mFocusRectCenterX:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " mFocusRectCenterY : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mFocusRectCenterY:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "WideSelfie"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onWideSelfieRectChanged: mFocusRectLeft :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mFocusRectLeft:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " mFocusRectTop : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mFocusRectTop:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mFocusRectLeft:F

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mFocusRectTop:F

    move/from16 v32, v0

    const/4 v13, 0x0

    invoke-static/range {v22 .. v22}, Ljava/lang/Math;->abs(I)I

    move-result v4

    int-to-double v0, v4

    move-wide/from16 v36, v0

    invoke-static/range {v23 .. v23}, Ljava/lang/Math;->abs(I)I

    move-result v4

    int-to-double v0, v4

    move-wide/from16 v38, v0

    const/16 v33, 0x0

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mMovingDetection:Z

    if-nez v4, :cond_4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCurrentOrientation:I

    if-eqz v4, :cond_3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCurrentOrientation:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_4

    :cond_3
    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    cmpl-double v4, v38, v4

    if-gtz v4, :cond_6

    :cond_4
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCurrentOrientation:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_5

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCurrentOrientation:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_7

    :cond_5
    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    cmpl-double v4, v36, v4

    if-lez v4, :cond_7

    :cond_6
    const-string v4, "WideSelfie"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "xDistance : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v36

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " , yDistance : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v38

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->hideGuideRect()V

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mMovingDetection:Z

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mAnimationDirection:Z

    :cond_7
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCurrentOrientation:I

    if-eqz v4, :cond_8

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCurrentOrientation:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_10

    :cond_8
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mStartCheckWarning:Z

    if-eqz v4, :cond_d

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mDetectedDirection:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_c

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_LANDSCAPE_X:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPreviewThumbnailLeft:F

    add-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mFocusRectLeft:F

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    float-to-double v0, v4

    move-wide/from16 v36, v0

    :goto_1
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_SINGLE_HEIGHT:F

    const/high16 v5, 0x40000000    # 2.0f

    div-float v33, v4, v5

    :goto_2
    invoke-static/range {v36 .. v39}, Ljava/lang/Math;->max(DD)D

    move-result-wide v34

    move/from16 v0, v33

    float-to-double v4, v0

    const-wide v6, 0x3fb999999999999aL    # 0.1

    mul-double/2addr v4, v6

    cmpg-double v4, v34, v4

    if-gez v4, :cond_15

    const/4 v13, 0x0

    :goto_3
    if-nez v13, :cond_9

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->restartCancelTimer()V

    :cond_9
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->prepareWarningArrow(I)V

    const/4 v4, 0x1

    if-lt v13, v4, :cond_1c

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCurrentOrientation:I

    packed-switch v4, :pswitch_data_0

    :cond_a
    :goto_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCaptureFocusRect:Lcom/samsung/android/glview/GLNinePatch;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Lcom/samsung/android/glview/GLNinePatch;->setVisibility(I)V

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->isRectGuideVisible()Z

    move-result v4

    if-nez v4, :cond_b

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->getFocusRectDistance()F

    move-result v4

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v4, v4, v5

    if-lez v4, :cond_b

    const-string v4, "WideSelfie"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onWideRectChanged  Warning mLeftTopX : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLeftTopX:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mLeftTopY = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLeftTopY:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mRightTopX : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mRightTopX:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mRightTopY : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mRightTopY:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mRightBottomX : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mRightBottomX:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mLeftBottomX : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLeftBottomX:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mLeftBottomY : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLeftBottomX:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "WideSelfie"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onWideRectChanged Warning mWidth : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWidth:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mHeight : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mHeight:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v4, 0x8

    new-array v0, v4, [F

    move-object/from16 v30, v0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLeftTopX:F

    aput v5, v30, v4

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLeftTopY:F

    aput v5, v30, v4

    const/4 v4, 0x2

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mRightTopX:F

    aput v5, v30, v4

    const/4 v4, 0x3

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mRightTopY:F

    aput v5, v30, v4

    const/4 v4, 0x4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mRightBottomX:F

    aput v5, v30, v4

    const/4 v4, 0x5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mRightBottomY:F

    aput v5, v30, v4

    const/4 v4, 0x6

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLeftBottomX:F

    aput v5, v30, v4

    const/4 v4, 0x7

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLeftBottomY:F

    aput v5, v30, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mTrapezoidCaptureFocusRect:Lcom/sec/android/app/camera/widget/gl/Trapezoid;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWidth:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mHeight:F

    move-object/from16 v0, v30

    invoke-virtual {v4, v5, v6, v0}, Lcom/sec/android/app/camera/widget/gl/Trapezoid;->setRect(FF[F)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mTrapezoidCaptureFocusRect:Lcom/sec/android/app/camera/widget/gl/Trapezoid;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/sec/android/app/camera/widget/gl/Trapezoid;->setVisibility(I)V

    :cond_b
    const/4 v4, 0x3

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->showGuideArrow(I)V

    :goto_5
    const/4 v4, 0x3

    if-ne v13, v4, :cond_0

    const-string v4, "WideSelfie"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onWideRectChanged: Stop case - totalDistance:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v34

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWideSelfieWarning:Z

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->hideWarningArrow()V

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->stopWideSelfieSound()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/Engine;->scheduleStopWideSelfie()V

    goto/16 :goto_0

    :cond_c
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_LANDSCAPE_X:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPreviewThumbnailLeft:F

    add-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPreviewThumbnailWidth:F

    add-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mFocusRectLeft:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_SINGLE_WIDTH:F

    add-float/2addr v5, v6

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    float-to-double v0, v4

    move-wide/from16 v36, v0

    goto/16 :goto_1

    :cond_d
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mDetectedDirection:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_e

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mFocusRectLeft:F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mBackgroundRect:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v5}, Lcom/samsung/android/glview/GLNinePatch;->getCurrentLeft()F

    move-result v5

    cmpg-float v4, v4, v5

    if-gez v4, :cond_e

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mBackgroundRect:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLNinePatch;->getCurrentLeft()F

    move-result v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mFocusRectLeft:F

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    float-to-double v0, v4

    move-wide/from16 v36, v0

    goto/16 :goto_1

    :cond_e
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mDetectedDirection:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_f

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mFocusRectLeft:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_SINGLE_WIDTH:F

    add-float/2addr v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mBackgroundRect:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v5}, Lcom/samsung/android/glview/GLNinePatch;->getCurrentRight()F

    move-result v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_f

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mBackgroundRect:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLNinePatch;->getCurrentRight()F

    move-result v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mFocusRectLeft:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_SINGLE_WIDTH:F

    add-float/2addr v5, v6

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    float-to-double v0, v4

    move-wide/from16 v36, v0

    goto/16 :goto_1

    :cond_f
    const-wide/16 v36, 0x0

    goto/16 :goto_1

    :cond_10
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mStartCheckWarning:Z

    if-eqz v4, :cond_12

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mDetectedDirection:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_11

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_PORTRAIT_Y:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPreviewThumbnailTop:F

    add-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPreviewThumbnailHeight:F

    add-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mFocusRectTop:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_SINGLE_PORTRAIT_HEIGHT:F

    add-float/2addr v5, v6

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    float-to-double v0, v4

    move-wide/from16 v38, v0

    :goto_6
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_SINGLE_PORTRAIT_WIDTH:F

    const/high16 v5, 0x40400000    # 3.0f

    div-float v33, v4, v5

    goto/16 :goto_2

    :cond_11
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_PORTRAIT_Y:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPreviewThumbnailTop:F

    add-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mFocusRectTop:F

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    float-to-double v0, v4

    move-wide/from16 v38, v0

    goto :goto_6

    :cond_12
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mDetectedDirection:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_13

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mFocusRectTop:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_PORTRAIT_Y:F

    cmpg-float v4, v4, v5

    if-gez v4, :cond_13

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_PORTRAIT_Y:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mFocusRectTop:F

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    float-to-double v0, v4

    move-wide/from16 v38, v0

    goto :goto_6

    :cond_13
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mDetectedDirection:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_14

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mFocusRectTop:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_SINGLE_PORTRAIT_HEIGHT:F

    add-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_PORTRAIT_Y:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    add-float/2addr v5, v6

    cmpl-float v4, v4, v5

    if-lez v4, :cond_14

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mFocusRectTop:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_SINGLE_PORTRAIT_HEIGHT:F

    add-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_PORTRAIT_Y:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    add-float/2addr v5, v6

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    float-to-double v0, v4

    move-wide/from16 v38, v0

    goto :goto_6

    :cond_14
    const-wide/16 v38, 0x0

    goto :goto_6

    :cond_15
    move/from16 v0, v33

    float-to-double v4, v0

    const-wide v6, 0x3fd3333333333333L    # 0.3

    mul-double/2addr v4, v6

    cmpg-double v4, v34, v4

    if-gez v4, :cond_16

    const/4 v13, 0x1

    goto/16 :goto_3

    :cond_16
    move/from16 v0, v33

    float-to-double v4, v0

    const-wide v6, 0x3fe999999999999aL    # 0.8

    mul-double/2addr v4, v6

    cmpg-double v4, v34, v4

    if-gez v4, :cond_17

    const/4 v13, 0x2

    goto/16 :goto_3

    :cond_17
    const/4 v13, 0x3

    goto/16 :goto_3

    :pswitch_0
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_LANDSCAPE_X:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_LANDSCAPE_WIDTH:F

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    add-float/2addr v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    const/4 v6, 0x3

    aget-object v5, v5, v6

    invoke-virtual {v5}, Lcom/samsung/android/glview/GLImage;->getWidth()F

    move-result v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    sub-float v14, v4, v5

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_LANDSCAPE_Y:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_LANDSCAPE_HEIGHT:F

    add-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->ARROW_LANDSCAPE_OVERLAY:F

    sub-float v15, v4, v5

    cmpl-double v4, v36, v38

    if-lez v4, :cond_18

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mDetectedDirection:I

    packed-switch v4, :pswitch_data_1

    goto/16 :goto_4

    :pswitch_1
    const/4 v4, 0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15, v4}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->showWarningArrow(FFI)V

    goto/16 :goto_4

    :pswitch_2
    const/4 v4, 0x3

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15, v4}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->showWarningArrow(FFI)V

    goto/16 :goto_4

    :cond_18
    if-lez v23, :cond_19

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15, v4}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->showWarningArrow(FFI)V

    goto/16 :goto_4

    :cond_19
    if-gez v23, :cond_a

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15, v4}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->showWarningArrow(FFI)V

    goto/16 :goto_4

    :pswitch_3
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_PORTRAIT_X:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_SINGLE_PORTRAIT_WIDTH:F

    add-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->ARROW_MARGIN:F

    add-float v14, v4, v5

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_PORTRAIT_Y:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    const/4 v7, 0x1

    aget-object v6, v6, v7

    invoke-virtual {v6}, Lcom/samsung/android/glview/GLImage;->getHeight()F

    move-result v6

    sub-float/2addr v5, v6

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    add-float v15, v4, v5

    cmpl-double v4, v38, v36

    if-lez v4, :cond_1a

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mDetectedDirection:I

    packed-switch v4, :pswitch_data_2

    goto/16 :goto_4

    :pswitch_4
    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15, v4}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->showWarningArrow(FFI)V

    goto/16 :goto_4

    :pswitch_5
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15, v4}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->showWarningArrow(FFI)V

    goto/16 :goto_4

    :cond_1a
    if-gez v22, :cond_1b

    const/4 v4, 0x3

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15, v4}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->showWarningArrow(FFI)V

    goto/16 :goto_4

    :cond_1b
    if-lez v22, :cond_a

    const/4 v4, 0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15, v4}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->showWarningArrow(FFI)V

    goto/16 :goto_4

    :cond_1c
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->isRectGuideVisible()Z

    move-result v4

    if-nez v4, :cond_1d

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->getFocusRectDistance()F

    move-result v4

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v4, v4, v5

    if-lez v4, :cond_1d

    const-string v4, "WideSelfie"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onWideRectChanged not Warning mLeftTopX : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLeftTopX:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mLeftTopY = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLeftTopY:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mRightTopX : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mRightTopX:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mRightTopY : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mRightTopY:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mRightBottomX : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mRightBottomX:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mLeftBottomX : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLeftBottomX:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mLeftBottomY : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLeftBottomX:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "WideSelfie"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onWideRectChanged not Warning mWidth : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWidth:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mHeight : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mHeight:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v4, 0x8

    new-array v0, v4, [F

    move-object/from16 v30, v0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLeftTopX:F

    aput v5, v30, v4

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLeftTopY:F

    aput v5, v30, v4

    const/4 v4, 0x2

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mRightTopX:F

    aput v5, v30, v4

    const/4 v4, 0x3

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mRightTopY:F

    aput v5, v30, v4

    const/4 v4, 0x4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mRightBottomX:F

    aput v5, v30, v4

    const/4 v4, 0x5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mRightBottomY:F

    aput v5, v30, v4

    const/4 v4, 0x6

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLeftBottomX:F

    aput v5, v30, v4

    const/4 v4, 0x7

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLeftBottomY:F

    aput v5, v30, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mTrapezoidCaptureFocusRect:Lcom/sec/android/app/camera/widget/gl/Trapezoid;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWidth:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mHeight:F

    move-object/from16 v0, v30

    invoke-virtual {v4, v5, v6, v0}, Lcom/sec/android/app/camera/widget/gl/Trapezoid;->setRect(FF[F)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mTrapezoidCaptureFocusRect:Lcom/sec/android/app/camera/widget/gl/Trapezoid;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/sec/android/app/camera/widget/gl/Trapezoid;->setVisibility(I)V

    :cond_1d
    move-object/from16 v0, p0

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->isMaxPositionReached(FF)Z

    move-result v4

    if-eqz v4, :cond_20

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideShow:Z

    if-eqz v4, :cond_20

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCurrentOrientation:I

    if-eqz v4, :cond_1e

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCurrentOrientation:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_22

    :cond_1e
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mDetectedDirection:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_21

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->hideWarningText()V

    const/4 v4, 0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->showGuideText(I)V

    :cond_1f
    :goto_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/4 v5, 0x7

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Lcom/sec/android/app/camera/interfaces/CameraContext;->playCameraSound(II)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x2

    invoke-static {v4, v5}, Lcom/sec/android/app/camera/haptic/HapticFeedback;->playHaptic(Landroid/content/Context;I)V

    :cond_20
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCurrentDirection:I

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->showGuideArrow(I)V

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->hideWarningText()V

    goto/16 :goto_5

    :cond_21
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mDetectedDirection:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1f

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->hideWarningText()V

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->showGuideText(I)V

    goto :goto_7

    :cond_22
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mDetectedDirection:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_23

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->hideWarningText()V

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->showGuideText(I)V

    goto :goto_7

    :cond_23
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mDetectedDirection:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1f

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->hideWarningText()V

    const/4 v4, 0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->showGuideText(I)V

    goto :goto_7

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public isCapturing()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mIsWideSelfieCaptureStarted:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->misWideSelfieCapturing:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isChangingShootingModeDisabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isZoomDisabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onActivate(Lcom/sec/android/app/camera/interfaces/Engine;)V
    .locals 5

    const/4 v4, 0x7

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/4 v2, 0x0

    new-array v2, v2, [I

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->setSideQuickSettingItems([I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/4 v2, -0x1

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "camera.action.COVER_ATTACHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "camera.action.COVER_DETACHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "camera.action.ACTION_ERROR_CAMERA_BUSY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "camera.action.ACTION_ERROR_CAMERA_SERVER_DIED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {v1, v2, v0}, Lcom/sec/android/app/camera/util/CameraLocalBroadcastManager;->register(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->createTrapezoidFocusRect()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->reset()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->showPreviewGroup()V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isFrontCamera()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getHRMShutter()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1, p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->registerHRMShutterListener(Lcom/sec/android/app/camera/interfaces/CameraContext$HRMShutterListener;)V

    :cond_0
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getLastOrientation()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->showCropArea(I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getGestureControlMode()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/Engine;->setGestureControlMode(I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1, p0}, Lcom/sec/android/app/camera/interfaces/Engine;->setWideSelfieListener(Lcom/samsung/android/camera/core/SemCamera$WideSelfieEventListener;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1, p0}, Lcom/sec/android/app/camera/interfaces/Engine;->setPrepareDBUpdateListener(Lcom/sec/android/app/camera/interfaces/Engine$DBUpdateListener;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->sendOrientationInfoToHAL()V

    new-instance v1, Lcom/sec/android/app/camera/shootingmode/WideSelfie$WideSelfieHandler;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie$WideSelfieHandler;-><init>(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)V

    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWideSelfieMsgHandler:Lcom/sec/android/app/camera/shootingmode/WideSelfie$WideSelfieHandler;

    iget-boolean v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mIsStartCapture:Z

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCaptureCount:I

    if-lez v1, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCurrentOrientation:I

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->showCropArea(I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWideSelfieMsgHandler:Lcom/sec/android/app/camera/shootingmode/WideSelfie$WideSelfieHandler;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWideSelfieMsgHandler:Lcom/sec/android/app/camera/shootingmode/WideSelfie$WideSelfieHandler;

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/shootingmode/WideSelfie$WideSelfieHandler;->removeMessages(I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWideSelfieMsgHandler:Lcom/sec/android/app/camera/shootingmode/WideSelfie$WideSelfieHandler;

    const-wide/16 v2, 0x32

    invoke-virtual {v1, v4, v2, v3}, Lcom/sec/android/app/camera/shootingmode/WideSelfie$WideSelfieHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method public onActivityTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onChangeShootingModeParameters(Lcom/samsung/android/camera/core/SemCamera$Parameters;)V
    .locals 2

    const-string v0, "picture-size"

    sget-object v1, Lcom/sec/android/app/camera/feature/Feature;->WIDE_SELFIE_RESOLUTION:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x1f40

    const/16 v1, 0x7530

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->setPreviewFpsRange(II)V

    const-string v0, "effect_hint"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->set(Ljava/lang/String;I)V

    return-void
.end method

.method public onCreateView(Lcom/samsung/android/glview/GLContext;Lcom/samsung/android/glview/GLViewGroup;Lcom/samsung/android/glview/GLViewGroup;Lcom/sec/android/app/camera/interfaces/BaseMenuController;Lcom/sec/android/app/camera/interfaces/MenuManager;)V
    .locals 12

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGLContext:Lcom/samsung/android/glview/GLContext;

    move-object/from16 v0, p4

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    move-object/from16 v0, p5

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    iput-object p2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mViewLayout:Lcom/samsung/android/glview/GLViewGroup;

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_SCREEN_WIDTH:I

    int-to-float v1, v1

    const v2, 0x3faaaaab

    div-float/2addr v1, v2

    sget-object v2, Lcom/sec/android/app/camera/feature/Feature;->WIDE_SELFIE_RESOLUTION:Ljava/lang/String;

    invoke-static {v2}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Lcom/sec/android/app/camera/util/CameraResolution;->getIntWidth(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    const v2, 0x3fb6a7f0    # 1.427f

    mul-float/2addr v1, v2

    const v2, 0x3f9d70a4    # 1.23f

    mul-float/2addr v1, v2

    iput v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPrevThumbnailScaleFactor:F

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getLastOrientation()I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCurrentOrientation:I

    new-instance v1, Lcom/samsung/android/glview/GLViewGroup;

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_LANDSCAPE_X:F

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_LANDSCAPE_Y:F

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_LANDSCAPE_WIDTH:F

    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_LANDSCAPE_HEIGHT:F

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    new-instance v1, Lcom/samsung/android/glview/GLNinePatch;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const v4, 0x7f020155

    invoke-direct {v1, p1, v2, v3, v4}, Lcom/samsung/android/glview/GLNinePatch;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPreviewFocusRect:Lcom/samsung/android/glview/GLNinePatch;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    new-instance v1, Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_LANDSCAPE_WIDTH:F

    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_LANDSCAPE_HEIGHT:F

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mBackgroundRectGroup:Lcom/samsung/android/glview/GLViewGroup;

    new-instance v1, Lcom/samsung/android/glview/GLNinePatch;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const v4, 0x7f020154

    invoke-direct {v1, p1, v2, v3, v4}, Lcom/samsung/android/glview/GLNinePatch;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mBackgroundRect:Lcom/samsung/android/glview/GLNinePatch;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mBackgroundRectGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mBackgroundRect:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mBackgroundRectGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->setCenterPivot(Z)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mBackgroundRectGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->setRotatable(Z)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mBackgroundRectGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v1, p0}, Lcom/samsung/android/glview/GLViewGroup;->setOrientationChangeListener(Lcom/samsung/android/glview/GLView$OrientationChangeListener;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mBackgroundRectGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mBackgroundRectGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->setBypassTouch(Z)V

    new-instance v1, Lcom/samsung/android/glview/GLNinePatch;

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_SINGLE_WIDTH:F

    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_SINGLE_HEIGHT:F

    const v7, 0x7f020155

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, Lcom/samsung/android/glview/GLNinePatch;-><init>(Lcom/samsung/android/glview/GLContext;FFFFI)V

    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCaptureFocusRect:Lcom/samsung/android/glview/GLNinePatch;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCaptureFocusRect:Lcom/samsung/android/glview/GLNinePatch;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLNinePatch;->setVisibility(I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCaptureFocusRect:Lcom/samsung/android/glview/GLNinePatch;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLNinePatch;->setBypassTouch(Z)V

    new-instance v1, Lcom/sec/android/app/camera/widget/gl/Trapezoid;

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_SINGLE_WIDTH:F

    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_SINGLE_HEIGHT:F

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/app/camera/widget/gl/Trapezoid;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mTrapezoidCaptureFocusRect:Lcom/sec/android/app/camera/widget/gl/Trapezoid;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mTrapezoidCaptureFocusRect:Lcom/sec/android/app/camera/widget/gl/Trapezoid;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/widget/gl/Trapezoid;->setVisibility(I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mTrapezoidCaptureFocusRect:Lcom/sec/android/app/camera/widget/gl/Trapezoid;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/widget/gl/Trapezoid;->setBypassTouch(Z)V

    new-instance v1, Lcom/samsung/android/glview/GLImage;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const v4, 0x7f0201ea

    invoke-direct {v1, p1, v2, v3, v4}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mNextCaptureFocusRect:Lcom/samsung/android/glview/GLImage;

    new-instance v1, Lcom/samsung/android/glview/GLImage;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const v4, 0x7f0201eb

    invoke-direct {v1, p1, v2, v3, v4}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mNextCaptureFocusRectPort:Lcom/samsung/android/glview/GLImage;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mNextCaptureFocusRect:Lcom/samsung/android/glview/GLImage;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mNextCaptureFocusRectPort:Lcom/samsung/android/glview/GLImage;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    new-instance v1, Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->GUIDE_TEXT_WIDTH:F

    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->GUIDE_TEXT_HEIGHT:F

    const-string v7, ""

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->GUIDE_TEXT_SIZE:F

    iget-object v8, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v8}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFontScale()F

    move-result v8

    mul-float/2addr v8, v2

    iget v9, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->GUIDE_TEXT_FONT_COLOR:I

    const/4 v10, 0x0

    move-object v2, p1

    invoke-direct/range {v1 .. v10}, Lcom/samsung/android/glview/GLText;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLjava/lang/String;FIZ)V

    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideText:Lcom/samsung/android/glview/GLText;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideText:Lcom/samsung/android/glview/GLText;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLText;->setRotatable(Z)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideText:Lcom/samsung/android/glview/GLText;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLText;->setCenterPivot(Z)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideText:Lcom/samsung/android/glview/GLText;

    const/4 v2, 0x1

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideText:Lcom/samsung/android/glview/GLText;

    const/4 v2, 0x1

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->GUIDE_TEXT_STROKE_WIDTH:I

    int-to-float v3, v3

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->GUIDE_TEXT_STROKE_COLOR:I

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/glview/GLText;->setStroke(ZFI)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideText:Lcom/samsung/android/glview/GLText;

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getRobotoRegular()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLText;->setTextFont(Landroid/graphics/Typeface;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideText:Lcom/samsung/android/glview/GLText;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    new-instance v1, Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->GUIDE_TEXT_WIDTH:F

    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->GUIDE_TEXT_HEIGHT:F

    const-string v7, ""

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->GUIDE_TEXT_SIZE:F

    iget-object v8, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v8}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFontScale()F

    move-result v8

    mul-float/2addr v8, v2

    iget v9, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->GUIDE_TEXT_FONT_COLOR:I

    const/4 v10, 0x0

    move-object v2, p1

    invoke-direct/range {v1 .. v10}, Lcom/samsung/android/glview/GLText;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLjava/lang/String;FIZ)V

    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningText:Lcom/samsung/android/glview/GLText;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningText:Lcom/samsung/android/glview/GLText;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLText;->setRotatable(Z)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningText:Lcom/samsung/android/glview/GLText;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLText;->setCenterPivot(Z)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningText:Lcom/samsung/android/glview/GLText;

    const/4 v2, 0x1

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningText:Lcom/samsung/android/glview/GLText;

    const/4 v2, 0x1

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->GUIDE_TEXT_STROKE_WIDTH:I

    int-to-float v3, v3

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->GUIDE_TEXT_STROKE_COLOR:I

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/glview/GLText;->setStroke(ZFI)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningText:Lcom/samsung/android/glview/GLText;

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getRobotoRegular()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLText;->setTextFont(Landroid/graphics/Typeface;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningText:Lcom/samsung/android/glview/GLText;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    const/4 v2, 0x0

    new-instance v3, Lcom/samsung/android/glview/GLImage;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v6, 0x7f0201e3

    invoke-direct {v3, p1, v4, v5, v6}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    aput-object v3, v1, v2

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    const/4 v2, 0x1

    new-instance v3, Lcom/samsung/android/glview/GLImage;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v6, 0x7f0201e9

    invoke-direct {v3, p1, v4, v5, v6}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    aput-object v3, v1, v2

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    const/4 v2, 0x2

    new-instance v3, Lcom/samsung/android/glview/GLImage;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v6, 0x7f0201e8

    invoke-direct {v3, p1, v4, v5, v6}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    aput-object v3, v1, v2

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    const/4 v2, 0x3

    new-instance v3, Lcom/samsung/android/glview/GLImage;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v6, 0x7f0201e2

    invoke-direct {v3, p1, v4, v5, v6}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    aput-object v3, v1, v2

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideArrow:[Lcom/samsung/android/glview/GLImage;

    const/4 v2, 0x0

    new-instance v3, Lcom/samsung/android/glview/GLImage;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v6, 0x7f0201e2

    invoke-direct {v3, p1, v4, v5, v6}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    aput-object v3, v1, v2

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideArrow:[Lcom/samsung/android/glview/GLImage;

    const/4 v2, 0x1

    new-instance v3, Lcom/samsung/android/glview/GLImage;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v6, 0x7f0201e0

    invoke-direct {v3, p1, v4, v5, v6}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    aput-object v3, v1, v2

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideArrow:[Lcom/samsung/android/glview/GLImage;

    const/4 v2, 0x2

    new-instance v3, Lcom/samsung/android/glview/GLImage;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v6, 0x7f0201de

    invoke-direct {v3, p1, v4, v5, v6}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    aput-object v3, v1, v2

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideArrow:[Lcom/samsung/android/glview/GLImage;

    const/4 v2, 0x3

    new-instance v3, Lcom/samsung/android/glview/GLImage;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v6, 0x7f0201ec

    invoke-direct {v3, p1, v4, v5, v6}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    aput-object v3, v1, v2

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideArrow:[Lcom/samsung/android/glview/GLImage;

    const/4 v2, 0x4

    new-instance v3, Lcom/samsung/android/glview/GLImage;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v6, 0x7f0201e4

    invoke-direct {v3, p1, v4, v5, v6}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    aput-object v3, v1, v2

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideArrow:[Lcom/samsung/android/glview/GLImage;

    const/4 v2, 0x5

    new-instance v3, Lcom/samsung/android/glview/GLImage;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v6, 0x7f0201e6

    invoke-direct {v3, p1, v4, v5, v6}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    aput-object v3, v1, v2

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideArrow:[Lcom/samsung/android/glview/GLImage;

    const/4 v2, 0x6

    new-instance v3, Lcom/samsung/android/glview/GLImage;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v6, 0x7f0201e8

    invoke-direct {v3, p1, v4, v5, v6}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    aput-object v3, v1, v2

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideArrow:[Lcom/samsung/android/glview/GLImage;

    const/4 v2, 0x7

    new-instance v3, Lcom/samsung/android/glview/GLImage;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v6, 0x7f0201e3

    invoke-direct {v3, p1, v4, v5, v6}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    aput-object v3, v1, v2

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideArrow:[Lcom/samsung/android/glview/GLImage;

    const/16 v2, 0x8

    new-instance v3, Lcom/samsung/android/glview/GLImage;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v6, 0x7f0201e1

    invoke-direct {v3, p1, v4, v5, v6}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    aput-object v3, v1, v2

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideArrow:[Lcom/samsung/android/glview/GLImage;

    const/16 v2, 0x9

    new-instance v3, Lcom/samsung/android/glview/GLImage;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v6, 0x7f0201df

    invoke-direct {v3, p1, v4, v5, v6}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    aput-object v3, v1, v2

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideArrow:[Lcom/samsung/android/glview/GLImage;

    const/16 v2, 0xa

    new-instance v3, Lcom/samsung/android/glview/GLImage;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v6, 0x7f0201ed

    invoke-direct {v3, p1, v4, v5, v6}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    aput-object v3, v1, v2

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideArrow:[Lcom/samsung/android/glview/GLImage;

    const/16 v2, 0xb

    new-instance v3, Lcom/samsung/android/glview/GLImage;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v6, 0x7f0201e5

    invoke-direct {v3, p1, v4, v5, v6}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    aput-object v3, v1, v2

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideArrow:[Lcom/samsung/android/glview/GLImage;

    const/16 v2, 0xc

    new-instance v3, Lcom/samsung/android/glview/GLImage;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v6, 0x7f0201e7

    invoke-direct {v3, p1, v4, v5, v6}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    aput-object v3, v1, v2

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideArrow:[Lcom/samsung/android/glview/GLImage;

    const/16 v2, 0xd

    new-instance v3, Lcom/samsung/android/glview/GLImage;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v6, 0x7f0201e9

    invoke-direct {v3, p1, v4, v5, v6}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    aput-object v3, v1, v2

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideRect:[Lcom/samsung/android/glview/GLImage;

    const/4 v2, 0x0

    new-instance v3, Lcom/samsung/android/glview/GLImage;

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->FOCUS_RECT_LANDSCAPE_X:F

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->ANIMATION_TOP_MARGIN_LEFT:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->FOCUS_RECT_LANDSCAPE_Y:F

    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->ANIMATION_TOP_MARGIN_TOP:F

    sub-float/2addr v5, v6

    const v6, 0x7f0200b5

    invoke-direct {v3, p1, v4, v5, v6}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    aput-object v3, v1, v2

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideRect:[Lcom/samsung/android/glview/GLImage;

    const/4 v2, 0x1

    new-instance v3, Lcom/samsung/android/glview/GLImage;

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->FOCUS_RECT_LANDSCAPE_X:F

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->ANIMATION_TOP_MARGIN_LEFT:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->FOCUS_RECT_LANDSCAPE_Y:F

    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->ANIMATION_TOP_MARGIN_TOP:F

    sub-float/2addr v5, v6

    const v6, 0x7f0200b3

    invoke-direct {v3, p1, v4, v5, v6}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    aput-object v3, v1, v2

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideRect:[Lcom/samsung/android/glview/GLImage;

    const/4 v2, 0x2

    new-instance v3, Lcom/samsung/android/glview/GLImage;

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->FOCUS_RECT_LANDSCAPE_X:F

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->ANIMATION_TOP_MARGIN_LEFT:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->FOCUS_RECT_LANDSCAPE_Y:F

    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->ANIMATION_TOP_MARGIN_TOP:F

    sub-float/2addr v5, v6

    const v6, 0x7f0200b1

    invoke-direct {v3, p1, v4, v5, v6}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    aput-object v3, v1, v2

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideRect:[Lcom/samsung/android/glview/GLImage;

    const/4 v2, 0x3

    new-instance v3, Lcom/samsung/android/glview/GLImage;

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->FOCUS_RECT_LANDSCAPE_X:F

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->ANIMATION_TOP_MARGIN_LEFT:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->FOCUS_RECT_LANDSCAPE_Y:F

    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->ANIMATION_TOP_MARGIN_TOP:F

    sub-float/2addr v5, v6

    const v6, 0x7f0200b0

    invoke-direct {v3, p1, v4, v5, v6}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    aput-object v3, v1, v2

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideRect:[Lcom/samsung/android/glview/GLImage;

    const/4 v2, 0x4

    new-instance v3, Lcom/samsung/android/glview/GLImage;

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->FOCUS_RECT_LANDSCAPE_X:F

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->ANIMATION_TOP_MARGIN_LEFT:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->FOCUS_RECT_LANDSCAPE_Y:F

    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->ANIMATION_TOP_MARGIN_TOP:F

    sub-float/2addr v5, v6

    const v6, 0x7f0200b7

    invoke-direct {v3, p1, v4, v5, v6}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    aput-object v3, v1, v2

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideRect:[Lcom/samsung/android/glview/GLImage;

    const/4 v2, 0x5

    new-instance v3, Lcom/samsung/android/glview/GLImage;

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->FOCUS_RECT_LANDSCAPE_X:F

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->ANIMATION_TOP_MARGIN_LEFT:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->FOCUS_RECT_LANDSCAPE_Y:F

    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->ANIMATION_TOP_MARGIN_TOP:F

    sub-float/2addr v5, v6

    const v6, 0x7f0200b9

    invoke-direct {v3, p1, v4, v5, v6}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    aput-object v3, v1, v2

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideRect:[Lcom/samsung/android/glview/GLImage;

    const/4 v2, 0x6

    new-instance v3, Lcom/samsung/android/glview/GLImage;

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->FOCUS_RECT_LANDSCAPE_X:F

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->ANIMATION_TOP_MARGIN_LEFT:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->FOCUS_RECT_LANDSCAPE_Y:F

    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->ANIMATION_TOP_MARGIN_TOP:F

    sub-float/2addr v5, v6

    const v6, 0x7f0200bb

    invoke-direct {v3, p1, v4, v5, v6}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    aput-object v3, v1, v2

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideRect:[Lcom/samsung/android/glview/GLImage;

    const/4 v2, 0x7

    new-instance v3, Lcom/samsung/android/glview/GLImage;

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->FOCUS_RECT_PORTRAIT_X:F

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->ANIMATION_TOP_MARGIN_LEFT:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_PORTRAIT_Y:F

    const v6, 0x7f0b0243

    invoke-static {v6}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v6

    iget v7, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_SINGLE_PORTRAIT_HEIGHT:F

    sub-float/2addr v6, v7

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    add-float/2addr v5, v6

    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->ANIMATION_TOP_MARGIN_TOP:F

    sub-float/2addr v5, v6

    const v6, 0x7f0200b6

    invoke-direct {v3, p1, v4, v5, v6}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    aput-object v3, v1, v2

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideRect:[Lcom/samsung/android/glview/GLImage;

    const/16 v2, 0x8

    new-instance v3, Lcom/samsung/android/glview/GLImage;

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->FOCUS_RECT_PORTRAIT_X:F

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->ANIMATION_TOP_MARGIN_LEFT:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_PORTRAIT_Y:F

    const v6, 0x7f0b0243

    invoke-static {v6}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v6

    iget v7, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_SINGLE_PORTRAIT_HEIGHT:F

    sub-float/2addr v6, v7

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    add-float/2addr v5, v6

    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->ANIMATION_TOP_MARGIN_TOP:F

    sub-float/2addr v5, v6

    const v6, 0x7f0200b4

    invoke-direct {v3, p1, v4, v5, v6}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    aput-object v3, v1, v2

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideRect:[Lcom/samsung/android/glview/GLImage;

    const/16 v2, 0x9

    new-instance v3, Lcom/samsung/android/glview/GLImage;

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->FOCUS_RECT_PORTRAIT_X:F

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->ANIMATION_TOP_MARGIN_LEFT:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_PORTRAIT_Y:F

    const v6, 0x7f0b0243

    invoke-static {v6}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v6

    iget v7, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_SINGLE_PORTRAIT_HEIGHT:F

    sub-float/2addr v6, v7

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    add-float/2addr v5, v6

    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->ANIMATION_TOP_MARGIN_TOP:F

    sub-float/2addr v5, v6

    const v6, 0x7f0200b2

    invoke-direct {v3, p1, v4, v5, v6}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    aput-object v3, v1, v2

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideRect:[Lcom/samsung/android/glview/GLImage;

    const/16 v2, 0xa

    new-instance v3, Lcom/samsung/android/glview/GLImage;

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->FOCUS_RECT_PORTRAIT_X:F

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->ANIMATION_TOP_MARGIN_LEFT:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_PORTRAIT_Y:F

    const v6, 0x7f0b0243

    invoke-static {v6}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v6

    iget v7, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_SINGLE_PORTRAIT_HEIGHT:F

    sub-float/2addr v6, v7

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    add-float/2addr v5, v6

    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->ANIMATION_TOP_MARGIN_TOP:F

    sub-float/2addr v5, v6

    const v6, 0x7f0200b0

    invoke-direct {v3, p1, v4, v5, v6}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    aput-object v3, v1, v2

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideRect:[Lcom/samsung/android/glview/GLImage;

    const/16 v2, 0xb

    new-instance v3, Lcom/samsung/android/glview/GLImage;

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->FOCUS_RECT_PORTRAIT_X:F

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->ANIMATION_TOP_MARGIN_LEFT:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_PORTRAIT_Y:F

    const v6, 0x7f0b0243

    invoke-static {v6}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v6

    iget v7, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_SINGLE_PORTRAIT_HEIGHT:F

    sub-float/2addr v6, v7

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    add-float/2addr v5, v6

    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->ANIMATION_TOP_MARGIN_TOP:F

    sub-float/2addr v5, v6

    const v6, 0x7f0200b8

    invoke-direct {v3, p1, v4, v5, v6}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    aput-object v3, v1, v2

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideRect:[Lcom/samsung/android/glview/GLImage;

    const/16 v2, 0xc

    new-instance v3, Lcom/samsung/android/glview/GLImage;

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->FOCUS_RECT_PORTRAIT_X:F

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->ANIMATION_TOP_MARGIN_LEFT:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_PORTRAIT_Y:F

    const v6, 0x7f0b0243

    invoke-static {v6}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v6

    iget v7, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_SINGLE_PORTRAIT_HEIGHT:F

    sub-float/2addr v6, v7

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    add-float/2addr v5, v6

    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->ANIMATION_TOP_MARGIN_TOP:F

    sub-float/2addr v5, v6

    const v6, 0x7f0200ba

    invoke-direct {v3, p1, v4, v5, v6}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    aput-object v3, v1, v2

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideRect:[Lcom/samsung/android/glview/GLImage;

    const/16 v2, 0xd

    new-instance v3, Lcom/samsung/android/glview/GLImage;

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->FOCUS_RECT_PORTRAIT_X:F

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->ANIMATION_TOP_MARGIN_LEFT:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_PORTRAIT_Y:F

    const v6, 0x7f0b0243

    invoke-static {v6}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v6

    iget v7, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_SINGLE_PORTRAIT_HEIGHT:F

    sub-float/2addr v6, v7

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    add-float/2addr v5, v6

    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->ANIMATION_TOP_MARGIN_TOP:F

    sub-float/2addr v5, v6

    const v6, 0x7f0200bc

    invoke-direct {v3, p1, v4, v5, v6}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    aput-object v3, v1, v2

    new-instance v1, Lcom/samsung/android/glview/GLButton;

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->STOP_BUTTON_POS_X:I

    int-to-float v3, v2

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->STOP_BUTTON_POS_Y:I

    int-to-float v4, v2

    const v5, 0x7f0200ef

    const v6, 0x7f0200f1

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, p1

    invoke-direct/range {v1 .. v8}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFIIII)V

    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->setMute(Z)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0a0161

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->setTitle(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->setRotatable(Z)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->setRotateAnimation(Z)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

    new-instance v2, Lcom/sec/android/app/camera/shootingmode/WideSelfie$2;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie$2;-><init>(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)V

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->setFocusable(Z)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->STOP_BUTTON_DIAMETER:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->setRippleDiameter(F)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p3, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    new-instance v1, Lcom/samsung/android/glview/GLNinePatch;

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->SCREEN_CROP_PORTRAIT_TOP_OFFSET_NORMAL:I

    int-to-float v3, v2

    const/4 v4, 0x0

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->SCREEN_WIDTH:I

    int-to-float v5, v2

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->SCREEN_CROP_LANDSCAPE_HEIGHT:I

    int-to-float v6, v2

    const v7, 0x7f0202e8

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, Lcom/samsung/android/glview/GLNinePatch;-><init>(Lcom/samsung/android/glview/GLContext;FFFFI)V

    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCropLandscapeUpArea:Lcom/samsung/android/glview/GLNinePatch;

    new-instance v1, Lcom/samsung/android/glview/GLNinePatch;

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->SCREEN_CROP_PORTRAIT_TOP_OFFSET_NORMAL:I

    int-to-float v3, v2

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->SCREEN_HEIGHT:I

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->SCREEN_CROP_LANDSCAPE_HEIGHT:I

    sub-int/2addr v2, v4

    int-to-float v4, v2

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->SCREEN_WIDTH:I

    int-to-float v5, v2

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->SCREEN_CROP_LANDSCAPE_HEIGHT:I

    int-to-float v6, v2

    const v7, 0x7f0202e8

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, Lcom/samsung/android/glview/GLNinePatch;-><init>(Lcom/samsung/android/glview/GLContext;FFFFI)V

    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCropLandscapeDownArea:Lcom/samsung/android/glview/GLNinePatch;

    new-instance v1, Lcom/samsung/android/glview/GLNinePatch;

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->SCREEN_CROP_PORTRAIT_TOP_OFFSET_NORMAL:I

    int-to-float v3, v2

    const/4 v4, 0x0

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->SCREEN_CROP_PORTRAIT_WIDTH_NORMAL:I

    int-to-float v5, v2

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->SCREEN_HEIGHT:I

    int-to-float v6, v2

    const v7, 0x7f0202e8

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, Lcom/samsung/android/glview/GLNinePatch;-><init>(Lcom/samsung/android/glview/GLContext;FFFFI)V

    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCropPortraitUpArea:Lcom/samsung/android/glview/GLNinePatch;

    new-instance v1, Lcom/samsung/android/glview/GLNinePatch;

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->SCREEN_WIDTH:I

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->SCREEN_CROP_PORTRAIT_WIDTH_NORMAL:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->SCREEN_CROP_PORTRAIT_BOTTOM_OFFSET_NORMAL:I

    sub-int/2addr v2, v3

    int-to-float v3, v2

    const/4 v4, 0x0

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->SCREEN_CROP_PORTRAIT_WIDTH_NORMAL:I

    int-to-float v5, v2

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->SCREEN_HEIGHT:I

    int-to-float v6, v2

    const v7, 0x7f0202e8

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, Lcom/samsung/android/glview/GLNinePatch;-><init>(Lcom/samsung/android/glview/GLContext;FFFFI)V

    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCropPortraitDownArea:Lcom/samsung/android/glview/GLNinePatch;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCropLandscapeUpArea:Lcom/samsung/android/glview/GLNinePatch;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLNinePatch;->setVisibility(I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCropLandscapeDownArea:Lcom/samsung/android/glview/GLNinePatch;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLNinePatch;->setVisibility(I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCropPortraitUpArea:Lcom/samsung/android/glview/GLNinePatch;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLNinePatch;->setVisibility(I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCropPortraitDownArea:Lcom/samsung/android/glview/GLNinePatch;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLNinePatch;->setVisibility(I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCropLandscapeUpArea:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {p2, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCropLandscapeDownArea:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {p2, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCropPortraitUpArea:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {p2, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCropPortraitDownArea:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {p2, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {p2, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {p2, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mBackgroundRectGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {p2, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {p2, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCaptureFocusRect:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {p2, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mTrapezoidCaptureFocusRect:Lcom/sec/android/app/camera/widget/gl/Trapezoid;

    invoke-virtual {p2, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    const/4 v11, 0x0

    :goto_0
    const/4 v1, 0x4

    if-ge v11, v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v1, v1, v11

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v1, v1, v11

    invoke-virtual {p2, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_0
    const/4 v11, 0x0

    :goto_1
    const/16 v1, 0xe

    if-ge v11, v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v1, v1, v11

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v1, v1, v11

    invoke-virtual {p2, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_1
    const/4 v11, 0x0

    :goto_2
    const/16 v1, 0xe

    if-ge v11, v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideRect:[Lcom/samsung/android/glview/GLImage;

    aget-object v1, v1, v11

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideRect:[Lcom/samsung/android/glview/GLImage;

    aget-object v1, v1, v11

    invoke-virtual {p2, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method public onDBUpdatePrepared(Landroid/content/ContentValues;Ljava/io/File;)Z
    .locals 5

    const/16 v3, 0x970

    const-string v2, "sef_file_type"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "Wide_Selfie_Info"

    :try_start_0
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    const/16 v3, 0x970

    const/4 v4, 0x1

    invoke-static {p2, v1, v2, v3, v4}, Lcom/samsung/android/media/SemExtendedFormat;->addData(Ljava/io/File;Ljava/lang/String;[BII)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v2, 0x0

    return v2

    :catch_0
    move-exception v0

    const-string v2, "WideSelfie"

    const-string v3, "error while addSEFData in WideSelfie"

    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onHRMShutterDetected()V
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mSkipCapture:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mIsWideSelfieCaptureStarted:Z

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->getCaptureProgressIncreased()I

    move-result v0

    if-lez v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->stopWideSelfieCapture()V

    goto :goto_0

    :cond_2
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->onShutterKeyReleased(I)Z

    goto :goto_0
.end method

.method public onImageStoringCompleted()Z
    .locals 6

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    if-nez v3, :cond_0

    :goto_0
    return v2

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->reset()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->showPreviewGroup()V

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v0, v3, Landroid/util/DisplayMetrics;->density:F

    const/high16 v3, 0x40000000    # 2.0f

    cmpg-float v3, v0, v3

    if-gez v3, :cond_1

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraResolution()I

    move-result v3

    invoke-static {v3}, Lcom/sec/android/app/camera/util/CameraResolution;->getIntWidth(I)I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraResolution()I

    move-result v4

    invoke-static {v4}, Lcom/sec/android/app/camera/util/CameraResolution;->getIntHeight(I)I

    move-result v4

    mul-int/2addr v3, v4

    int-to-double v4, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-int v3, v4

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/Engine;->getOriginalViewFinderWidth()I

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/Engine;->getOriginalViewFinderHeight()I

    move-result v5

    mul-int/2addr v4, v5

    int-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-int v4, v4

    invoke-static {v3, v4}, Lcom/samsung/android/glview/GLUtil;->calculateSampleSize(II)I

    move-result v1

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/Engine;->getLastContentData()Lcom/sec/android/app/camera/util/ContentData;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/Engine;->getLastContentData()Lcom/sec/android/app/camera/util/ContentData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/util/ContentData;->getCaptureData()[B

    move-result-object v4

    div-int/lit8 v5, v1, 0x4

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/app/camera/util/ContentData;->setCaptureData([BI)V

    :cond_1
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/Engine;->getLastContentData()Lcom/sec/android/app/camera/util/ContentData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/util/ContentData;->getCaptureBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/Engine;->getLastContentData()Lcom/sec/android/app/camera/util/ContentData;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/camera/util/ContentData;->getOrientation()I

    move-result v5

    invoke-interface {v3, v4, v5, v2}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->updateThumbnailButton(Landroid/graphics/Bitmap;IZ)V

    const/4 v2, 0x1

    goto :goto_0
.end method

.method public onInactivate()V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->removeSideQuickSettingItems()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/util/CameraLocalBroadcastManager;->unregister(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V

    :cond_0
    const-string v0, "WideSelfie"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onInactivate - capture count : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->getCaptureProgressIncreased()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->getCaptureProgressIncreased()I

    move-result v0

    if-lez v0, :cond_2

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->clearWideSelfieRect()V

    invoke-direct {p0, v3}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->setHapticEnabled(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isTouchToCaptureStarted()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->setTouchToCaptureStarted(Z)V

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->cancelWideSelfieCapture()V

    :cond_2
    iput-boolean v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mIsWideSelfieCaptureStarted:Z

    iput-boolean v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWideSelfieWarning:Z

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->stopCancelTimer()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->hideStopButton()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->hideCropArea()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getHRMShutter()I

    move-result v0

    if-ne v0, v4, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->unregisterHRMShutterListener()V

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getGestureControlMode()I

    move-result v0

    if-ne v0, v4, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/Engine;->setGestureControlMode(I)V

    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, v5}, Lcom/sec/android/app/camera/interfaces/Engine;->setWideSelfieListener(Lcom/samsung/android/camera/core/SemCamera$WideSelfieEventListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, v5}, Lcom/sec/android/app/camera/interfaces/Engine;->setPrepareDBUpdateListener(Lcom/sec/android/app/camera/interfaces/Engine$DBUpdateListener;)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->clearWideSelfieRect()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->clearTrapezoidFocusRect()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->stopWideSelfieSound()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->setPreviewThumbnailSizeToDefault()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->clearMessageHandler()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3

    const/4 v1, 0x1

    const/4 v0, 0x0

    sparse-switch p1, :sswitch_data_0

    :cond_0
    :goto_0
    return v0

    :sswitch_0
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/Engine;->isTimerCounting()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->clearWideSelfieRect()V

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->setHapticEnabled(Z)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->reset()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->showPreviewGroup()V

    goto :goto_0

    :cond_1
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPostProgress:I

    if-lez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGLContext:Lcom/samsung/android/glview/GLContext;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGLContext:Lcom/samsung/android/glview/GLContext;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLContext;->isTouchExplorationEnabled()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLButton;->requestFocus()Z

    :cond_3
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->stopWideSelfie()Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    :sswitch_1
    iget-boolean v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->misWideSelfieCapturing:Z

    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->stopWideSelfie()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->hideStopButton()V

    move v0, v1

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x17 -> :sswitch_1
        0x1b -> :sswitch_1
        0x42 -> :sswitch_1
    .end sparse-switch
.end method

.method public onMenuSelected(II)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onOrientationChanged(I)V
    .locals 7

    const/4 v6, 0x5

    const/4 v5, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x7

    const-string v0, "WideSelfie"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onOrientationChanged - mCurrentOrientation : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCurrentOrientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", orientation:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "WideSelfie"

    const-string v1, "onOrientationChanged - Already mCameraContext or mEngine is null"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCurrentOrientation:I

    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->clearWideSelfieRect()V

    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mIsWideSelfieCaptureStarted:Z

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->misWideSelfieStopping:Z

    if-nez v0, :cond_7

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mDetectedDirection:I

    if-nez v0, :cond_5

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCurrentOrientation:I

    if-eq v0, p1, :cond_4

    const-string v0, "WideSelfie"

    const-string v1, "onOrientationChanged Stop case - orientation changed"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCurrentOrientation:I

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->reset()V

    iput-boolean v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWideSelfieWarning:Z

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->isTimerCounting()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "WideSelfie"

    const-string v1, "onOrientationChanged isTimerCounting return"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->cancelShutterTimer()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    const/16 v1, 0x3d

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/MenuManager;->hideMenu(I)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->showPreviewGroup()V

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCurrentOrientation:I

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->showCropArea(I)V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->clearWideSelfieRect()V

    invoke-direct {p0, v3}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->setHapticEnabled(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isTouchToCaptureStarted()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->setTouchToCaptureStarted(Z)V

    :cond_3
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->cancelWideSelfieCapture()V

    invoke-direct {p0, v5}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->showWideSelfieToastPopup(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWideSelfieMsgHandler:Lcom/sec/android/app/camera/shootingmode/WideSelfie$WideSelfieHandler;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWideSelfieMsgHandler:Lcom/sec/android/app/camera/shootingmode/WideSelfie$WideSelfieHandler;

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/shootingmode/WideSelfie$WideSelfieHandler;->removeMessages(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWideSelfieMsgHandler:Lcom/sec/android/app/camera/shootingmode/WideSelfie$WideSelfieHandler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v4, v2, v3}, Lcom/sec/android/app/camera/shootingmode/WideSelfie$WideSelfieHandler;->sendEmptyMessageDelayed(IJ)Z

    :cond_4
    :goto_1
    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCurrentOrientation:I

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->refreshLivePreviewPosition()V

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCurrentOrientation:I

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->showCropArea(I)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->isWideSelfieStopping()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->scheduleStopWideSelfie()V

    :cond_6
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->hideStopButton()V

    goto :goto_1

    :cond_7
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWideSelfieMsgHandler:Lcom/sec/android/app/camera/shootingmode/WideSelfie$WideSelfieHandler;

    if-eqz v0, :cond_4

    iput-boolean v5, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mSkipCapture:Z

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWideSelfieMsgHandler:Lcom/sec/android/app/camera/shootingmode/WideSelfie$WideSelfieHandler;

    invoke-virtual {v0, v6}, Lcom/sec/android/app/camera/shootingmode/WideSelfie$WideSelfieHandler;->removeMessages(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWideSelfieMsgHandler:Lcom/sec/android/app/camera/shootingmode/WideSelfie$WideSelfieHandler;

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v6, v2, v3}, Lcom/sec/android/app/camera/shootingmode/WideSelfie$WideSelfieHandler;->sendEmptyMessageDelayed(IJ)Z

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWideSelfieMsgHandler:Lcom/sec/android/app/camera/shootingmode/WideSelfie$WideSelfieHandler;

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/shootingmode/WideSelfie$WideSelfieHandler;->removeMessages(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWideSelfieMsgHandler:Lcom/sec/android/app/camera/shootingmode/WideSelfie$WideSelfieHandler;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v4, v2, v3}, Lcom/sec/android/app/camera/shootingmode/WideSelfie$WideSelfieHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1
.end method

.method public onRecordKeyReleased()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->switchToRecordingMode()V

    const/4 v0, 0x0

    return v0
.end method

.method public onShutterKeyLongPressed()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onShutterKeyPressed()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onShutterKeyReleased(I)Z
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->isPreviewStarted()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "WideSelfie"

    const-string v1, "onShutterKeyReleased- Preview is not started yet"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return v2

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->isCapturing()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "WideSelfie"

    const-string v1, "Return, isCapturing"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mIsWideSelfieCaptureStarted:Z

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->stopWideSelfie()Z

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->showPreviewGroup()V

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPostProgress:I

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGLContext:Lcom/samsung/android/glview/GLContext;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGLContext:Lcom/samsung/android/glview/GLContext;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLContext;->isTouchExplorationEnabled()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->requestFocus()Z

    :cond_4
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mIsWideSelfieCaptureStarted:Z

    if-eqz v0, :cond_5

    const-string v0, "WideSelfie"

    const-string v1, "Drop Wide Selfie capture start, because it\'s capturing..."

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_5
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->isReadyToCapture()Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "WideSelfie"

    const-string v1, "Drop Wide Selfie capture start, because it\'s not ready."

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v1, 0xbb8

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->acquireDVFS(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->requestTransientAudioFocus()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, p1}, Lcom/sec/android/app/camera/interfaces/Engine;->handleTimer(I)Z

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v1, 0x240

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->disableView(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v1, -0x181

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->hideView(I)V

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->setStartCapture(Z)V

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->setHapticEnabled(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->scheduleStartWideSelfie()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getOverlayLayoutController()Lcom/sec/android/app/camera/interfaces/OverlayLayoutController;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/OverlayLayoutController;->hideShootingModeText()V

    iput-boolean v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mIsWideSelfieCaptureStarted:Z

    goto :goto_0
.end method

.method public onSingleCaptureEvent(I)V
    .locals 3

    const-string v0, "WideSelfie"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSingleCaptureEvent : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->reset()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->showPreviewGroup()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onTimerEvent(I)V
    .locals 4

    const/16 v3, 0x3d

    const-string v0, "WideSelfie"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTimerEvent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/MenuManager;->isActive(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/MenuManager;->showMenu(I)Lcom/sec/android/app/camera/interfaces/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mTimerMenu:Lcom/sec/android/app/camera/menu/TimerCountingMenu;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mTimerMenu:Lcom/sec/android/app/camera/menu/TimerCountingMenu;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mTimerMenu:Lcom/sec/android/app/camera/menu/TimerCountingMenu;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->updateTime(I)V

    :cond_1
    if-nez p1, :cond_3

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->clearWideSelfieRect()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isCapturing()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v1, 0x40

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->disableView(I)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->showPreviewGroup()V

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v1, 0x80

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->enableView(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v1, 0x100

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    :cond_3
    return-void
.end method

.method public onVideoStoringCompleted()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onWideSelfieCaptured()V
    .locals 3

    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mIsStartCapture:Z

    if-eqz v0, :cond_1

    const-string v0, "WideSelfie"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCaptureProgressIncreased mCaptureCount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCaptureCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mIsCapturePreparing:Z

    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mIsWideSelfieCaptureStarted:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCaptureCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCaptureCount:I

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->misWideSelfieCapturing:Z

    :cond_1
    return-void
.end method

.method public onWideSelfieCapturedMaxFrames()V
    .locals 0

    return-void
.end method

.method public onWideSelfieCapturedNew()V
    .locals 5

    const/4 v2, 0x1

    const/4 v4, 0x0

    const-string v0, "WideSelfie"

    const-string v1, "onWideSelfieCapturedNew"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mIsWideSelfieCaptureStarted:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mNextCaptureFocusStep:I

    if-nez v0, :cond_3

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->setStartCapture(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getTimer()I

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->refreshLivePreviewPosition()V

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getVisualInteractionProvider()Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;->startShutterAnimation()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0, v4, v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->playCameraSound(II)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/haptic/HapticFeedback;->playHaptic(Landroid/content/Context;I)V

    :cond_3
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mNextCaptureFocusStep:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mNextCaptureFocusStep:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWideSelfieMsgHandler:Lcom/sec/android/app/camera/shootingmode/WideSelfie$WideSelfieHandler;

    if-eqz v0, :cond_4

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->setSkipCheckWarning(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWideSelfieMsgHandler:Lcom/sec/android/app/camera/shootingmode/WideSelfie$WideSelfieHandler;

    const/4 v1, 0x6

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/camera/shootingmode/WideSelfie$WideSelfieHandler;->sendEmptyMessageDelayed(IJ)Z

    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getVisualInteractionProvider()Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;->startShutterAnimation()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0, v4, v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->playCameraSound(II)V

    goto :goto_0
.end method

.method public onWideSelfieDirectionChanged(I)V
    .locals 3

    const-string v0, "WideSelfie"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onWideSelfieDirectionChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->onWideDirectionChanged(I)V

    return-void
.end method

.method public onWideSelfieError(I)V
    .locals 1

    packed-switch p1, :pswitch_data_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mSkipFrameOnWideSelfie:Z

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->cancelWideSelfieCapture()V

    :goto_0
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->showWideSelfieToastPopup(I)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->stopWideSelfie()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onWideSelfieLivePreviewData([B)V
    .locals 2

    const-string v0, "WideSelfie"

    const-string v1, "onWideSelfieLivePreviewData"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->onLivePreviewData([B)V

    return-void
.end method

.method public onWideSelfieLowResolutionData([B)V
    .locals 0

    return-void
.end method

.method public onWideSelfieNextCapturePosition(II)V
    .locals 4

    int-to-float v1, p1

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPrevThumbnailScaleFactor:F

    mul-float/2addr v1, v2

    iput v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mNextCaptureFocusRectCenterX:F

    int-to-float v1, p2

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPrevThumbnailScaleFactor:F

    mul-float/2addr v1, v2

    iput v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mNextCaptureFocusRectCenterY:F

    const-string v1, "WideSelfie"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onWideSelfieNextCapturePosition : posX : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", posY : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "WideSelfie"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onWideSelfieNextCapturePosition : mNextCaptureFocusRectCenterX : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mNextCaptureFocusRectCenterX:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mNextCaptureFocusRectCenterY : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mNextCaptureFocusRectCenterY:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCurrentOrientation:I

    packed-switch v1, :pswitch_data_0

    :goto_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->showNextCaptureFocusRect()V

    return-void

    :pswitch_0
    iget-boolean v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mIsStartCapture:Z

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :goto_1
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_LANDSCAPE_Y:F

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mNextCaptureFocusRectCenterY:F

    add-float/2addr v1, v2

    add-float/2addr v1, v0

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->NEXT_CAPTURE_FOCUS_LINE_WIDTH:F

    sub-float/2addr v1, v2

    iput v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mNextCaptureFocusRectTop:F

    if-lez p1, :cond_1

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_LANDSCAPE_X:F

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_LANDSCAPE_WIDTH:F

    add-float/2addr v1, v2

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_SINGLE_WIDTH:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->NEXT_CAPTURE_FOCUS_LINE_WIDTH:F

    sub-float/2addr v1, v2

    iput v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mNextCaptureFocusRectLeft:F

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->PREVIEW_TOP_MARGIN:F

    goto :goto_1

    :cond_1
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_LANDSCAPE_X:F

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->NEXT_CAPTURE_FOCUS_LINE_WIDTH:F

    sub-float/2addr v1, v2

    iput v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mNextCaptureFocusRectLeft:F

    goto :goto_0

    :pswitch_1
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_PORTRAIT_X:F

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mNextCaptureFocusRectCenterX:F

    add-float/2addr v1, v2

    iput v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mNextCaptureFocusRectLeft:F

    if-lez p2, :cond_2

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_PORTRAIT_Y:F

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    add-float/2addr v1, v2

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_SINGLE_PORTRAIT_HEIGHT:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->NEXT_CAPTURE_FOCUS_LINE_WIDTH:F

    sub-float/2addr v1, v2

    iput v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mNextCaptureFocusRectTop:F

    goto :goto_0

    :cond_2
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_PORTRAIT_Y:F

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->NEXT_CAPTURE_FOCUS_LINE_WIDTH:F

    sub-float/2addr v1, v2

    iput v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mNextCaptureFocusRectTop:F

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onWideSelfieProgressStitching(I)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v1, 0xfa0

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->acquireDVFS(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/sec/android/app/camera/haptic/HapticFeedback;->playHaptic(Landroid/content/Context;I)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    const/4 v1, 0x6

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/Engine;->isCurrentState(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "WideSelfie"

    const-string v1, "onWideSelfieProgressStitching - CE_STATE_SHUTDOWN"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->reset()V

    iput-boolean v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mIsWideSelfieCaptureStarted:Z

    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->stopCancelTimer()V

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->setPostCaptureProgress(I)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->stopWideSelfieSound()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->clearWideSelfieRect()V

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->setHapticEnabled(Z)V

    if-nez p1, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->startShutterProgressWheel()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/4 v1, 0x3

    invoke-interface {v0, v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->playCameraSound(II)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->abandonAudioFocus()V

    goto :goto_0

    :cond_2
    const/16 v0, 0x64

    if-ne p1, v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0, p1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->setShutterProgress(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWideSelfieMsgHandler:Lcom/sec/android/app/camera/shootingmode/WideSelfie$WideSelfieHandler;

    const/16 v1, 0x8

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/camera/shootingmode/WideSelfie$WideSelfieHandler;->sendEmptyMessageDelayed(IJ)Z

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->setDelayedSkipCapture()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0, p1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->setShutterProgress(I)V

    goto :goto_0
.end method

.method public onWideSelfieRectChanged([B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->wideSelfieRectChanged([B)V

    return-void
.end method

.method public onWideSelfieSingleCaptureDone()V
    .locals 5

    const/4 v1, 0x4

    const/4 v4, 0x1

    const/4 v3, 0x2

    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mIsWideSelfieCaptureStarted:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mNextCaptureFocusStep:I

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->hideWarningText()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->showGuideText(I)V

    :cond_1
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mNextCaptureFocusStep:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mNextCaptureFocusStep:I

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCurrentOrientation:I

    packed-switch v0, :pswitch_data_0

    :cond_2
    :goto_1
    const-string v0, "WideSelfie"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onWideSelfieSingleCaptureDone invisible next capture mDetectedDirection : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mDetectedDirection:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mNextCaptureFocusStep:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mNextCaptureFocusStep:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mDetectedDirection:I

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mNextCaptureFocusStep:I

    if-ne v0, v4, :cond_4

    :cond_3
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->showStopButton()V

    goto :goto_0

    :pswitch_0
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mNextCaptureFocusStep:I

    if-le v0, v3, :cond_2

    iput v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mNextCaptureFocusStep:I

    goto :goto_1

    :pswitch_1
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mNextCaptureFocusStep:I

    if-le v0, v1, :cond_2

    iput v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mNextCaptureFocusStep:I

    goto :goto_1

    :cond_4
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCurrentOrientation:I

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCurrentOrientation:I

    if-eq v0, v3, :cond_5

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mNextCaptureFocusStep:I

    if-ne v0, v3, :cond_7

    :cond_5
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCurrentOrientation:I

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCurrentOrientation:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_9

    :cond_6
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mDetectedDirection:I

    if-ne v0, v3, :cond_8

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->hideWarningText()V

    invoke-direct {p0, v3}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->showGuideText(I)V

    :cond_7
    :goto_2
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mNextCaptureFocusStep:I

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->getGuideDirection(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->showGuideArrow(I)V

    goto/16 :goto_0

    :cond_8
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mDetectedDirection:I

    if-ne v0, v4, :cond_7

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->hideWarningText()V

    invoke-direct {p0, v4}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->showGuideText(I)V

    goto :goto_2

    :cond_9
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mDetectedDirection:I

    if-ne v0, v3, :cond_a

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->hideWarningText()V

    invoke-direct {p0, v4}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->showGuideText(I)V

    goto :goto_2

    :cond_a
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mDetectedDirection:I

    if-ne v0, v4, :cond_7

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->hideWarningText()V

    invoke-direct {p0, v3}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->showGuideText(I)V

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onWideSelfieSlowMove()V
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->misWideSelfieCapturing:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->hideGuideText()V

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->showWarningText(I)V

    :cond_0
    return-void
.end method
