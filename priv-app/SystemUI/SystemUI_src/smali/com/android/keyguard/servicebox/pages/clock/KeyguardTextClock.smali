.class public Lcom/android/keyguard/servicebox/pages/clock/KeyguardTextClock;
.super Landroid/widget/TextClock;
.source "KeyguardTextClock.java"


# instance fields
.field private mFontScale:F

.field private mIsAmPm:Z

.field private mLocale:Ljava/util/Locale;

.field private mOriginalFontSize:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardTextClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardTextClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardTextClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/TextClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardTextClock;->mFontScale:F

    iput-boolean v2, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardTextClock;->mIsAmPm:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardTextClock;->mLocale:Ljava/util/Locale;

    sget-object v1, Lcom/android/keyguard/R$styleable;->KeyguardTextClock:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    :try_start_0
    sget v1, Lcom/android/keyguard/R$styleable;->KeyguardTextClock_isAmPm:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardTextClock;->mIsAmPm:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v1
.end method

.method private updateFontSizeInKeyguardBoundary(F)V
    .locals 4

    invoke-static {p1}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardTextView;->getFontScaleInKeyguardBoundary(F)F

    move-result v0

    iget v1, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardTextClock;->mFontScale:F

    invoke-static {v1, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_0

    iput v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardTextClock;->mFontScale:F

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardTextClock;->mOriginalFontSize:F

    iget v3, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardTextClock;->mFontScale:F

    mul-float/2addr v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardTextClock;->setTextSize(IF)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/widget/TextClock;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardTextClock;->mLocale:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardTextClock;->mLocale:Ljava/util/Locale;

    iget-boolean v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardTextClock;->mIsAmPm:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardTextClock;->getFormat12Hour()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardTextClock;->setFormat12Hour(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardTextClock;->getFormat24Hour()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardTextClock;->setFormat24Hour(Ljava/lang/CharSequence;)V

    :cond_0
    :goto_0
    iget v0, p1, Landroid/content/res/Configuration;->fontScale:F

    invoke-direct {p0, v0}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardTextClock;->updateFontSizeInKeyguardBoundary(F)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardTextClock;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/keyguard/R$string;->status_view_12_hours_format:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardTextClock;->setFormat12Hour(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardTextClock;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/keyguard/R$string;->status_view_24_hours_format:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardTextClock;->setFormat24Hour(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 1

    invoke-super {p0}, Landroid/widget/TextClock;->onFinishInflate()V

    invoke-virtual {p0}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardTextClock;->getTextSize()F

    move-result v0

    iput v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardTextClock;->mOriginalFontSize:F

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardTextClock;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardTextClock;->mLocale:Ljava/util/Locale;

    invoke-virtual {p0}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardTextClock;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->fontScale:F

    invoke-direct {p0, v0}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardTextClock;->updateFontSizeInKeyguardBoundary(F)V

    return-void
.end method
