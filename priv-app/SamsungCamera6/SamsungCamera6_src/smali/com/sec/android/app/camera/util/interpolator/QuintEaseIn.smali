.class public Lcom/sec/android/app/camera/util/interpolator/QuintEaseIn;
.super Landroid/view/animation/BaseInterpolator;
.source "QuintEaseIn.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/view/animation/BaseInterpolator;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0}, Landroid/view/animation/BaseInterpolator;-><init>()V

    return-void
.end method

.method private in(F)F
    .locals 1

    mul-float v0, p1, p1

    mul-float/2addr v0, p1

    mul-float/2addr v0, p1

    mul-float/2addr v0, p1

    return v0
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 1

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/util/interpolator/QuintEaseIn;->in(F)F

    move-result v0

    return v0
.end method
