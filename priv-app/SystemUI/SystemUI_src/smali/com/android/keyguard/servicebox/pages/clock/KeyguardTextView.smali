.class public Lcom/android/keyguard/servicebox/pages/clock/KeyguardTextView;
.super Landroid/widget/TextView;
.source "KeyguardTextView.java"


# static fields
.field protected static mContext:Landroid/content/Context;


# instance fields
.field private mFontScale:F

.field private mOriginalFontSize:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardTextView;->mFontScale:F

    sput-object p1, Lcom/android/keyguard/servicebox/pages/clock/KeyguardTextView;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardTextView;->mFontScale:F

    sput-object p1, Lcom/android/keyguard/servicebox/pages/clock/KeyguardTextView;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardTextView;->mFontScale:F

    sput-object p1, Lcom/android/keyguard/servicebox/pages/clock/KeyguardTextView;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardTextView;->mFontScale:F

    sput-object p1, Lcom/android/keyguard/servicebox/pages/clock/KeyguardTextView;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static getFontScaleInKeyguardBoundary(F)F
    .locals 3

    const v0, 0x3f8ccccd    # 1.1f

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {}, Lcom/android/keyguard/util/KeyguardStatusUtils;->isCovered()Z

    move-result v2

    if-nez v2, :cond_0

    :cond_0
    move p0, v1

    :cond_1
    :goto_0
    return p0

    cmpl-float v2, p0, v0

    if-lez v2, :cond_2

    move p0, v0

    goto :goto_0

    :cond_2
    cmpg-float v0, p0, v1

    if-gez v0, :cond_1

    move p0, v1

    goto :goto_0
.end method


# virtual methods
.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/TextView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget v0, p1, Landroid/content/res/Configuration;->fontScale:F

    invoke-virtual {p0, v0}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardTextView;->updateFontSizeInKeyguardBoundary(F)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    invoke-super {p0}, Landroid/widget/TextView;->onFinishInflate()V

    invoke-virtual {p0}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardTextView;->getTextSize()F

    move-result v0

    iput v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardTextView;->mOriginalFontSize:F

    invoke-virtual {p0}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->fontScale:F

    invoke-virtual {p0, v0}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardTextView;->updateFontSizeInKeyguardBoundary(F)V

    return-void
.end method

.method protected updateFontSizeInKeyguardBoundary(F)V
    .locals 4

    invoke-static {p1}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardTextView;->getFontScaleInKeyguardBoundary(F)F

    move-result v0

    iget v1, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardTextView;->mFontScale:F

    invoke-static {v1, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_0

    iput v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardTextView;->mFontScale:F

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardTextView;->mOriginalFontSize:F

    iget v3, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardTextView;->mFontScale:F

    mul-float/2addr v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardTextView;->setTextSize(IF)V

    :cond_0
    return-void
.end method
