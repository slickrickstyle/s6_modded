.class public Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;
.super Landroid/widget/FrameLayout;
.source "KeyguardAnimatedWallpaper.java"

# interfaces
.implements Lcom/android/keyguard/wallpaper/SystemUIWallpaperBase;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper$1;
    }
.end annotation


# instance fields
.field private mComplexAnimation:Lcom/android/keyguard/wallpaper/theme/xmlparser/ComplexAnimation;

.field private mContext:Landroid/content/Context;

.field private mDeviceDensity:F

.field private mDeviceHeight:F

.field private mDeviceWidth:F

.field private mIsPlayingAnimation:Z

.field private mIsPreview:Z

.field private mPackageDensity:F

.field private mPackageHeight:F

.field private mPackageName:Ljava/lang/String;

.field private mPackageWidth:F

.field private mScreenOn:Z

.field private mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mViewHeight:I

.field private mViewWidth:I


# direct methods
.method static synthetic -set0(Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mScreenOn:Z

    return p1
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, v3

    move v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;-><init>(Landroid/content/Context;Ljava/lang/String;ZII)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;ZII)V
    .locals 4

    const/4 v3, 0x0

    const/high16 v2, 0x44200000    # 640.0f

    const/high16 v1, 0x43b40000    # 360.0f

    const/high16 v0, 0x40800000    # 4.0f

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-boolean v3, p0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mIsPlayingAnimation:Z

    iput-boolean v3, p0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mScreenOn:Z

    iput v1, p0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mDeviceWidth:F

    iput v2, p0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mDeviceHeight:F

    iput v0, p0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mDeviceDensity:F

    iput v1, p0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mPackageWidth:F

    iput v2, p0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mPackageHeight:F

    iput v0, p0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mPackageDensity:F

    new-instance v0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper$1;-><init>(Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;)V

    iput-object v0, p0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    iput-object p1, p0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mContext:Landroid/content/Context;

    iput-boolean p3, p0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mIsPreview:Z

    iput p4, p0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mViewWidth:I

    iput p5, p0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mViewHeight:I

    invoke-direct {p0, p2}, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->init(Ljava/lang/String;)V

    return-void
.end method

.method private getContextOf(Ljava/lang/String;)Landroid/content/Context;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mContext:Landroid/content/Context;

    const/4 v1, 0x3

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method private getDevicePixelX(F)F
    .locals 2

    iget v0, p0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mDeviceWidth:F

    iget v1, p0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mPackageWidth:F

    div-float/2addr v0, v1

    mul-float/2addr v0, p1

    iget v1, p0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mDeviceDensity:F

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method private getDevicePixelY(F)F
    .locals 2

    iget v0, p0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mDeviceHeight:F

    iget v1, p0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mPackageHeight:F

    div-float/2addr v0, v1

    mul-float/2addr v0, p1

    iget v1, p0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mDeviceDensity:F

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method private init(Ljava/lang/String;)V
    .locals 11

    iput-object p1, p0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mPackageName:Ljava/lang/String;

    const-string/jumbo v8, "KeyguardAnimatedWallpaper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "XmlName = animation;Default package name = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mPackageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/high16 v8, -0x1000000

    invoke-virtual {p0, v8}, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->setBackgroundColor(I)V

    :try_start_0
    iget-object v8, p0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mPackageName:Ljava/lang/String;

    invoke-direct {p0, v8}, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->getContextOf(Ljava/lang/String;)Landroid/content/Context;

    move-result-object v0

    iget-object v8, p0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0, v8}, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->parseAnimation(Landroid/content/Context;Landroid/content/Context;)Lcom/android/keyguard/wallpaper/theme/xmlparser/ComplexAnimation;

    move-result-object v8

    iput-object v8, p0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mComplexAnimation:Lcom/android/keyguard/wallpaper/theme/xmlparser/ComplexAnimation;
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v4

    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v6

    invoke-virtual {v6}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception v5

    invoke-virtual {v5}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_0

    :catch_3
    move-exception v2

    invoke-virtual {v2}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V

    goto :goto_0

    :catch_4
    move-exception v1

    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0

    :catch_5
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_6
    move-exception v7

    invoke-virtual {v7}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public cleanUp()V
    .locals 2

    const-string/jumbo v0, "KeyguardAnimatedWallpaper"

    const-string/jumbo v1, "cleanUp"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->stopAnimation()V

    invoke-virtual {p0}, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->removeAllViews()V

    return-void
.end method

.method public handleTouchEvent(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    return-void
.end method

.method public onPause()V
    .locals 2

    const-string/jumbo v0, "KeyguardAnimatedWallpaper"

    const-string/jumbo v1, "onPause() - screenTurnedOff"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->stopAnimation()V

    return-void
.end method

.method public onResume()V
    .locals 2

    const-string/jumbo v0, "KeyguardAnimatedWallpaper"

    const-string/jumbo v1, "onResume() - screenTurningOn"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->playAnimation()V

    return-void
.end method

.method public onUnlock()V
    .locals 0

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 4

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onWindowFocusChanged(Z)V

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const-string/jumbo v1, "KeyguardAnimatedWallpaper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "view - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mScreenOn:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->playAnimation()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->stopAnimation()V

    goto :goto_0
.end method

.method public parseAnimation(Landroid/content/Context;Landroid/content/Context;)Lcom/android/keyguard/wallpaper/theme/xmlparser/ComplexAnimation;
    .locals 31
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v28, 0x0

    const/4 v13, 0x0

    const/16 v23, 0x0

    const/16 v30, 0x0

    const/16 v29, -0x2

    const/16 v18, -0x2

    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->density:F

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mDeviceDensity:F

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mIsPreview:Z

    if-eqz v5, :cond_0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mViewWidth:I

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mDeviceDensity:F

    div-float/2addr v5, v6

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mDeviceWidth:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mViewHeight:I

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mDeviceDensity:F

    div-float/2addr v5, v6

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mDeviceHeight:F

    :goto_0
    const-string/jumbo v5, "KeyguardAnimatedWallpaper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "mDeviceWidth="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mDeviceWidth:F

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", mDeviceHeight="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mDeviceHeight:F

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const-string/jumbo v5, "animation"

    const-string/jumbo v6, "xml"

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mPackageName:Ljava/lang/String;

    move-object/from16 v0, v23

    invoke-virtual {v0, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v30

    if-nez v30, :cond_1

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mComplexAnimation:Lcom/android/keyguard/wallpaper/theme/xmlparser/ComplexAnimation;

    const-string/jumbo v5, "KeyguardAnimatedWallpaper"

    const-string/jumbo v6, "null xml returned"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mComplexAnimation:Lcom/android/keyguard/wallpaper/theme/xmlparser/ComplexAnimation;

    return-object v5

    :cond_0
    invoke-static/range {p2 .. p2}, Lcom/android/keyguard/wallpaper/theme/DensityUtil;->getScreenWidth(Landroid/content/Context;)I

    move-result v5

    int-to-float v5, v5

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mDeviceWidth:F

    invoke-static/range {p2 .. p2}, Lcom/android/keyguard/wallpaper/theme/DensityUtil;->getScreenHeight(Landroid/content/Context;)I

    move-result v5

    int-to-float v5, v5

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mDeviceHeight:F

    goto :goto_0

    :cond_1
    new-instance v5, Lcom/android/keyguard/wallpaper/theme/xmlparser/ComplexAnimation;

    invoke-direct {v5}, Lcom/android/keyguard/wallpaper/theme/xmlparser/ComplexAnimation;-><init>()V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mComplexAnimation:Lcom/android/keyguard/wallpaper/theme/xmlparser/ComplexAnimation;

    invoke-interface/range {v30 .. v30}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v16

    :goto_1
    const/4 v5, 0x1

    move/from16 v0, v16

    if-eq v0, v5, :cond_df

    if-nez v16, :cond_3

    :cond_2
    :goto_2
    invoke-interface/range {v30 .. v30}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v16

    goto :goto_1

    :cond_3
    const/4 v5, 0x2

    move/from16 v0, v16

    if-ne v0, v5, :cond_d0

    invoke-interface/range {v30 .. v30}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v25

    const-string/jumbo v5, "screen"

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface/range {v30 .. v30}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v14

    const/16 v19, 0x0

    :goto_3
    move/from16 v0, v19

    if-ge v0, v14, :cond_2

    move-object/from16 v0, v30

    move/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v30

    move/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v27

    const-string/jumbo v5, "width"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mPackageWidth:F

    const-string/jumbo v5, "KeyguardAnimatedWallpaper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "mPackageWidth: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mPackageWidth:F

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_4
    add-int/lit8 v19, v19, 0x1

    goto :goto_3

    :cond_5
    const-string/jumbo v5, "height"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mPackageHeight:F

    const-string/jumbo v5, "KeyguardAnimatedWallpaper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "mPackageHeight: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mPackageHeight:F

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_6
    const-string/jumbo v5, "density"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mPackageDensity:F

    const-string/jumbo v5, "KeyguardAnimatedWallpaper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "mPackageDensity: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mPackageDensity:F

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_7
    const-string/jumbo v5, "view"

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_12

    new-instance v28, Lcom/android/keyguard/wallpaper/theme/xmlparser/FrameImageView;

    move-object/from16 v0, v28

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/keyguard/wallpaper/theme/xmlparser/FrameImageView;-><init>(Landroid/content/Context;)V

    invoke-interface/range {v30 .. v30}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v14

    const/16 v19, 0x0

    :goto_5
    move/from16 v0, v19

    if-ge v0, v14, :cond_2

    move-object/from16 v0, v30

    move/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v30

    move/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v27

    const-string/jumbo v5, "img"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    const-string/jumbo v5, "drawable"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mPackageName:Ljava/lang/String;

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    invoke-virtual {v0, v1, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Lcom/android/keyguard/wallpaper/theme/xmlparser/FrameImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_8
    :goto_6
    add-int/lit8 v19, v19, 0x1

    goto :goto_5

    :cond_9
    const-string/jumbo v5, "x"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->getDevicePixelX(F)F

    move-result v5

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Lcom/android/keyguard/wallpaper/theme/xmlparser/FrameImageView;->setX(F)V

    goto :goto_6

    :cond_a
    const-string/jumbo v5, "y"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->getDevicePixelY(F)F

    move-result v5

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Lcom/android/keyguard/wallpaper/theme/xmlparser/FrameImageView;->setY(F)V

    goto :goto_6

    :cond_b
    const-string/jumbo v5, "width"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->getDevicePixelX(F)F

    move-result v5

    float-to-int v0, v5

    move/from16 v29, v0

    goto :goto_6

    :cond_c
    const-string/jumbo v5, "height"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_d

    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->getDevicePixelY(F)F

    move-result v5

    float-to-int v0, v5

    move/from16 v18, v0

    goto :goto_6

    :cond_d
    const-string/jumbo v5, "pivotX"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_e

    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->getDevicePixelX(F)F

    move-result v5

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Lcom/android/keyguard/wallpaper/theme/xmlparser/FrameImageView;->setPivotX(F)V

    goto/16 :goto_6

    :cond_e
    const-string/jumbo v5, "pivotY"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_f

    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->getDevicePixelY(F)F

    move-result v5

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Lcom/android/keyguard/wallpaper/theme/xmlparser/FrameImageView;->setPivotY(F)V

    goto/16 :goto_6

    :cond_f
    const-string/jumbo v5, "alpha"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_10

    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Lcom/android/keyguard/wallpaper/theme/xmlparser/FrameImageView;->setAlpha(F)V

    goto/16 :goto_6

    :cond_10
    const-string/jumbo v5, "scaleX"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_11

    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->getDevicePixelX(F)F

    move-result v5

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Lcom/android/keyguard/wallpaper/theme/xmlparser/FrameImageView;->setScaleX(F)V

    goto/16 :goto_6

    :cond_11
    const-string/jumbo v5, "scaleY"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->getDevicePixelY(F)F

    move-result v5

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Lcom/android/keyguard/wallpaper/theme/xmlparser/FrameImageView;->setScaleY(F)V

    goto/16 :goto_6

    :cond_12
    const-string/jumbo v5, "scene"

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_17

    invoke-interface/range {v30 .. v30}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v14

    const/16 v19, 0x0

    :goto_7
    move/from16 v0, v19

    if-ge v0, v14, :cond_2

    move-object/from16 v0, v30

    move/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v30

    move/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v27

    const-string/jumbo v5, "type"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_13

    const-string/jumbo v5, "snow"

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_14

    new-instance v24, Lcom/android/keyguard/wallpaper/theme/xmlparser/SnowView;

    move-object/from16 v0, v24

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/keyguard/wallpaper/theme/xmlparser/SnowView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mComplexAnimation:Lcom/android/keyguard/wallpaper/theme/xmlparser/ComplexAnimation;

    move-object/from16 v0, v24

    invoke-virtual {v5, v0}, Lcom/android/keyguard/wallpaper/theme/xmlparser/ComplexAnimation;->addScene(Lcom/android/keyguard/wallpaper/theme/LockscreenCallback;)V

    const/4 v5, -0x1

    const/4 v6, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1, v5, v6}, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->addView(Landroid/view/View;II)V

    :cond_13
    :goto_8
    add-int/lit8 v19, v19, 0x1

    goto :goto_7

    :cond_14
    const-string/jumbo v5, "rain"

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_15

    new-instance v22, Lcom/android/keyguard/wallpaper/theme/xmlparser/RainView;

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/keyguard/wallpaper/theme/xmlparser/RainView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mComplexAnimation:Lcom/android/keyguard/wallpaper/theme/xmlparser/ComplexAnimation;

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Lcom/android/keyguard/wallpaper/theme/xmlparser/ComplexAnimation;->addScene(Lcom/android/keyguard/wallpaper/theme/LockscreenCallback;)V

    const/4 v5, -0x1

    const/4 v6, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v5, v6}, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->addView(Landroid/view/View;II)V

    goto :goto_8

    :cond_15
    const-string/jumbo v5, "leaf"

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_16

    new-instance v20, Lcom/android/keyguard/wallpaper/theme/xmlparser/LeafView;

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/keyguard/wallpaper/theme/xmlparser/LeafView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mComplexAnimation:Lcom/android/keyguard/wallpaper/theme/xmlparser/ComplexAnimation;

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Lcom/android/keyguard/wallpaper/theme/xmlparser/ComplexAnimation;->addScene(Lcom/android/keyguard/wallpaper/theme/LockscreenCallback;)V

    const/4 v5, -0x1

    const/4 v6, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v5, v6}, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->addView(Landroid/view/View;II)V

    goto :goto_8

    :cond_16
    const-string/jumbo v5, "flower"

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_13

    new-instance v17, Lcom/android/keyguard/wallpaper/theme/xmlparser/FlowerView;

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/keyguard/wallpaper/theme/xmlparser/FlowerView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mComplexAnimation:Lcom/android/keyguard/wallpaper/theme/xmlparser/ComplexAnimation;

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Lcom/android/keyguard/wallpaper/theme/xmlparser/ComplexAnimation;->addScene(Lcom/android/keyguard/wallpaper/theme/LockscreenCallback;)V

    const/4 v5, -0x1

    const/4 v6, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v5, v6}, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->addView(Landroid/view/View;II)V

    goto :goto_8

    :cond_17
    const-string/jumbo v5, "rotate"

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_24

    const/4 v13, 0x0

    new-instance v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;

    invoke-direct {v13}, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;-><init>()V

    invoke-interface/range {v30 .. v30}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v14

    const/16 v19, 0x0

    :goto_9
    move/from16 v0, v19

    if-ge v0, v14, :cond_2

    move-object/from16 v0, v30

    move/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v30

    move/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v27

    const-string/jumbo v5, "fromDegrees"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_19

    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    iput v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->from:F

    :cond_18
    :goto_a
    add-int/lit8 v19, v19, 0x1

    goto :goto_9

    :cond_19
    const-string/jumbo v5, "toDegrees"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1a

    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    iput v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->to:F

    goto :goto_a

    :cond_1a
    const-string/jumbo v5, "duration"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1b

    invoke-static/range {v27 .. v27}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->duration:J

    goto :goto_a

    :cond_1b
    const-string/jumbo v5, "repeatCount"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1c

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->repeatCount:I

    goto :goto_a

    :cond_1c
    const-string/jumbo v5, "repeatMode"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1d

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->repeatMode:I

    goto :goto_a

    :cond_1d
    const-string/jumbo v5, "delay"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1e

    invoke-static/range {v27 .. v27}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->delay:J

    goto :goto_a

    :cond_1e
    const-string/jumbo v5, "accelerateInterpolator"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_20

    const-string/jumbo v5, "default"

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1f

    new-instance v5, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iput-object v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto :goto_a

    :cond_1f
    new-instance v5, Landroid/view/animation/AccelerateInterpolator;

    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-direct {v5, v6}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    iput-object v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_a

    :cond_20
    const-string/jumbo v5, "decelerateInterpolator"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_22

    const-string/jumbo v5, "default"

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_21

    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_a

    :cond_21
    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-direct {v5, v6}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_a

    :cond_22
    const-string/jumbo v5, "accelerateDecelerateInterpolator"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_23

    new-instance v5, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_a

    :cond_23
    const-string/jumbo v5, "normalSpeed"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_18

    const/4 v5, 0x0

    iput-object v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_a

    :cond_24
    const-string/jumbo v5, "parabola"

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_34

    const/4 v13, 0x0

    new-instance v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;

    invoke-direct {v13}, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;-><init>()V

    invoke-interface/range {v30 .. v30}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v14

    const/16 v19, 0x0

    :goto_b
    move/from16 v0, v19

    if-ge v0, v14, :cond_2

    move-object/from16 v0, v30

    move/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v30

    move/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v27

    const-string/jumbo v5, "key"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_26

    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    iput v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->key:F

    :cond_25
    :goto_c
    add-int/lit8 v19, v19, 0x1

    goto :goto_b

    :cond_26
    const-string/jumbo v5, "xFrom"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_27

    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->getDevicePixelX(F)F

    move-result v5

    iput v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->from:F

    goto :goto_c

    :cond_27
    const-string/jumbo v5, "xTo"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_28

    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->getDevicePixelX(F)F

    move-result v5

    iput v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->to:F

    goto :goto_c

    :cond_28
    const-string/jumbo v5, "xOffSet"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_29

    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->getDevicePixelX(F)F

    move-result v5

    iput v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->xOffSet:F

    goto :goto_c

    :cond_29
    const-string/jumbo v5, "yOffSet"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2a

    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->getDevicePixelY(F)F

    move-result v5

    iput v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->yOffSet:F

    goto :goto_c

    :cond_2a
    const-string/jumbo v5, "duration"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2b

    invoke-static/range {v27 .. v27}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->duration:J

    goto :goto_c

    :cond_2b
    const-string/jumbo v5, "repeatCount"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2c

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->repeatCount:I

    goto/16 :goto_c

    :cond_2c
    const-string/jumbo v5, "repeatMode"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2d

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->repeatMode:I

    goto/16 :goto_c

    :cond_2d
    const-string/jumbo v5, "delay"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2e

    invoke-static/range {v27 .. v27}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->delay:J

    goto/16 :goto_c

    :cond_2e
    const-string/jumbo v5, "accelerateInterpolator"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_30

    const-string/jumbo v5, "default"

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2f

    new-instance v5, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iput-object v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_c

    :cond_2f
    new-instance v5, Landroid/view/animation/AccelerateInterpolator;

    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-direct {v5, v6}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    iput-object v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_c

    :cond_30
    const-string/jumbo v5, "decelerateInterpolator"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_32

    const-string/jumbo v5, "default"

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_31

    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_c

    :cond_31
    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-direct {v5, v6}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_c

    :cond_32
    const-string/jumbo v5, "accelerateDecelerateInterpolator"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_33

    new-instance v5, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_c

    :cond_33
    const-string/jumbo v5, "normalSpeed"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_25

    const/4 v5, 0x0

    iput-object v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_c

    :cond_34
    const-string/jumbo v5, "sinX"

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_45

    const/4 v13, 0x0

    new-instance v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;

    invoke-direct {v13}, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;-><init>()V

    invoke-interface/range {v30 .. v30}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v14

    const/16 v19, 0x0

    :goto_d
    move/from16 v0, v19

    if-ge v0, v14, :cond_2

    move-object/from16 v0, v30

    move/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v30

    move/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v27

    const-string/jumbo v5, "key"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_36

    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    iput v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->key:F

    :cond_35
    :goto_e
    add-int/lit8 v19, v19, 0x1

    goto :goto_d

    :cond_36
    const-string/jumbo v5, "adjust"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_37

    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    iput v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->adjust:F

    goto :goto_e

    :cond_37
    const-string/jumbo v5, "xFrom"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_38

    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->getDevicePixelX(F)F

    move-result v5

    iput v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->from:F

    goto :goto_e

    :cond_38
    const-string/jumbo v5, "xTo"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_39

    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->getDevicePixelX(F)F

    move-result v5

    iput v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->to:F

    goto :goto_e

    :cond_39
    const-string/jumbo v5, "xOffSet"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3a

    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->getDevicePixelX(F)F

    move-result v5

    iput v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->xOffSet:F

    goto :goto_e

    :cond_3a
    const-string/jumbo v5, "yOffSet"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3b

    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->getDevicePixelY(F)F

    move-result v5

    iput v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->yOffSet:F

    goto :goto_e

    :cond_3b
    const-string/jumbo v5, "duration"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3c

    invoke-static/range {v27 .. v27}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->duration:J

    goto/16 :goto_e

    :cond_3c
    const-string/jumbo v5, "repeatCount"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3d

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->repeatCount:I

    goto/16 :goto_e

    :cond_3d
    const-string/jumbo v5, "repeatMode"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3e

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->repeatMode:I

    goto/16 :goto_e

    :cond_3e
    const-string/jumbo v5, "delay"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3f

    invoke-static/range {v27 .. v27}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->delay:J

    goto/16 :goto_e

    :cond_3f
    const-string/jumbo v5, "accelerateInterpolator"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_41

    const-string/jumbo v5, "default"

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_40

    new-instance v5, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iput-object v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_e

    :cond_40
    new-instance v5, Landroid/view/animation/AccelerateInterpolator;

    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-direct {v5, v6}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    iput-object v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_e

    :cond_41
    const-string/jumbo v5, "decelerateInterpolator"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_43

    const-string/jumbo v5, "default"

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_42

    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_e

    :cond_42
    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-direct {v5, v6}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_e

    :cond_43
    const-string/jumbo v5, "accelerateDecelerateInterpolator"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_44

    new-instance v5, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_e

    :cond_44
    const-string/jumbo v5, "normalSpeed"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_35

    const/4 v5, 0x0

    iput-object v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_e

    :cond_45
    const-string/jumbo v5, "sinY"

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_56

    const/4 v13, 0x0

    new-instance v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;

    invoke-direct {v13}, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;-><init>()V

    invoke-interface/range {v30 .. v30}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v14

    const/16 v19, 0x0

    :goto_f
    move/from16 v0, v19

    if-ge v0, v14, :cond_2

    move-object/from16 v0, v30

    move/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v30

    move/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v27

    const-string/jumbo v5, "key"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_47

    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    iput v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->key:F

    :cond_46
    :goto_10
    add-int/lit8 v19, v19, 0x1

    goto :goto_f

    :cond_47
    const-string/jumbo v5, "adjust"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_48

    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    iput v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->adjust:F

    goto :goto_10

    :cond_48
    const-string/jumbo v5, "yFrom"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_49

    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->getDevicePixelY(F)F

    move-result v5

    iput v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->from:F

    goto :goto_10

    :cond_49
    const-string/jumbo v5, "yTo"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4a

    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->getDevicePixelY(F)F

    move-result v5

    iput v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->to:F

    goto :goto_10

    :cond_4a
    const-string/jumbo v5, "yOffSet"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4b

    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->getDevicePixelY(F)F

    move-result v5

    iput v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->yOffSet:F

    goto :goto_10

    :cond_4b
    const-string/jumbo v5, "xOffSet"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4c

    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->getDevicePixelX(F)F

    move-result v5

    iput v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->xOffSet:F

    goto :goto_10

    :cond_4c
    const-string/jumbo v5, "duration"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4d

    invoke-static/range {v27 .. v27}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->duration:J

    goto/16 :goto_10

    :cond_4d
    const-string/jumbo v5, "repeatCount"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4e

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->repeatCount:I

    goto/16 :goto_10

    :cond_4e
    const-string/jumbo v5, "repeatMode"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4f

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->repeatMode:I

    goto/16 :goto_10

    :cond_4f
    const-string/jumbo v5, "delay"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_50

    invoke-static/range {v27 .. v27}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->delay:J

    goto/16 :goto_10

    :cond_50
    const-string/jumbo v5, "accelerateInterpolator"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_52

    const-string/jumbo v5, "default"

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_51

    new-instance v5, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iput-object v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_10

    :cond_51
    new-instance v5, Landroid/view/animation/AccelerateInterpolator;

    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-direct {v5, v6}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    iput-object v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_10

    :cond_52
    const-string/jumbo v5, "decelerateInterpolator"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_54

    const-string/jumbo v5, "default"

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_53

    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_10

    :cond_53
    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-direct {v5, v6}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_10

    :cond_54
    const-string/jumbo v5, "accelerateDecelerateInterpolator"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_55

    new-instance v5, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_10

    :cond_55
    const-string/jumbo v5, "normalSpeed"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_46

    const/4 v5, 0x0

    iput-object v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_10

    :cond_56
    const-string/jumbo v5, "round"

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_66

    const/4 v13, 0x0

    new-instance v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;

    invoke-direct {v13}, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;-><init>()V

    invoke-interface/range {v30 .. v30}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v14

    const/16 v19, 0x0

    :goto_11
    move/from16 v0, v19

    if-ge v0, v14, :cond_2

    move-object/from16 v0, v30

    move/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v30

    move/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v27

    const-string/jumbo v5, "r"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_58

    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mDeviceDensity:F

    mul-float/2addr v5, v6

    const/high16 v6, 0x3f000000    # 0.5f

    add-float/2addr v5, v6

    iput v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->r:F

    :cond_57
    :goto_12
    add-int/lit8 v19, v19, 0x1

    goto :goto_11

    :cond_58
    const-string/jumbo v5, "a"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_59

    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mDeviceDensity:F

    mul-float/2addr v5, v6

    const/high16 v6, 0x3f000000    # 0.5f

    add-float/2addr v5, v6

    iput v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->a:F

    goto :goto_12

    :cond_59
    const-string/jumbo v5, "b"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5a

    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mDeviceDensity:F

    mul-float/2addr v5, v6

    const/high16 v6, 0x3f000000    # 0.5f

    add-float/2addr v5, v6

    iput v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->b:F

    goto :goto_12

    :cond_5a
    const-string/jumbo v5, "fromDegrees"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5b

    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    iput v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->from:F

    goto :goto_12

    :cond_5b
    const-string/jumbo v5, "toDegrees"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5c

    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    iput v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->to:F

    goto :goto_12

    :cond_5c
    const-string/jumbo v5, "duration"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5d

    invoke-static/range {v27 .. v27}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->duration:J

    goto :goto_12

    :cond_5d
    const-string/jumbo v5, "repeatCount"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5e

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->repeatCount:I

    goto :goto_12

    :cond_5e
    const-string/jumbo v5, "repeatMode"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5f

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->repeatMode:I

    goto/16 :goto_12

    :cond_5f
    const-string/jumbo v5, "delay"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_60

    invoke-static/range {v27 .. v27}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->delay:J

    goto/16 :goto_12

    :cond_60
    const-string/jumbo v5, "accelerateInterpolator"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_62

    const-string/jumbo v5, "default"

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_61

    new-instance v5, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iput-object v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_12

    :cond_61
    new-instance v5, Landroid/view/animation/AccelerateInterpolator;

    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-direct {v5, v6}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    iput-object v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_12

    :cond_62
    const-string/jumbo v5, "decelerateInterpolator"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_64

    const-string/jumbo v5, "default"

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_63

    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_12

    :cond_63
    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-direct {v5, v6}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_12

    :cond_64
    const-string/jumbo v5, "accelerateDecelerateInterpolator"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_65

    new-instance v5, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_12

    :cond_65
    const-string/jumbo v5, "normalSpeed"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_57

    const/4 v5, 0x0

    iput-object v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_12

    :cond_66
    const-string/jumbo v5, "ellipse"

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_77

    const/4 v13, 0x0

    new-instance v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;

    invoke-direct {v13}, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;-><init>()V

    invoke-interface/range {v30 .. v30}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v14

    const/16 v19, 0x0

    :goto_13
    move/from16 v0, v19

    if-ge v0, v14, :cond_2

    move-object/from16 v0, v30

    move/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v30

    move/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v27

    const-string/jumbo v5, "ra"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_68

    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mDeviceDensity:F

    mul-float/2addr v5, v6

    const/high16 v6, 0x3f000000    # 0.5f

    add-float/2addr v5, v6

    iput v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->ra:F

    :cond_67
    :goto_14
    add-int/lit8 v19, v19, 0x1

    goto :goto_13

    :cond_68
    const-string/jumbo v5, "rb"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_69

    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mDeviceDensity:F

    mul-float/2addr v5, v6

    const/high16 v6, 0x3f000000    # 0.5f

    add-float/2addr v5, v6

    iput v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->rb:F

    goto :goto_14

    :cond_69
    const-string/jumbo v5, "a"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6a

    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mDeviceDensity:F

    mul-float/2addr v5, v6

    const/high16 v6, 0x3f000000    # 0.5f

    add-float/2addr v5, v6

    iput v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->a:F

    goto :goto_14

    :cond_6a
    const-string/jumbo v5, "b"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6b

    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mDeviceDensity:F

    mul-float/2addr v5, v6

    const/high16 v6, 0x3f000000    # 0.5f

    add-float/2addr v5, v6

    iput v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->b:F

    goto :goto_14

    :cond_6b
    const-string/jumbo v5, "fromDegrees"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6c

    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    iput v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->from:F

    goto :goto_14

    :cond_6c
    const-string/jumbo v5, "toDegrees"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6d

    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    iput v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->to:F

    goto :goto_14

    :cond_6d
    const-string/jumbo v5, "duration"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6e

    invoke-static/range {v27 .. v27}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->duration:J

    goto/16 :goto_14

    :cond_6e
    const-string/jumbo v5, "repeatCount"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6f

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->repeatCount:I

    goto/16 :goto_14

    :cond_6f
    const-string/jumbo v5, "repeatMode"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_70

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->repeatMode:I

    goto/16 :goto_14

    :cond_70
    const-string/jumbo v5, "delay"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_71

    invoke-static/range {v27 .. v27}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->delay:J

    goto/16 :goto_14

    :cond_71
    const-string/jumbo v5, "accelerateInterpolator"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_73

    const-string/jumbo v5, "default"

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_72

    new-instance v5, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iput-object v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_14

    :cond_72
    new-instance v5, Landroid/view/animation/AccelerateInterpolator;

    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-direct {v5, v6}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    iput-object v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_14

    :cond_73
    const-string/jumbo v5, "decelerateInterpolator"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_75

    const-string/jumbo v5, "default"

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_74

    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_14

    :cond_74
    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-direct {v5, v6}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_14

    :cond_75
    const-string/jumbo v5, "accelerateDecelerateInterpolator"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_76

    new-instance v5, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_14

    :cond_76
    const-string/jumbo v5, "normalSpeed"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_67

    const/4 v5, 0x0

    iput-object v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_14

    :cond_77
    const-string/jumbo v5, "alpha"

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_84

    const/4 v13, 0x0

    new-instance v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;

    invoke-direct {v13}, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;-><init>()V

    invoke-interface/range {v30 .. v30}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v14

    const/16 v19, 0x0

    :goto_15
    move/from16 v0, v19

    if-ge v0, v14, :cond_2

    move-object/from16 v0, v30

    move/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v30

    move/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v27

    const-string/jumbo v5, "fromAlpha"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_79

    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    iput v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->from:F

    :cond_78
    :goto_16
    add-int/lit8 v19, v19, 0x1

    goto :goto_15

    :cond_79
    const-string/jumbo v5, "toAlpha"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7a

    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    iput v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->to:F

    goto :goto_16

    :cond_7a
    const-string/jumbo v5, "duration"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7b

    invoke-static/range {v27 .. v27}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->duration:J

    goto :goto_16

    :cond_7b
    const-string/jumbo v5, "repeatCount"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7c

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->repeatCount:I

    goto :goto_16

    :cond_7c
    const-string/jumbo v5, "repeatMode"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7d

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->repeatMode:I

    goto :goto_16

    :cond_7d
    const-string/jumbo v5, "delay"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7e

    invoke-static/range {v27 .. v27}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->delay:J

    goto :goto_16

    :cond_7e
    const-string/jumbo v5, "accelerateInterpolator"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_80

    const-string/jumbo v5, "default"

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7f

    new-instance v5, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iput-object v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto :goto_16

    :cond_7f
    new-instance v5, Landroid/view/animation/AccelerateInterpolator;

    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-direct {v5, v6}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    iput-object v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_16

    :cond_80
    const-string/jumbo v5, "decelerateInterpolator"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_82

    const-string/jumbo v5, "default"

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_81

    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_16

    :cond_81
    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-direct {v5, v6}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_16

    :cond_82
    const-string/jumbo v5, "accelerateDecelerateInterpolator"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_83

    new-instance v5, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_16

    :cond_83
    const-string/jumbo v5, "normalSpeed"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_78

    const/4 v5, 0x0

    iput-object v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_16

    :cond_84
    const-string/jumbo v5, "translateX"

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_91

    const/4 v13, 0x0

    new-instance v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;

    invoke-direct {v13}, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;-><init>()V

    invoke-interface/range {v30 .. v30}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v14

    const/16 v19, 0x0

    :goto_17
    move/from16 v0, v19

    if-ge v0, v14, :cond_2

    move-object/from16 v0, v30

    move/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v30

    move/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v27

    const-string/jumbo v5, "fromXDelta"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_86

    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->getDevicePixelX(F)F

    move-result v5

    iput v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->from:F

    :cond_85
    :goto_18
    add-int/lit8 v19, v19, 0x1

    goto :goto_17

    :cond_86
    const-string/jumbo v5, "toXDelta"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_87

    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->getDevicePixelX(F)F

    move-result v5

    iput v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->to:F

    goto :goto_18

    :cond_87
    const-string/jumbo v5, "duration"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_88

    invoke-static/range {v27 .. v27}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->duration:J

    goto :goto_18

    :cond_88
    const-string/jumbo v5, "repeatCount"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_89

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->repeatCount:I

    goto :goto_18

    :cond_89
    const-string/jumbo v5, "repeatMode"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8a

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->repeatMode:I

    goto :goto_18

    :cond_8a
    const-string/jumbo v5, "delay"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8b

    invoke-static/range {v27 .. v27}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->delay:J

    goto :goto_18

    :cond_8b
    const-string/jumbo v5, "accelerateInterpolator"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8d

    const-string/jumbo v5, "default"

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8c

    new-instance v5, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iput-object v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto :goto_18

    :cond_8c
    new-instance v5, Landroid/view/animation/AccelerateInterpolator;

    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-direct {v5, v6}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    iput-object v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_18

    :cond_8d
    const-string/jumbo v5, "decelerateInterpolator"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8f

    const-string/jumbo v5, "default"

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8e

    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_18

    :cond_8e
    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-direct {v5, v6}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_18

    :cond_8f
    const-string/jumbo v5, "accelerateDecelerateInterpolator"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_90

    new-instance v5, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_18

    :cond_90
    const-string/jumbo v5, "normalSpeed"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_85

    const/4 v5, 0x0

    iput-object v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_18

    :cond_91
    const-string/jumbo v5, "translateY"

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9e

    const/4 v13, 0x0

    new-instance v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;

    invoke-direct {v13}, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;-><init>()V

    invoke-interface/range {v30 .. v30}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v14

    const/16 v19, 0x0

    :goto_19
    move/from16 v0, v19

    if-ge v0, v14, :cond_2

    move-object/from16 v0, v30

    move/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v30

    move/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v27

    const-string/jumbo v5, "fromYDelta"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_93

    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->getDevicePixelY(F)F

    move-result v5

    iput v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->from:F

    :cond_92
    :goto_1a
    add-int/lit8 v19, v19, 0x1

    goto :goto_19

    :cond_93
    const-string/jumbo v5, "toYDelta"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_94

    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->getDevicePixelY(F)F

    move-result v5

    iput v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->to:F

    goto :goto_1a

    :cond_94
    const-string/jumbo v5, "duration"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_95

    invoke-static/range {v27 .. v27}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->duration:J

    goto :goto_1a

    :cond_95
    const-string/jumbo v5, "repeatCount"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_96

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->repeatCount:I

    goto :goto_1a

    :cond_96
    const-string/jumbo v5, "repeatMode"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_97

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->repeatMode:I

    goto :goto_1a

    :cond_97
    const-string/jumbo v5, "delay"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_98

    invoke-static/range {v27 .. v27}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->delay:J

    goto :goto_1a

    :cond_98
    const-string/jumbo v5, "accelerateInterpolator"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9a

    const-string/jumbo v5, "default"

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_99

    new-instance v5, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iput-object v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto :goto_1a

    :cond_99
    new-instance v5, Landroid/view/animation/AccelerateInterpolator;

    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-direct {v5, v6}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    iput-object v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_1a

    :cond_9a
    const-string/jumbo v5, "decelerateInterpolator"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9c

    const-string/jumbo v5, "default"

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9b

    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_1a

    :cond_9b
    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-direct {v5, v6}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_1a

    :cond_9c
    const-string/jumbo v5, "accelerateDecelerateInterpolator"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9d

    new-instance v5, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_1a

    :cond_9d
    const-string/jumbo v5, "normalSpeed"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_92

    const/4 v5, 0x0

    iput-object v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_1a

    :cond_9e
    const-string/jumbo v5, "scaleX"

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_ab

    const/4 v13, 0x0

    new-instance v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;

    invoke-direct {v13}, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;-><init>()V

    invoke-interface/range {v30 .. v30}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v14

    const/16 v19, 0x0

    :goto_1b
    move/from16 v0, v19

    if-ge v0, v14, :cond_2

    move-object/from16 v0, v30

    move/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v30

    move/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v27

    const-string/jumbo v5, "fromXScale"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a0

    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    iput v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->from:F

    :cond_9f
    :goto_1c
    add-int/lit8 v19, v19, 0x1

    goto :goto_1b

    :cond_a0
    const-string/jumbo v5, "toXScale"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a1

    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    iput v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->to:F

    goto :goto_1c

    :cond_a1
    const-string/jumbo v5, "duration"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a2

    invoke-static/range {v27 .. v27}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->duration:J

    goto :goto_1c

    :cond_a2
    const-string/jumbo v5, "repeatCount"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a3

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->repeatCount:I

    goto :goto_1c

    :cond_a3
    const-string/jumbo v5, "repeatMode"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a4

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->repeatMode:I

    goto :goto_1c

    :cond_a4
    const-string/jumbo v5, "delay"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a5

    invoke-static/range {v27 .. v27}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->delay:J

    goto :goto_1c

    :cond_a5
    const-string/jumbo v5, "accelerateInterpolator"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a7

    const-string/jumbo v5, "default"

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a6

    new-instance v5, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iput-object v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto :goto_1c

    :cond_a6
    new-instance v5, Landroid/view/animation/AccelerateInterpolator;

    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-direct {v5, v6}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    iput-object v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_1c

    :cond_a7
    const-string/jumbo v5, "decelerateInterpolator"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a9

    const-string/jumbo v5, "default"

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a8

    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_1c

    :cond_a8
    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-direct {v5, v6}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_1c

    :cond_a9
    const-string/jumbo v5, "accelerateDecelerateInterpolator"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_aa

    new-instance v5, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_1c

    :cond_aa
    const-string/jumbo v5, "normalSpeed"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9f

    const/4 v5, 0x0

    iput-object v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_1c

    :cond_ab
    const-string/jumbo v5, "scaleY"

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b8

    const/4 v13, 0x0

    new-instance v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;

    invoke-direct {v13}, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;-><init>()V

    invoke-interface/range {v30 .. v30}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v14

    const/16 v19, 0x0

    :goto_1d
    move/from16 v0, v19

    if-ge v0, v14, :cond_2

    move-object/from16 v0, v30

    move/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v30

    move/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v27

    const-string/jumbo v5, "fromYScale"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_ad

    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    iput v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->from:F

    :cond_ac
    :goto_1e
    add-int/lit8 v19, v19, 0x1

    goto :goto_1d

    :cond_ad
    const-string/jumbo v5, "toYScale"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_ae

    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    iput v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->to:F

    goto :goto_1e

    :cond_ae
    const-string/jumbo v5, "duration"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_af

    invoke-static/range {v27 .. v27}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->duration:J

    goto :goto_1e

    :cond_af
    const-string/jumbo v5, "repeatCount"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b0

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->repeatCount:I

    goto :goto_1e

    :cond_b0
    const-string/jumbo v5, "repeatMode"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b1

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->repeatMode:I

    goto :goto_1e

    :cond_b1
    const-string/jumbo v5, "delay"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b2

    invoke-static/range {v27 .. v27}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->delay:J

    goto :goto_1e

    :cond_b2
    const-string/jumbo v5, "accelerateInterpolator"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b4

    const-string/jumbo v5, "default"

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b3

    new-instance v5, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iput-object v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto :goto_1e

    :cond_b3
    new-instance v5, Landroid/view/animation/AccelerateInterpolator;

    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-direct {v5, v6}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    iput-object v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_1e

    :cond_b4
    const-string/jumbo v5, "decelerateInterpolator"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b6

    const-string/jumbo v5, "default"

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b5

    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_1e

    :cond_b5
    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-direct {v5, v6}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_1e

    :cond_b6
    const-string/jumbo v5, "accelerateDecelerateInterpolator"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b7

    new-instance v5, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_1e

    :cond_b7
    const-string/jumbo v5, "normalSpeed"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_ac

    const/4 v5, 0x0

    iput-object v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_1e

    :cond_b8
    const-string/jumbo v5, "ImageResource"

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_c5

    const/4 v13, 0x0

    new-instance v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;

    invoke-direct {v13}, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;-><init>()V

    invoke-interface/range {v30 .. v30}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v14

    const/16 v19, 0x0

    :goto_1f
    move/from16 v0, v19

    if-ge v0, v14, :cond_2

    move-object/from16 v0, v30

    move/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v30

    move/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v27

    const-string/jumbo v5, "length"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_ba

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->length:I

    :cond_b9
    :goto_20
    add-int/lit8 v19, v19, 0x1

    goto :goto_1f

    :cond_ba
    const-string/jumbo v5, "image"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_bb

    const-string/jumbo v5, "drawable"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mPackageName:Ljava/lang/String;

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    invoke-virtual {v0, v1, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    iput v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->imageViewId:I

    goto :goto_20

    :cond_bb
    const-string/jumbo v5, "duration"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_bc

    invoke-static/range {v27 .. v27}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->duration:J

    goto :goto_20

    :cond_bc
    const-string/jumbo v5, "repeatCount"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_bd

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->repeatCount:I

    goto :goto_20

    :cond_bd
    const-string/jumbo v5, "repeatMode"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_be

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->repeatMode:I

    goto :goto_20

    :cond_be
    const-string/jumbo v5, "delay"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_bf

    invoke-static/range {v27 .. v27}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->delay:J

    goto :goto_20

    :cond_bf
    const-string/jumbo v5, "accelerateInterpolator"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_c1

    const-string/jumbo v5, "default"

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c0

    new-instance v5, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iput-object v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_20

    :cond_c0
    new-instance v5, Landroid/view/animation/AccelerateInterpolator;

    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-direct {v5, v6}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    iput-object v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_20

    :cond_c1
    const-string/jumbo v5, "decelerateInterpolator"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_c3

    const-string/jumbo v5, "default"

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c2

    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_20

    :cond_c2
    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-direct {v5, v6}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_20

    :cond_c3
    const-string/jumbo v5, "accelerateDecelerateInterpolator"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_c4

    new-instance v5, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_20

    :cond_c4
    const-string/jumbo v5, "normalSpeed"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b9

    const/4 v5, 0x0

    iput-object v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_20

    :cond_c5
    const-string/jumbo v5, "frame"

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_c8

    const/4 v13, 0x0

    new-instance v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;

    invoke-direct {v13}, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;-><init>()V

    invoke-interface/range {v30 .. v30}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v14

    const/16 v19, 0x0

    :goto_21
    move/from16 v0, v19

    if-ge v0, v14, :cond_2

    move-object/from16 v0, v30

    move/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v30

    move/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v26

    const-string/jumbo v5, "top"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_c7

    move/from16 v0, v26

    iput v0, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->top:I

    :cond_c6
    :goto_22
    add-int/lit8 v19, v19, 0x1

    goto :goto_21

    :cond_c7
    const-string/jumbo v5, "minInterval"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_c6

    move/from16 v0, v26

    iput v0, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->minInterval:I

    goto :goto_22

    :cond_c8
    const-string/jumbo v5, "item"

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface/range {v30 .. v30}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v14

    if-eqz v13, :cond_2

    const/16 v19, 0x0

    :goto_23
    move/from16 v0, v19

    if-ge v0, v14, :cond_2

    move-object/from16 v0, v30

    move/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v30

    move/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v27

    const-string/jumbo v5, "KeyguardAnimatedWallpaper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "item name: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " value:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v27

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " count:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v5, "frameSize"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_ca

    iget-object v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->frameSize:Ljava/util/ArrayList;

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_c9
    :goto_24
    add-int/lit8 v19, v19, 0x1

    goto :goto_23

    :cond_ca
    const-string/jumbo v5, "image"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_cb

    iget-object v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->imageViewSetId:Ljava/util/ArrayList;

    const-string/jumbo v6, "drawable"

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mPackageName:Ljava/lang/String;

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    invoke-virtual {v0, v1, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_24

    :cond_cb
    const-string/jumbo v5, "background"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_cc

    const-string/jumbo v5, "drawable"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mPackageName:Ljava/lang/String;

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    invoke-virtual {v0, v1, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    iput v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->backgroundId:I

    goto :goto_24

    :cond_cc
    const-string/jumbo v5, "x"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_cd

    iget-object v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->x:Ljava/util/ArrayList;

    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_24

    :cond_cd
    const-string/jumbo v5, "y"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_ce

    iget-object v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->y:Ljava/util/ArrayList;

    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_24

    :cond_ce
    const-string/jumbo v5, "scale"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_cf

    iget-object v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->scale:Ljava/util/ArrayList;

    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_24

    :cond_cf
    const-string/jumbo v5, "startIndex"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_c9

    iget-object v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->startIndex:Ljava/util/ArrayList;

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_24

    :cond_d0
    const/4 v5, 0x3

    move/from16 v0, v16

    if-ne v0, v5, :cond_2

    invoke-interface/range {v30 .. v30}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v15

    const-string/jumbo v5, "view"

    invoke-virtual {v15, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_d1

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move/from16 v2, v29

    move/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->addView(Landroid/view/View;II)V

    const/16 v29, -0x2

    const/16 v18, -0x2

    goto/16 :goto_2

    :cond_d1
    const-string/jumbo v5, "rotate"

    invoke-virtual {v15, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_d2

    if-eqz v13, :cond_2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mComplexAnimation:Lcom/android/keyguard/wallpaper/theme/xmlparser/ComplexAnimation;

    const-string/jumbo v6, "rotation"

    move-object/from16 v0, v28

    invoke-virtual {v13, v0, v6}, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->buildAnimation(Lcom/android/keyguard/wallpaper/theme/xmlparser/FrameImageView;Ljava/lang/String;)Landroid/animation/ValueAnimator;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/keyguard/wallpaper/theme/xmlparser/ComplexAnimation;->addAnimation(Landroid/animation/ValueAnimator;)V

    goto/16 :goto_2

    :cond_d2
    const-string/jumbo v5, "parabola"

    invoke-virtual {v15, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_d3

    if-eqz v13, :cond_2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mComplexAnimation:Lcom/android/keyguard/wallpaper/theme/xmlparser/ComplexAnimation;

    const-string/jumbo v6, "parabola"

    move-object/from16 v0, v28

    invoke-virtual {v13, v0, v6}, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->buildAnimation(Lcom/android/keyguard/wallpaper/theme/xmlparser/FrameImageView;Ljava/lang/String;)Landroid/animation/ValueAnimator;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/keyguard/wallpaper/theme/xmlparser/ComplexAnimation;->addAnimation(Landroid/animation/ValueAnimator;)V

    goto/16 :goto_2

    :cond_d3
    const-string/jumbo v5, "sinX"

    invoke-virtual {v15, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_d4

    if-eqz v13, :cond_2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mComplexAnimation:Lcom/android/keyguard/wallpaper/theme/xmlparser/ComplexAnimation;

    const-string/jumbo v6, "sinX"

    move-object/from16 v0, v28

    invoke-virtual {v13, v0, v6}, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->buildAnimation(Lcom/android/keyguard/wallpaper/theme/xmlparser/FrameImageView;Ljava/lang/String;)Landroid/animation/ValueAnimator;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/keyguard/wallpaper/theme/xmlparser/ComplexAnimation;->addAnimation(Landroid/animation/ValueAnimator;)V

    goto/16 :goto_2

    :cond_d4
    const-string/jumbo v5, "sinY"

    invoke-virtual {v15, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_d5

    if-eqz v13, :cond_2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mComplexAnimation:Lcom/android/keyguard/wallpaper/theme/xmlparser/ComplexAnimation;

    const-string/jumbo v6, "sinY"

    move-object/from16 v0, v28

    invoke-virtual {v13, v0, v6}, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->buildAnimation(Lcom/android/keyguard/wallpaper/theme/xmlparser/FrameImageView;Ljava/lang/String;)Landroid/animation/ValueAnimator;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/keyguard/wallpaper/theme/xmlparser/ComplexAnimation;->addAnimation(Landroid/animation/ValueAnimator;)V

    goto/16 :goto_2

    :cond_d5
    const-string/jumbo v5, "round"

    invoke-virtual {v15, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_d6

    if-eqz v13, :cond_2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mComplexAnimation:Lcom/android/keyguard/wallpaper/theme/xmlparser/ComplexAnimation;

    const-string/jumbo v6, "round"

    move-object/from16 v0, v28

    invoke-virtual {v13, v0, v6}, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->buildAnimation(Lcom/android/keyguard/wallpaper/theme/xmlparser/FrameImageView;Ljava/lang/String;)Landroid/animation/ValueAnimator;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/keyguard/wallpaper/theme/xmlparser/ComplexAnimation;->addAnimation(Landroid/animation/ValueAnimator;)V

    goto/16 :goto_2

    :cond_d6
    const-string/jumbo v5, "ellipse"

    invoke-virtual {v15, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_d7

    if-eqz v13, :cond_2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mComplexAnimation:Lcom/android/keyguard/wallpaper/theme/xmlparser/ComplexAnimation;

    const-string/jumbo v6, "ellipse"

    move-object/from16 v0, v28

    invoke-virtual {v13, v0, v6}, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->buildAnimation(Lcom/android/keyguard/wallpaper/theme/xmlparser/FrameImageView;Ljava/lang/String;)Landroid/animation/ValueAnimator;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/keyguard/wallpaper/theme/xmlparser/ComplexAnimation;->addAnimation(Landroid/animation/ValueAnimator;)V

    goto/16 :goto_2

    :cond_d7
    const-string/jumbo v5, "alpha"

    invoke-virtual {v15, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_d8

    if-eqz v13, :cond_2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mComplexAnimation:Lcom/android/keyguard/wallpaper/theme/xmlparser/ComplexAnimation;

    const-string/jumbo v6, "alpha"

    move-object/from16 v0, v28

    invoke-virtual {v13, v0, v6}, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->buildAnimation(Lcom/android/keyguard/wallpaper/theme/xmlparser/FrameImageView;Ljava/lang/String;)Landroid/animation/ValueAnimator;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/keyguard/wallpaper/theme/xmlparser/ComplexAnimation;->addAnimation(Landroid/animation/ValueAnimator;)V

    goto/16 :goto_2

    :cond_d8
    const-string/jumbo v5, "translateX"

    invoke-virtual {v15, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_d9

    if-eqz v13, :cond_2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mComplexAnimation:Lcom/android/keyguard/wallpaper/theme/xmlparser/ComplexAnimation;

    const-string/jumbo v6, "x"

    move-object/from16 v0, v28

    invoke-virtual {v13, v0, v6}, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->buildAnimation(Lcom/android/keyguard/wallpaper/theme/xmlparser/FrameImageView;Ljava/lang/String;)Landroid/animation/ValueAnimator;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/keyguard/wallpaper/theme/xmlparser/ComplexAnimation;->addAnimation(Landroid/animation/ValueAnimator;)V

    goto/16 :goto_2

    :cond_d9
    const-string/jumbo v5, "translateY"

    invoke-virtual {v15, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_da

    if-eqz v13, :cond_2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mComplexAnimation:Lcom/android/keyguard/wallpaper/theme/xmlparser/ComplexAnimation;

    const-string/jumbo v6, "y"

    move-object/from16 v0, v28

    invoke-virtual {v13, v0, v6}, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->buildAnimation(Lcom/android/keyguard/wallpaper/theme/xmlparser/FrameImageView;Ljava/lang/String;)Landroid/animation/ValueAnimator;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/keyguard/wallpaper/theme/xmlparser/ComplexAnimation;->addAnimation(Landroid/animation/ValueAnimator;)V

    goto/16 :goto_2

    :cond_da
    const-string/jumbo v5, "scaleX"

    invoke-virtual {v15, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_db

    if-eqz v13, :cond_2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mComplexAnimation:Lcom/android/keyguard/wallpaper/theme/xmlparser/ComplexAnimation;

    const-string/jumbo v6, "scaleX"

    move-object/from16 v0, v28

    invoke-virtual {v13, v0, v6}, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->buildAnimation(Lcom/android/keyguard/wallpaper/theme/xmlparser/FrameImageView;Ljava/lang/String;)Landroid/animation/ValueAnimator;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/keyguard/wallpaper/theme/xmlparser/ComplexAnimation;->addAnimation(Landroid/animation/ValueAnimator;)V

    goto/16 :goto_2

    :cond_db
    const-string/jumbo v5, "scaleY"

    invoke-virtual {v15, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_dc

    if-eqz v13, :cond_2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mComplexAnimation:Lcom/android/keyguard/wallpaper/theme/xmlparser/ComplexAnimation;

    const-string/jumbo v6, "scaleY"

    move-object/from16 v0, v28

    invoke-virtual {v13, v0, v6}, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->buildAnimation(Lcom/android/keyguard/wallpaper/theme/xmlparser/FrameImageView;Ljava/lang/String;)Landroid/animation/ValueAnimator;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/keyguard/wallpaper/theme/xmlparser/ComplexAnimation;->addAnimation(Landroid/animation/ValueAnimator;)V

    goto/16 :goto_2

    :cond_dc
    const-string/jumbo v5, "ImageResource"

    invoke-virtual {v15, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_de

    if-eqz v28, :cond_dd

    move-object/from16 v0, v28

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/wallpaper/theme/xmlparser/FrameImageView;->setApkContext(Landroid/content/Context;)V

    :cond_dd
    if-eqz v13, :cond_2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mComplexAnimation:Lcom/android/keyguard/wallpaper/theme/xmlparser/ComplexAnimation;

    const-string/jumbo v6, "ImageResource"

    move-object/from16 v0, v28

    invoke-virtual {v13, v0, v6}, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->buildAnimation(Lcom/android/keyguard/wallpaper/theme/xmlparser/FrameImageView;Ljava/lang/String;)Landroid/animation/ValueAnimator;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/keyguard/wallpaper/theme/xmlparser/ComplexAnimation;->addAnimation(Landroid/animation/ValueAnimator;)V

    goto/16 :goto_2

    :cond_de
    const-string/jumbo v5, "frame"

    invoke-virtual {v15, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v4, 0x0

    if-eqz v13, :cond_2

    new-instance v4, Lcom/android/keyguard/wallpaper/theme/xmlparser/Frame;

    iget v6, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->backgroundId:I

    iget-object v7, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->imageViewSetId:Ljava/util/ArrayList;

    iget-object v8, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->frameSize:Ljava/util/ArrayList;

    iget-object v9, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->x:Ljava/util/ArrayList;

    iget-object v10, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->y:Ljava/util/ArrayList;

    iget-object v11, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->scale:Ljava/util/ArrayList;

    iget-object v12, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->startIndex:Ljava/util/ArrayList;

    move-object/from16 v5, p1

    invoke-direct/range {v4 .. v12}, Lcom/android/keyguard/wallpaper/theme/xmlparser/Frame;-><init>(Landroid/content/Context;ILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    iget v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->top:I

    invoke-virtual {v4, v5}, Lcom/android/keyguard/wallpaper/theme/xmlparser/Frame;->setTop(I)V

    iget v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->minInterval:I

    invoke-virtual {v4, v5}, Lcom/android/keyguard/wallpaper/theme/xmlparser/Frame;->setMinInterval(I)V

    const/4 v5, -0x2

    const/4 v6, -0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6}, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->addView(Landroid/view/View;II)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mComplexAnimation:Lcom/android/keyguard/wallpaper/theme/xmlparser/ComplexAnimation;

    invoke-virtual {v5, v4}, Lcom/android/keyguard/wallpaper/theme/xmlparser/ComplexAnimation;->addSprite(Lcom/android/keyguard/wallpaper/theme/xmlparser/Frame;)V

    goto/16 :goto_2

    :cond_df
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mComplexAnimation:Lcom/android/keyguard/wallpaper/theme/xmlparser/ComplexAnimation;

    return-object v5
.end method

.method public playAnimation()V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mComplexAnimation:Lcom/android/keyguard/wallpaper/theme/xmlparser/ComplexAnimation;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mIsPlayingAnimation:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "KeyguardAnimatedWallpaper"

    const-string/jumbo v1, "playAnimation"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mIsPlayingAnimation:Z

    iget-object v0, p0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mComplexAnimation:Lcom/android/keyguard/wallpaper/theme/xmlparser/ComplexAnimation;

    invoke-virtual {v0}, Lcom/android/keyguard/wallpaper/theme/xmlparser/ComplexAnimation;->playAnimation()V

    goto :goto_0
.end method

.method public reset()V
    .locals 0

    return-void
.end method

.method public stopAnimation()V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mComplexAnimation:Lcom/android/keyguard/wallpaper/theme/xmlparser/ComplexAnimation;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mIsPlayingAnimation:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "KeyguardAnimatedWallpaper"

    const-string/jumbo v1, "stopAnimation"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mIsPlayingAnimation:Z

    iget-object v0, p0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mComplexAnimation:Lcom/android/keyguard/wallpaper/theme/xmlparser/ComplexAnimation;

    invoke-virtual {v0}, Lcom/android/keyguard/wallpaper/theme/xmlparser/ComplexAnimation;->stopAnimation()V

    :cond_0
    return-void
.end method

.method public update()V
    .locals 3

    const-string/jumbo v1, "KeyguardAnimatedWallpaper"

    const-string/jumbo v2, "update New Animation wallpaper!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/util/SettingsHelper;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/SettingsHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/util/SettingsHelper;->getCurrentOpenThemeXmlPackageName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->cleanUp()V

    invoke-direct {p0, v0}, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->init(Ljava/lang/String;)V

    goto :goto_0
.end method
