.class public Lcom/android/server/wm/TaskTapPointerEventListener;
.super Ljava/lang/Object;
.source "TaskTapPointerEventListener.java"

# interfaces
.implements Landroid/view/WindowManagerPolicy$PointerEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/TaskTapPointerEventListener$TwoFingerScrollListener;
    }
.end annotation


# instance fields
.field private final mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mInGestureDetection:Z

.field private mMultiWindowEdgeDetector:Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;

.field private final mNonResizeableRegion:Landroid/graphics/Region;

.field private mPointerIconType:I

.field private final mService:Lcom/android/server/wm/WindowManagerService;

.field private mTapOutsideTaskMessageSent:Z

.field private mTmpExcludeRegion:Landroid/graphics/Region;

.field private final mTmpRect:Landroid/graphics/Rect;

.field private final mTouchExcludeRegion:Landroid/graphics/Region;

.field private mTwoFingerScrolling:Z


# direct methods
.method static synthetic -wrap0(Lcom/android/server/wm/TaskTapPointerEventListener;Landroid/view/MotionEvent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/wm/TaskTapPointerEventListener;->onTwoFingerScroll(Landroid/view/MotionEvent;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/server/wm/TaskTapPointerEventListener;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wm/TaskTapPointerEventListener;->stopTwoFingerScroll()V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mTouchExcludeRegion:Landroid/graphics/Region;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mTmpRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mNonResizeableRegion:Landroid/graphics/Region;

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mPointerIconType:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mTapOutsideTaskMessageSent:Z

    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mTmpExcludeRegion:Landroid/graphics/Region;

    iput-object p1, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iput-object p2, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    return-void
.end method

.method private doGestureDetection(Landroid/view/MotionEvent;)V
    .locals 8

    const/4 v5, 0x1

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mGestureDetector:Landroid/view/GestureDetector;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mNonResizeableRegion:Landroid/graphics/Region;

    invoke-virtual {v7}, Landroid/graphics/Region;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    and-int/lit16 v0, v7, 0xff

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    float-to-int v3, v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    float-to-int v4, v7

    iget-object v7, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mNonResizeableRegion:Landroid/graphics/Region;

    invoke-virtual {v7, v3, v4}, Landroid/graphics/Region;->contains(II)Z

    move-result v2

    iget-boolean v7, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mInGestureDetection:Z

    if-nez v7, :cond_2

    if-nez v0, :cond_3

    if-eqz v2, :cond_3

    :cond_2
    if-eqz v2, :cond_5

    if-eq v0, v5, :cond_5

    const/4 v7, 0x6

    if-eq v0, v7, :cond_5

    const/4 v7, 0x3

    if-eq v0, v7, :cond_4

    :goto_0
    iput-boolean v5, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mInGestureDetection:Z

    iget-boolean v5, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mInGestureDetection:Z

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v5, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_3
    :goto_1
    return-void

    :cond_4
    move v5, v6

    goto :goto_0

    :cond_5
    move v5, v6

    goto :goto_0

    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->copy()Landroid/view/MotionEvent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/MotionEvent;->cancel()V

    iget-object v5, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v5, v1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-direct {p0}, Lcom/android/server/wm/TaskTapPointerEventListener;->stopTwoFingerScroll()V

    goto :goto_1
.end method

.method private onTwoFingerScroll(Landroid/view/MotionEvent;)V
    .locals 5

    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    float-to-int v0, v2

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    float-to-int v1, v2

    iget-boolean v2, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mTwoFingerScrolling:Z

    if-nez v2, :cond_0

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mTwoFingerScrolling:Z

    iget-object v2, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    iget-object v3, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/16 v4, 0x2c

    invoke-virtual {v2, v4, v0, v1, v3}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method private stopTwoFingerScroll()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mTwoFingerScrolling:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mTwoFingerScrolling:Z

    iget-object v0, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method


# virtual methods
.method init()V
    .locals 4

    new-instance v0, Landroid/view/GestureDetector;

    iget-object v1, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/wm/TaskTapPointerEventListener$TwoFingerScrollListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/server/wm/TaskTapPointerEventListener$TwoFingerScrollListener;-><init>(Lcom/android/server/wm/TaskTapPointerEventListener;Lcom/android/server/wm/TaskTapPointerEventListener$TwoFingerScrollListener;)V

    iget-object v3, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-direct {v0, v1, v2, v3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mGestureDetector:Landroid/view/GestureDetector;

    new-instance v0, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;

    iget-object v1, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mMultiWindowEdgeDetector:Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;

    return-void
.end method

.method onConfigurationChanged()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mMultiWindowEdgeDetector:Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mMultiWindowEdgeDetector:Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->onConfigurationChanged()V

    :cond_0
    return-void
.end method

.method public onPointerEvent(Landroid/view/MotionEvent;)V
    .locals 13

    const/4 v11, 0x2

    const/16 v12, 0x3e8

    const/4 v10, 0x1

    invoke-direct {p0, p1}, Lcom/android/server/wm/TaskTapPointerEventListener;->doGestureDetection(Landroid/view/MotionEvent;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    sget-boolean v9, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v9, :cond_2

    sget-boolean v9, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->FREEFORM_GESTURE:Z

    if-eqz v9, :cond_2

    iget-object v9, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mMultiWindowEdgeDetector:Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;

    if-eqz v9, :cond_2

    iget-object v9, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mMultiWindowEdgeDetector:Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;

    invoke-virtual {v9, p1}, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v9

    if-eqz v9, :cond_2

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    float-to-int v7, v9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    float-to-int v8, v9

    monitor-enter p0

    :try_start_0
    iget-object v9, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mTouchExcludeRegion:Landroid/graphics/Region;

    invoke-virtual {v9, v7, v8}, Landroid/graphics/Region;->contains(II)Z

    move-result v9

    if-nez v9, :cond_0

    iget-object v9, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v9, v9, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    iget-object v10, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/16 v11, 0x1f

    invoke-virtual {v9, v11, v7, v8, v10}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v9}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    :cond_1
    return-void

    :catchall_0
    move-exception v9

    monitor-exit p0

    throw v9

    :cond_2
    and-int/lit16 v9, v0, 0xff

    packed-switch v9, :pswitch_data_0

    :cond_3
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    float-to-int v7, v9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    float-to-int v8, v9

    monitor-enter p0

    const/4 v4, 0x0

    :try_start_1
    sget-boolean v9, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v9, :cond_5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v9

    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v9

    if-eq v9, v11, :cond_4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v9

    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v9

    const/4 v10, 0x3

    if-ne v9, v10, :cond_5

    :cond_4
    iget-object v9, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v9, v7, v8}, Lcom/android/server/wm/DisplayContent;->findTaskForControlPoint(II)Lcom/android/server/wm/Task;

    move-result-object v6

    iget-object v9, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/4 v10, 0x1

    invoke-virtual {v9, v7, v8, v10}, Lcom/android/server/wm/DisplayContent;->findTaskForControlPoint(IIZ)Lcom/android/server/wm/Task;

    move-result-object v5

    if-eqz v6, :cond_5

    if-nez v5, :cond_5

    const/4 v4, 0x1

    :cond_5
    iget-object v9, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mTouchExcludeRegion:Landroid/graphics/Region;

    invoke-virtual {v9, v7, v8}, Landroid/graphics/Region;->contains(II)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v9

    if-nez v9, :cond_6

    if-eqz v4, :cond_7

    :cond_6
    :goto_1
    monitor-exit p0

    goto :goto_0

    :cond_7
    :try_start_2
    sget-boolean v9, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v9, :cond_8

    :cond_8
    iget-object v9, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v9, v9, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    iget-object v10, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/16 v11, 0x1f

    invoke-virtual {v9, v11, v7, v8, v10}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v9}, Landroid/os/Message;->sendToTarget()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v9

    monitor-exit p0

    throw v9

    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v9

    if-eq v9, v11, :cond_3

    invoke-direct {p0}, Lcom/android/server/wm/TaskTapPointerEventListener;->stopTwoFingerScroll()V

    goto :goto_0

    :pswitch_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    float-to-int v7, v9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    float-to-int v8, v9

    iget-object v9, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v10, v9, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v10

    :try_start_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v3

    sget-boolean v9, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v9, :cond_a

    iget-object v9, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v9, v7, v8}, Lcom/android/server/wm/DisplayContent;->findTaskForControlPoint(II)Lcom/android/server/wm/Task;

    move-result-object v6

    iget-object v9, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/4 v11, 0x1

    invoke-virtual {v9, v7, v8, v11}, Lcom/android/server/wm/DisplayContent;->findTaskForControlPoint(IIZ)Lcom/android/server/wm/Task;

    move-result-object v5

    if-eqz v6, :cond_b

    if-nez v5, :cond_b

    if-eqz v3, :cond_b

    iget v9, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mPointerIconType:I

    if-eq v9, v12, :cond_b

    const/16 v9, 0x3e8

    invoke-virtual {v3, v9}, Landroid/view/InputDevice;->setPointerType(I)V

    const/16 v9, 0x3e8

    iput v9, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mPointerIconType:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :cond_9
    :goto_2
    monitor-exit v10

    goto/16 :goto_0

    :cond_a
    :try_start_4
    iget-object v9, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v9, v7, v8}, Lcom/android/server/wm/DisplayContent;->findTaskForControlPoint(II)Lcom/android/server/wm/Task;

    move-result-object v5

    :cond_b
    if-eqz v5, :cond_c

    if-nez v3, :cond_d

    :cond_c
    const/4 v9, 0x1

    iput v9, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mPointerIconType:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception v9

    monitor-exit v10

    throw v9

    :cond_d
    :try_start_5
    iget-object v9, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v5, v9}, Lcom/android/server/wm/Task;->getDimBounds(Landroid/graphics/Rect;)V

    iget-object v9, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_e

    iget-object v9, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v9, v7, v8}, Landroid/graphics/Rect;->contains(II)Z

    move-result v9

    if-eqz v9, :cond_f

    :cond_e
    const/4 v9, 0x1

    iput v9, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mPointerIconType:I

    goto :goto_2

    :cond_f
    const/16 v2, 0x3e8

    const/4 v1, 0x0

    sget-boolean v9, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v9, :cond_10

    const/16 v1, 0x8

    :cond_10
    iget-object v9, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mTmpRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->left:I

    add-int/2addr v9, v1

    if-ge v7, v9, :cond_14

    iget-object v9, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mTmpRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    add-int/2addr v9, v1

    if-ge v8, v9, :cond_12

    const/16 v2, 0x3f9

    :cond_11
    :goto_3
    iget v9, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mPointerIconType:I

    if-eq v9, v2, :cond_9

    iput v2, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mPointerIconType:I

    invoke-virtual {v3, v2}, Landroid/view/InputDevice;->setPointerType(I)V

    goto :goto_2

    :cond_12
    iget-object v9, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mTmpRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v9, v1

    if-le v8, v9, :cond_13

    const/16 v2, 0x3f8

    goto :goto_3

    :cond_13
    const/16 v2, 0x3f6

    goto :goto_3

    :cond_14
    iget-object v9, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mTmpRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    sub-int/2addr v9, v1

    if-le v7, v9, :cond_17

    iget-object v9, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mTmpRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    add-int/2addr v9, v1

    if-ge v8, v9, :cond_15

    const/16 v2, 0x3f8

    goto :goto_3

    :cond_15
    iget-object v9, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mTmpRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v9, v1

    if-le v8, v9, :cond_16

    const/16 v2, 0x3f9

    goto :goto_3

    :cond_16
    const/16 v2, 0x3f6

    goto :goto_3

    :cond_17
    iget-object v9, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mTmpRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    if-lt v8, v9, :cond_18

    iget-object v9, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mTmpRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-le v8, v9, :cond_11

    :cond_18
    const/16 v2, 0x3f7

    goto :goto_3

    :pswitch_4
    iput v10, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mPointerIconType:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v3, v12}, Landroid/view/InputDevice;->setPointerType(I)V

    goto/16 :goto_0

    :pswitch_5
    sget-boolean v9, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v9, :cond_19

    :cond_19
    :pswitch_6
    invoke-direct {p0}, Lcom/android/server/wm/TaskTapPointerEventListener;->stopTwoFingerScroll()V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_5
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method setTouchExcludeRegion(Landroid/graphics/Region;Landroid/graphics/Region;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mTouchExcludeRegion:Landroid/graphics/Region;

    invoke-virtual {v0, p1}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    iget-object v0, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mNonResizeableRegion:Landroid/graphics/Region;

    invoke-virtual {v0, p2}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
