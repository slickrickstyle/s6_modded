.class public Lcom/android/keyguard/servicebox/pages/clock/SecKeyguardClockSingleView;
.super Landroid/widget/FrameLayout;
.source "SecKeyguardClockSingleView.java"

# interfaces
.implements Lcom/android/wubydax/GearContentObserver$OnContentChangedListener;
.implements Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockBase;


# instance fields
.field private AndroidClock:Landroid/graphics/Typeface;

.field private AndroidClock_Highlight:Landroid/graphics/Typeface;

.field private AndroidClock_Solid:Landroid/graphics/Typeface;

.field private Archibald:Landroid/graphics/Typeface;

.field private CaviarDreams:Landroid/graphics/Typeface;

.field private Chococooky:Landroid/graphics/Typeface;

.field private CoolJazz:Landroid/graphics/Typeface;

.field private CutiveMono:Landroid/graphics/Typeface;

.field private Rosemary:Landroid/graphics/Typeface;

.field private Ultima:Landroid/graphics/Typeface;

.field private mBackground:Landroid/widget/ImageView;

.field private mClockHoursColor:I

.field private mClockMinutesColor:I

.field protected mClockScale:F

.field protected mClockScaleDate:F

.field protected mClockScaleSec:F

.field private mClockTypeface:Landroid/graphics/Typeface;

.field private mDateColor:I

.field private mGearContentObserver:Lcom/android/wubydax/GearContentObserver;

.field private final mHandler:Landroid/os/Handler;

.field protected mHoursTime:Lcom/android/keyguard/servicebox/pages/clock/KeyguardTextClock;

.field private final mIsSameColor:Z

.field protected mMinutesTime:Lcom/android/keyguard/servicebox/pages/clock/KeyguardTextClock;

.field private mSecondsTextColor:I

.field protected mSecondsTime:Lcom/android/keyguard/servicebox/pages/clock/KeyguardTextClock;

.field private mSingleDate:Lcom/android/keyguard/servicebox/pages/clock/KeyguardDateView;

.field private mSingleTime:Landroid/widget/TextClock;

.field private mToggleTextColor:I

.field private final mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mUseBlackTextOnWhiteCoverWallpaper:Z

.field private mUseBlackTextOnWhiteWallpaper:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/servicebox/pages/clock/SecKeyguardClockSingleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/keyguard/servicebox/pages/clock/SecKeyguardClockSingleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-boolean v0, p0, Lcom/android/keyguard/servicebox/pages/clock/SecKeyguardClockSingleView;->mUseBlackTextOnWhiteWallpaper:Z

    iput-boolean v0, p0, Lcom/android/keyguard/servicebox/pages/clock/SecKeyguardClockSingleView;->mUseBlackTextOnWhiteCoverWallpaper:Z

    new-instance v0, Lcom/android/keyguard/servicebox/pages/clock/SecKeyguardClockSingleView$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/servicebox/pages/clock/SecKeyguardClockSingleView$1;-><init>(Lcom/android/keyguard/servicebox/pages/clock/SecKeyguardClockSingleView;)V

    iput-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/SecKeyguardClockSingleView;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/keyguard/servicebox/pages/clock/SecKeyguardClockSingleView$2;

    invoke-direct {v0, p0}, Lcom/android/keyguard/servicebox/pages/clock/SecKeyguardClockSingleView$2;-><init>(Lcom/android/keyguard/servicebox/pages/clock/SecKeyguardClockSingleView;)V

    iput-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/SecKeyguardClockSingleView;->mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/clock/SecKeyguardClockSingleView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v2, "AndroidClock.ttf"

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/servicebox/pages/clock/SecKeyguardClockSingleView;->AndroidClock:Landroid/graphics/Typeface;

    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/clock/SecKeyguardClockSingleView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v2, "AndroidClock_Highlight.ttf"

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/servicebox/pages/clock/SecKeyguardClockSingleView;->AndroidClock_Highlight:Landroid/graphics/Typeface;

    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/clock/SecKeyguardClockSingleView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v2, "AndroidClock_Solid.ttf"

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/servicebox/pages/clock/SecKeyguardClockSingleView;->AndroidClock_Solid:Landroid/graphics/Typeface;

    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/clock/SecKeyguardClockSingleView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v2, "Archibald.ttf"

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/servicebox/pages/clock/SecKeyguardClockSingleView;->Archibald:Landroid/graphics/Typeface;

    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/clock/SecKeyguardClockSingleView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v2, "CaviarDreams.ttf"

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/servicebox/pages/clock/SecKeyguardClockSingleView;->CaviarDreams:Landroid/graphics/Typeface;

    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/clock/SecKeyguardClockSingleView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v2, "Chococooky.LS.ttf"

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/servicebox/pages/clock/SecKeyguardClockSingleView;->Chococooky:Landroid/graphics/Typeface;

    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/clock/SecKeyguardClockSingleView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v2, "CutiveMono.ttf"

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/servicebox/pages/clock/SecKeyguardClockSingleView;->CutiveMono:Landroid/graphics/Typeface;

    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/clock/SecKeyguardClockSingleView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v2, "CoolJazz.LS.ttf"

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/servicebox/pages/clock/SecKeyguardClockSingleView;->CoolJazz:Landroid/graphics/Typeface;

    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/clock/SecKeyguardClockSingleView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v2, "Rosemary.ttf"

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/servicebox/pages/clock/SecKeyguardClockSingleView;->Rosemary:Landroid/graphics/Typeface;

    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/clock/SecKeyguardClockSingleView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v2, "Ultima.ttf"

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/servicebox/pages/clock/SecKeyguardClockSingleView;->Ultima:Landroid/graphics/Typeface;

    invoke-virtual {p0}, Lcom/android/keyguard/servicebox/pages/clock/SecKeyguardClockSingleView;->setGlobalColorToggle()V

    invoke-direct {p0}, Lcom/android/keyguard/servicebox/pages/clock/SecKeyguardClockSingleView;->registerGearObserver()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/servicebox/pages/clock/SecKeyguardClockSingleView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/servicebox/pages/clock/SecKeyguardClockSingleView;->setClockStyle()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/keyguard/servicebox/pages/clock/SecKeyguardClockSingleView;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/keyguard/servicebox/pages/clock/SecKeyguardClockSingleView;->sendMsgUpdateClock(Z)V

    return-void
.end method

.method static synthetic access$202(Lcom/android/keyguard/servicebox/pages/clock/SecKeyguardClockSingleView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/keyguard/servicebox/pages/clock/SecKeyguardClockSingleView;->mUseBlackTextOnWhiteWallpaper:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/keyguard/servicebox/pages/clock/SecKeyguardClockSingleView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/SecKeyguardClockSingleView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/keyguard/servicebox/pages/clock/SecKeyguardClockSingleView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/keyguard/servicebox/pages/clock/SecKeyguardClockSingleView;->mUseBlackTextOnWhiteCoverWallpaper:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/keyguard/servicebox/pages/clock/SecKeyguardClockSingleView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/SecKeyguardClockSingleView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/keyguard/servicebox/pages/clock/SecKeyguardClockSingleView;)V
    .locals 0

    return-void
.end method

.method private applyFontEffect()V
    .locals 4

    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/clock/SecKeyguardClockSingleView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$string;->theme_clockfont_effect_type:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "SecKeyguardClockSingleView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "font effect info: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/clock/SecKeyguardClockSingleView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/util/FontEffectUtil;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/FontEffectUtil;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/keyguard/util/FontEffectUtil;->parsingFontEffectString(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/clock/SecKeyguardClockSingleView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/util/FontEffectUtil;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/FontEffectUtil;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/servicebox/pages/clock/SecKeyguardClockSingleView;->mSingleTime:Landroid/widget/TextClock;

    invoke-virtual {v1, v2}, Lcom/android/keyguard/util/FontEffectUtil;->setTextFontEffect(Landroid/widget/TextView;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "SecKeyguardClockSingleView"

    const-string v2, "font effect info: null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private changeTextColorOnWhiteWallpaper()V
    .locals 5

    iget-boolean v2, p0, Lcom/android/keyguard/servicebox/pages/clock/SecKeyguardClockSingleView;->mUseBlackTextOnWhiteWallpaper:Z

    if-nez v2, :cond_0

    invoke-static {}, Lcom/android/keyguard/util/KeyguardStatusUtils;->isCovered()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/keyguard/servicebox/pages/clock/SecKeyguardClockSingleView;->mUseBlackTextOnWhiteCoverWallpaper:Z

    if-eqz v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    iget-object v2, p0, Lcom/android/keyguard/servicebox/pages/clock/SecKeyguardClockSingleView;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/keyguard/servicebox/pages/clock/SecKeyguardClockSingleView;->mSingleDate:Lcom/android/keyguard/servicebox/pages/clock/KeyguardDateView;

    sget v4, Lcom/android/keyguard/R$color;->theme_clock_date_color:I

    iget-object v2, p0, Lcom/android/keyguard/servicebox/pages/clock/SecKeyguardClockSingleView;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/keyguard/servicebox/pages/clock/SecKeyguardClockSingleView;->mHoursTime:Lcom/android/keyguard/servicebox/pages/clock/KeyguardTextClock;

    sget v4, Lcom/android/keyguard/R$color;->theme_textclock_color:I

    iget-object v2, p0, Lcom/android/keyguard/servicebox/pages/clock/SecKeyguardClockSingleView;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/keyguard/servicebox/pages/clock/SecKeyguardClockSingleView;->mMinutesTime:Lcom/android/keyguard/servicebox/pages/clock/KeyguardTextClock;

    sget v4, Lcom/android/keyguard/R$color;->theme_textclock_color:I

    iget-object v2, p0, Lcom/android/keyguard/servicebox/pages/clock/SecKeyguardClockSingleView;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/keyguard/servicebox/pages/clock/SecKeyguardClockSingleView;->mSecondsTime:Lcom/android/keyguard/servicebox/pages/clock/KeyguardTextClock;

    sget v4, Lcom/android/keyguard/R$color;->theme_textclock_color:I

    return-void

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private registerGearObserver()V
    .locals 7

    new-instance v3, Lcom/android/wubydax/GearContentObserver;

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    invoke-direct {v3, v4, p0}, Lcom/android/wubydax/GearContentObserver;-><init>(Landroid/os/Handler;Lcom/android/wubydax/GearContentObserver$OnContentChangedListener;)V

    iput-object v3, p0, Lcom/android/keyguard/servicebox/pages/clock/SecKeyguardClockSingleView;->mGearContentObserver:Lcom/android/wubydax/GearContentObserver;

    iget-object v3, p0, Lcom/android/keyguard/servicebox/pages/clock/SecKeyguardClockSingleView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v3, "lock_seconds"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v3, "kg_date_color"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v3, "kg_clock_global_toggle"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v3, "kg_clock_global_color"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v3, "kg_clock_global_color"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v3, "kg_clock_hours_color"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v3, "kg_clock_minutes_color"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v3, "kg_clock_seconds_color"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v3, "use_lockscreen_clock_font_style"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v3, "lockscreen_clock_font_style"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v3, "lockscreen_clock_scale"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v3, "seconds_clock_scale"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v3, "date_clock_scale"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/keyguard/servicebox/pages/clock/SecKeyguardClockSingleView;->mGearContentObserver:Lcom/android/wubydax/GearContentObserver;

    invoke-virtual {v1, v4, v5, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private sendMsgUpdateClock(Z)V
    .locals 2

    const/16 v1, 0x67

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/SecKeyguardClockSingleView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/SecKeyguardClockSingleView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/android/keyguard/servicebox/pages/clock/SecKeyguardClockSingleView;->setClockStyle()V

    invoke-virtual {p0}, Lcom/android/keyguard/servicebox/pages/clock/SecKeyguardClockSingleView;->ClockSeconds()V

    invoke-virtual {p0}, Lcom/android/keyguard/servicebox/pages/clock/SecKeyguardClockSingleView;->setFontStyle()V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/SecKeyguardClockSingleView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method private setClockStyle()V
    .locals 5

    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/clock/SecKeyguardClockSingleView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lockscreen_clock_scale"

    const v3, 0x13

    const/4 v4, -0x2

    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcom/android/keyguard/servicebox/pages/clock/SecKeyguardClockSingleView;->mClockScale:F

    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/clock/SecKeyguardClockSingleView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "seconds_clock_scale"

    const v3, 0x13

    const/4 v4, -0x2

    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcom/android/keyguard/servicebox/pages/clock/SecKeyguardClockSingleView;->mClockScaleSec:F

    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/clock/SecKeyguardClockSingleView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "date_clock_scale"

    const v3, 0x13

    const/4 v4, -0x2

    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcom/android/keyguard/servicebox/pages/clock/SecKeyguardClockSingleView;->mClockScaleDate:F

    iget-object v2, p0, Lcom/android/keyguard/servicebox/pages/clock/SecKeyguardClockSingleView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/util/KeyguardSettingsHelper;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/KeyguardSettingsHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/keyguard/util/KeyguardSettingsHelper;->getOpenThemeClockFont()Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    if-eqz v1, :cond_3

    const-string v2, "SecKeyguardClockSingleView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "clockThemeFont: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v1}, Lcom/android/keyguard/util/KeyguardStatusUtils;->getFontTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/android/keyguard/servicebox/pages/clock/SecKeyguardClockSingleView;->mSingleTime:Landroid/widget/TextClock;

    invoke-virtual {v2, v0}, Landroid/widget/TextClock;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/clock/SecKeyguardClockSingleView;->mSingleDate:Lcom/android/keyguard/servicebox/pages/clock/KeyguardDateView;

    invoke-virtual {v1, v0}, Landroid/widget/TextClock;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v2, p0, Lcom/android/keyguard/servicebox/pages/clock/SecKeyguardClockSingleView;->mHoursTime:Lcom/android/keyguard/servicebox/pages/clock/KeyguardTextClock;

    invoke-virtual {v2, v0}, Landroid/widget/TextClock;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v3, p0, Lcom/android/keyguard/servicebox/pages/clock/SecKeyguardClockSingleView;->mMinutesTime:Lcom/android/keyguard/servicebox/pages/clock/KeyguardTextClock;

    invoke-virtual {v3, v0}, Landroid/widget/TextClock;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v4, p0, Lcom/android/keyguard/servicebox/pages/clock/SecKeyguardClockSingleView;->mSecondsTime:Lcom/android/keyguard/servicebox/pages/clock/KeyguardTextClock;

    invoke-virtual {v4, v0}, Landroid/widget/TextClock;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-virtual {p0}, Lcom/android/keyguard/servicebox/pages/clock/SecKeyguardClockSingleView;->setFontStyle()V

    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/clock/SecKeyguardClockSingleView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "theme_override"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_1

    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/clock/SecKeyguardClockSingleView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "scaling_toggle"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/clock/SecKeyguardClockSingleView;->mSecondsTime:Lcom/android/keyguard/servicebox/pages/clock/KeyguardTextClock;

    iget v2, p0, Lcom/android/keyguard/servicebox/pages/clock/SecKeyguardClockSingleView;->mClockScaleSec:F

    invoke-virtual {v1, v3, v2}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardTextClock;->setTextSize(IF)V

    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/clock/SecKeyguardClockSingleView;->mSingleDate:Lcom/android/keyguard/servicebox/pages/clock/KeyguardDateView;

    iget v2, p0, Lcom/android/keyguard/servicebox/pages/clock/SecKeyguardClockSingleView;->mClockScaleDate:F

    invoke-virtual {v1, v3, v2}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDateView;->setTextSize(IF)V

    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/clock/SecKeyguardClockSingleView;->mHoursTime:Lcom/android/keyguard/servicebox/pages/clock/KeyguardTextClock;

    iget v2, p0, Lcom/android/keyguard/servicebox/pages/clock/SecKeyguardClockSingleView;->mClockScale:F

    invoke-virtual {v1, v3, v2}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardTextClock;->setTextSize(IF)V

    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/clock/SecKeyguardClockSingleView;->mMinutesTime:Lcom/android/keyguard/servicebox/pages/clock/KeyguardTextClock;

    iget v2, p0, Lcom/android/keyguard/servicebox/pages/clock/SecKeyguardClockSingleView;->mClockScale:F

    invoke-virtual {v1, v3, v2}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardTextClock;->setTextSize(IF)V

    :cond_2
    invoke-virtual {p0}, Lcom/android/keyguard/servicebox/pages/clock/SecKeyguardClockSingleView;->setFontStyle()V

    return-void

    :cond_3
    sget v0, Lcom/android/keyguard/R$id;->keyguard_sec_clock_single_background:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/servicebox/pages/clock/SecKeyguardClockSingleView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/SecKeyguardClockSingleView;->mBackground:Landroid/widget/ImageView;

    const-string v0, "/system/fonts/Clock2017.ttf"

    invoke-static {v0}, Lcom/android/keyguard/util/KeyguardStatusUtils;->getFontTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/SecKeyguardClockSingleView;->mClockTypeface:Landroid/graphics/Typeface;

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/SecKeyguardClockSingleView;->mClockTypeface:Landroid/graphics/Typeface;

    goto :goto_0
.end method


# virtual methods
.method ClockSeconds()V
    .locals 5

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/SecKeyguardClockSingleView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lock_seconds"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    const v2, 0x8

    sget v3, Lcom/android/keyguard/R$id;->keyguard_single_clock_seconds:I

    invoke-virtual {p0, v3}, Lcom/android/keyguard/servicebox/pages/clock/SecKeyguardClockSingleView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardTextClock;->setVisibility(I)V

    goto/16 :goto_0

    :cond_0
    const v2, 0x3

    sget v3, Lcom/android/keyguard/R$id;->keyguard_single_clock_seconds:I

    invoke-virtual {p0, v3}, Lcom/android/keyguard/servicebox/pages/clock/SecKeyguardClockSingleView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardTextClock;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/SecKeyguardClockSingleView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/clock/SecKeyguardClockSingleView;->mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    return-void
.end method

.method public onContentChanged(Ljava/lang/String;)V
    .locals 1

    const-string v0, "lock_seconds"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object/from16 v0, p0

    invoke-virtual {p0}, Lcom/android/keyguard/servicebox/pages/clock/SecKeyguardClockSingleView;->ClockSeconds()V

    :cond_0
    const-string v0, "kg_date_color"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object/from16 v0, p0

    invoke-virtual {p0}, Lcom/android/keyguard/servicebox/pages/clock/SecKeyguardClockSingleView;->setDateColor()V

    invoke-virtual {p0}, Lcom/android/keyguard/servicebox/pages/clock/SecKeyguardClockSingleView;->onFinishInflate()V

    :cond_1
    const-string v0, "kg_clock_global_toggle"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move-object/from16 v0, p0

    invoke-virtual {p0}, Lcom/android/keyguard/servicebox/pages/clock/SecKeyguardClockSingleView;->setGlobalColorToggle()V

    invoke-virtual {p0}, Lcom/android/keyguard/servicebox/pages/clock/SecKeyguardClockSingleView;->onFinishInflate()V

    :cond_2
    const-string v0, "kg_clock_global_color"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move-object/from16 v0, p0

    invoke-virtual {p0}, Lcom/android/keyguard/servicebox/pages/clock/SecKeyguardClockSingleView;->setSameTextColor()V

    invoke-virtual {p0}, Lcom/android/keyguard/servicebox/pages/clock/SecKeyguardClockSingleView;->onFinishInflate()V

    :cond_3
    const-string v0, "kg_clock_hours_color"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    move-object/from16 v0, p0

    invoke-virtual {p0}, Lcom/android/keyguard/servicebox/pages/clock/SecKeyguardClockSingleView;->setLockScreenColors()V

    invoke-virtual {p0}, Lcom/android/keyguard/servicebox/pages/clock/SecKeyguardClockSingleView;->onFinishInflate()V

    :cond_4
    const-string v0, "kg_clock_minutes_color"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    move-object/from16 v0, p0

    invoke-virtual {p0}, Lcom/android/keyguard/servicebox/pages/clock/SecKeyguardClockSingleView;->setLockScreenColors()V

    invoke-virtual {p0}, Lcom/android/keyguard/servicebox/pages/clock/SecKeyguardClockSingleView;->onFinishInflate()V

    :cond_5
    const-string v0, "kg_clock_seconds_color"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    move-object/from16 v0, p0

    invoke-virtual {p0}, Lcom/android/keyguard/servicebox/pages/clock/SecKeyguardClockSingleView;->setLockScreenColors()V

    invoke-virtual {p0}, Lcom/android/keyguard/servicebox/pages/clock/SecKeyguardClockSingleView;->onFinishInflate()V

    :cond_6
    const-string v0, "use_lockscreen_clock_font_style"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    move-object/from16 v0, p0

    invoke-virtual {p0}, Lcom/android/keyguard/servicebox/pages/clock/SecKeyguardClockSingleView;->setFontStyle()V

    invoke-direct {p0}, Lcom/android/keyguard/servicebox/pages/clock/SecKeyguardClockSingleView;->setClockStyle()V

    :cond_7
    const-string v0, "lockscreen_clock_font_style"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    move-object/from16 v0, p0

    invoke-virtual {p0}, Lcom/android/keyguard/servicebox/pages/clock/SecKeyguardClockSingleView;->setFontStyle()V

    :cond_8
    const-string v0, "lockscreen_clock_scale"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    move-object/from16 v0, p0

    invoke-direct {p0}, Lcom/android/keyguard/servicebox/pages/clock/SecKeyguardClockSingleView;->setClockStyle()V

    :cond_9
    const-string v0, "seconds_clock_scale"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    move-object/from16 v0, p0

    invoke-direct {p0}, Lcom/android/keyguard/servicebox/pages/clock/SecKeyguardClockSingleView;->setClockStyle()V

    :cond_a
    const-string v0, "date_clock_scale"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    move-object/from16 v0, p0

    invoke-direct {p0}, Lcom/android/keyguard/servicebox/pages/clock/SecKeyguardClockSingleView;->setClockStyle()V

    :cond_b
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/SecKeyguardClockSingleView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/clock/SecKeyguardClockSingleView;->mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/SecKeyguardClockSingleView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/clock/SecKeyguardClockSingleView;->mGearContentObserver:Lcom/android/wubydax/GearContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 4

    const/4 v2, 0x1

    sget v0, Lcom/android/keyguard/R$id;->keyguard_single_clock_time:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/servicebox/pages/clock/SecKeyguardClockSingleView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextClock;

    iput-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/SecKeyguardClockSingleView;->mSingleTime:Landroid/widget/TextClock;

    sget v0, Lcom/android/keyguard/R$id;->mMinutesTime:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/servicebox/pages/clock/SecKeyguardClockSingleView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardTextClock;

    iput-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/SecKeyguardClockSingleView;->mMinutesTime:Lcom/android/keyguard/servicebox/pages/clock/KeyguardTextClock;

    invoke-virtual {p0}, Lcom/android/keyguard/servicebox/pages/clock/SecKeyguardClockSingleView;->setLockScreenColors()V

    iget v3, p0, Lcom/android/keyguard/servicebox/pages/clock/SecKeyguardClockSingleView;->mClockMinutesColor:I

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-boolean v3, p0, Lcom/android/keyguard/servicebox/pages/clock/SecKeyguardClockSingleView;->mIsSameColor:Z

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/android/keyguard/servicebox/pages/clock/SecKeyguardClockSingleView;->setSameTextColor()V

    iget v3, p0, Lcom/android/keyguard/servicebox/pages/clock/SecKeyguardClockSingleView;->mToggleTextColor:I

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    sget v0, Lcom/android/keyguard/R$id;->mHoursTime:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/servicebox/pages/clock/SecKeyguardClockSingleView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardTextClock;

    iput-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/SecKeyguardClockSingleView;->mHoursTime:Lcom/android/keyguard/servicebox/pages/clock/KeyguardTextClock;

    invoke-virtual {p0}, Lcom/android/keyguard/servicebox/pages/clock/SecKeyguardClockSingleView;->setLockScreenColors()V

    iget v3, p0, Lcom/android/keyguard/servicebox/pages/clock/SecKeyguardClockSingleView;->mClockHoursColor:I

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-boolean v3, p0, Lcom/android/keyguard/servicebox/pages/clock/SecKeyguardClockSingleView;->mIsSameColor:Z

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/android/keyguard/servicebox/pages/clock/SecKeyguardClockSingleView;->setSameTextColor()V

    iget v3, p0, Lcom/android/keyguard/servicebox/pages/clock/SecKeyguardClockSingleView;->mToggleTextColor:I

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1
    sget v0, Lcom/android/keyguard/R$id;->keyguard_single_clock_seconds:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/servicebox/pages/clock/SecKeyguardClockSingleView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardTextClock;

    iput-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/SecKeyguardClockSingleView;->mSecondsTime:Lcom/android/keyguard/servicebox/pages/clock/KeyguardTextClock;

    invoke-virtual {p0}, Lcom/android/keyguard/servicebox/pages/clock/SecKeyguardClockSingleView;->setLockScreenColors()V

    iget v3, p0, Lcom/android/keyguard/servicebox/pages/clock/SecKeyguardClockSingleView;->mSecondsTextColor:I

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-boolean v3, p0, Lcom/android/keyguard/servicebox/pages/clock/SecKeyguardClockSingleView;->mIsSameColor:Z

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/android/keyguard/servicebox/pages/clock/SecKeyguardClockSingleView;->setSameTextColor()V

    iget v3, p0, Lcom/android/keyguard/servicebox/pages/clock/SecKeyguardClockSingleView;->mToggleTextColor:I

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_2
    sget v0, Lcom/android/keyguard/R$id;->keyguard_single_clock_date:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/servicebox/pages/clock/SecKeyguardClockSingleView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDateView;

    iput-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/SecKeyguardClockSingleView;->mSingleDate:Lcom/android/keyguard/servicebox/pages/clock/KeyguardDateView;

    invoke-virtual {p0}, Lcom/android/keyguard/servicebox/pages/clock/SecKeyguardClockSingleView;->setDateColor()V

    iget v3, p0, Lcom/android/keyguard/servicebox/pages/clock/SecKeyguardClockSingleView;->mDateColor:I

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-boolean v3, p0, Lcom/android/keyguard/servicebox/pages/clock/SecKeyguardClockSingleView;->mIsSameColor:Z

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lcom/android/keyguard/servicebox/pages/clock/SecKeyguardClockSingleView;->setSameTextColor()V

    iget v3, p0, Lcom/android/keyguard/servicebox/pages/clock/SecKeyguardClockSingleView;->mToggleTextColor:I

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_3
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/SecKeyguardClockSingleView;->mSingleTime:Landroid/widget/TextClock;

    invoke-virtual {v0, v2}, Landroid/widget/TextClock;->setShowCurrentUserTime(Z)V

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/SecKeyguardClockSingleView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/util/KeyguardSettingsHelper;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/KeyguardSettingsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/util/KeyguardSettingsHelper;->isWhiteKeyguardWallpaper()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/keyguard/servicebox/pages/clock/SecKeyguardClockSingleView;->mUseBlackTextOnWhiteWallpaper:Z

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/SecKeyguardClockSingleView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/util/KeyguardSettingsHelper;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/KeyguardSettingsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/util/KeyguardSettingsHelper;->isWhiteCoverWallpaper()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/keyguard/servicebox/pages/clock/SecKeyguardClockSingleView;->mUseBlackTextOnWhiteCoverWallpaper:Z

    invoke-direct {p0}, Lcom/android/keyguard/servicebox/pages/clock/SecKeyguardClockSingleView;->applyFontEffect()V

    const-string v0, "iw"

    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/clock/SecKeyguardClockSingleView;->mContext:Landroid/content/Context;

    invoke-direct {p0, v2}, Lcom/android/keyguard/servicebox/pages/clock/SecKeyguardClockSingleView;->sendMsgUpdateClock(Z)V

    return-void
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/SecKeyguardClockSingleView;->mBackground:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method setDateColor()V
    .locals 3

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/SecKeyguardClockSingleView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "kg_date_color"

    const v2, -0x4995

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/servicebox/pages/clock/SecKeyguardClockSingleView;->mDateColor:I

    return-void
.end method

.method setFontHours()V
    .locals 4

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/SecKeyguardClockSingleView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "use_lockscreen_clock_font_style"

    const v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v3, p0, Lcom/android/keyguard/servicebox/pages/clock/SecKeyguardClockSingleView;->mHoursTime:Lcom/android/keyguard/servicebox/pages/clock/KeyguardTextClock;

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/SecKeyguardClockSingleView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lockscreen_clock_font_style"

    const v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const v1, 0x1

    if-eq v0, v1, :cond_1

    const v1, 0x2

    if-eq v0, v1, :cond_2

    const v1, 0x3

    if-eq v0, v1, :cond_3

    const v1, 0x4

    if-eq v0, v1, :cond_4

    const v1, 0x5

    if-eq v0, v1, :cond_5

    const v1, 0x6

    if-eq v0, v1, :cond_6

    const v1, 0x7

    if-eq v0, v1, :cond_7

    const v1, 0x8

    if-eq v0, v1, :cond_8

    const v1, 0x9

    if-eq v0, v1, :cond_9

    const v1, 0xa

    if-eq v0, v1, :cond_a

    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/clock/SecKeyguardClockSingleView;->mClockTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v3, v1}, Landroid/widget/TextClock;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/clock/SecKeyguardClockSingleView;->AndroidClock:Landroid/graphics/Typeface;

    invoke-virtual {v3, v1}, Landroid/widget/TextClock;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/clock/SecKeyguardClockSingleView;->AndroidClock_Highlight:Landroid/graphics/Typeface;

    invoke-virtual {v3, v1}, Landroid/widget/TextClock;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/clock/SecKeyguardClockSingleView;->AndroidClock_Solid:Landroid/graphics/Typeface;

    invoke-virtual {v3, v1}, Landroid/widget/TextClock;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/clock/SecKeyguardClockSingleView;->Archibald:Landroid/graphics/Typeface;

    invoke-virtual {v3, v1}, Landroid/widget/TextClock;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/clock/SecKeyguardClockSingleView;->CaviarDreams:Landroid/graphics/Typeface;

    invoke-virtual {v3, v1}, Landroid/widget/TextClock;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_0

    :cond_6
    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/clock/SecKeyguardClockSingleView;->Chococooky:Landroid/graphics/Typeface;

    invoke-virtual {v3, v1}, Landroid/widget/TextClock;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_0

    :cond_7
    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/clock/SecKeyguardClockSingleView;->CutiveMono:Landroid/graphics/Typeface;

    invoke-virtual {v3, v1}, Landroid/widget/TextClock;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_0

    :cond_8
    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/clock/SecKeyguardClockSingleView;->CoolJazz:Landroid/graphics/Typeface;

    invoke-virtual {v3, v1}, Landroid/widget/TextClock;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_0

    :cond_9
    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/clock/SecKeyguardClockSingleView;->Rosemary:Landroid/graphics/Typeface;

    invoke-virtual {v3, v1}, Landroid/widget/TextClock;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_0

    :cond_a
    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/clock/SecKeyguardClockSingleView;->Ultima:Landroid/graphics/Typeface;

    invoke-virtual {v3, v1}, Landroid/widget/TextClock;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_0

    :goto_0
    return-void
.end method

.method setFontStyle()V
    .locals 7

    iget-object v3, p0, Lcom/android/keyguard/servicebox/pages/clock/SecKeyguardClockSingleView;->mSingleDate:Lcom/android/keyguard/servicebox/pages/clock/KeyguardDateView;

    iget-object v4, p0, Lcom/android/keyguard/servicebox/pages/clock/SecKeyguardClockSingleView;->mHoursTime:Lcom/android/keyguard/servicebox/pages/clock/KeyguardTextClock;

    iget-object v5, p0, Lcom/android/keyguard/servicebox/pages/clock/SecKeyguardClockSingleView;->mMinutesTime:Lcom/android/keyguard/servicebox/pages/clock/KeyguardTextClock;

    iget-object v6, p0, Lcom/android/keyguard/servicebox/pages/clock/SecKeyguardClockSingleView;->mSecondsTime:Lcom/android/keyguard/servicebox/pages/clock/KeyguardTextClock;

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/SecKeyguardClockSingleView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lockscreen_clock_font_style"

    const v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const v1, 0x1

    if-eq v0, v1, :cond_0

    const v1, 0x2

    if-eq v0, v1, :cond_1

    const v1, 0x3

    if-eq v0, v1, :cond_2

    const v1, 0x4

    if-eq v0, v1, :cond_3

    const v1, 0x5

    if-eq v0, v1, :cond_4

    const v1, 0x6

    if-eq v0, v1, :cond_5

    const v1, 0x7

    if-eq v0, v1, :cond_6

    const v1, 0x8

    if-eq v0, v1, :cond_7

    const v1, 0x9

    if-eq v0, v1, :cond_8

    const v1, 0xa

    if-eq v0, v1, :cond_9

    goto/16 :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/clock/SecKeyguardClockSingleView;->AndroidClock:Landroid/graphics/Typeface;

    invoke-virtual {v3, v1}, Landroid/widget/TextClock;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-virtual {v4, v1}, Landroid/widget/TextClock;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-virtual {v5, v1}, Landroid/widget/TextClock;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-virtual {v6, v1}, Landroid/widget/TextClock;->setTypeface(Landroid/graphics/Typeface;)V

    goto/16 :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/clock/SecKeyguardClockSingleView;->AndroidClock_Highlight:Landroid/graphics/Typeface;

    invoke-virtual {v3, v1}, Landroid/widget/TextClock;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-virtual {v4, v1}, Landroid/widget/TextClock;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-virtual {v5, v1}, Landroid/widget/TextClock;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-virtual {v6, v1}, Landroid/widget/TextClock;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/clock/SecKeyguardClockSingleView;->AndroidClock_Solid:Landroid/graphics/Typeface;

    invoke-virtual {v3, v1}, Landroid/widget/TextClock;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-virtual {v4, v1}, Landroid/widget/TextClock;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-virtual {v5, v1}, Landroid/widget/TextClock;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-virtual {v6, v1}, Landroid/widget/TextClock;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/clock/SecKeyguardClockSingleView;->Archibald:Landroid/graphics/Typeface;

    invoke-virtual {v3, v1}, Landroid/widget/TextClock;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-virtual {v4, v1}, Landroid/widget/TextClock;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-virtual {v5, v1}, Landroid/widget/TextClock;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-virtual {v6, v1}, Landroid/widget/TextClock;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/clock/SecKeyguardClockSingleView;->CaviarDreams:Landroid/graphics/Typeface;

    invoke-virtual {v3, v1}, Landroid/widget/TextClock;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-virtual {v4, v1}, Landroid/widget/TextClock;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-virtual {v5, v1}, Landroid/widget/TextClock;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-virtual {v6, v1}, Landroid/widget/TextClock;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/clock/SecKeyguardClockSingleView;->Chococooky:Landroid/graphics/Typeface;

    invoke-virtual {v3, v1}, Landroid/widget/TextClock;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-virtual {v4, v1}, Landroid/widget/TextClock;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-virtual {v5, v1}, Landroid/widget/TextClock;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-virtual {v6, v1}, Landroid/widget/TextClock;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_0

    :cond_6
    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/clock/SecKeyguardClockSingleView;->CutiveMono:Landroid/graphics/Typeface;

    invoke-virtual {v3, v1}, Landroid/widget/TextClock;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-virtual {v4, v1}, Landroid/widget/TextClock;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-virtual {v5, v1}, Landroid/widget/TextClock;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-virtual {v6, v1}, Landroid/widget/TextClock;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_0

    :cond_7
    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/clock/SecKeyguardClockSingleView;->CoolJazz:Landroid/graphics/Typeface;

    invoke-virtual {v3, v1}, Landroid/widget/TextClock;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-virtual {v4, v1}, Landroid/widget/TextClock;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-virtual {v5, v1}, Landroid/widget/TextClock;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-virtual {v6, v1}, Landroid/widget/TextClock;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_0

    :cond_8
    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/clock/SecKeyguardClockSingleView;->Rosemary:Landroid/graphics/Typeface;

    invoke-virtual {v3, v1}, Landroid/widget/TextClock;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-virtual {v4, v1}, Landroid/widget/TextClock;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-virtual {v5, v1}, Landroid/widget/TextClock;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-virtual {v6, v1}, Landroid/widget/TextClock;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_0

    :cond_9
    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/clock/SecKeyguardClockSingleView;->Ultima:Landroid/graphics/Typeface;

    invoke-virtual {v3, v1}, Landroid/widget/TextClock;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-virtual {v4, v1}, Landroid/widget/TextClock;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-virtual {v5, v1}, Landroid/widget/TextClock;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-virtual {v6, v1}, Landroid/widget/TextClock;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_0

    :goto_0
    return-void
.end method

.method setGlobalColorToggle()V
    .locals 3

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/SecKeyguardClockSingleView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "kg_clock_global_toggle"

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/keyguard/servicebox/pages/clock/SecKeyguardClockSingleView;->mIsSameColor:Z

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/servicebox/pages/clock/SecKeyguardClockSingleView;->mIsSameColor:Z

    :cond_0
    return-void
.end method

.method setLockScreenColors()V
    .locals 3

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/SecKeyguardClockSingleView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "kg_clock_hours_color"

    const v2, -0x92004a

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/servicebox/pages/clock/SecKeyguardClockSingleView;->mClockHoursColor:I

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/SecKeyguardClockSingleView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "kg_clock_minutes_color"

    const v2, -0x2c00b0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/servicebox/pages/clock/SecKeyguardClockSingleView;->mClockMinutesColor:I

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/SecKeyguardClockSingleView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "kg_clock_seconds_color"

    const v2, -0xa3a4

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/servicebox/pages/clock/SecKeyguardClockSingleView;->mSecondsTextColor:I

    return-void
.end method

.method setSameTextColor()V
    .locals 3

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/SecKeyguardClockSingleView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "kg_clock_global_color"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/servicebox/pages/clock/SecKeyguardClockSingleView;->mToggleTextColor:I

    return-void
.end method

.method setToggles()V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/servicebox/pages/clock/SecKeyguardClockSingleView;->setClockStyle()V

    return-void
.end method
