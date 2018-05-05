.class public Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;
.super Landroid/app/Activity;
.source "BiometricsLockSetup.java"


# static fields
.field private static mButton:Landroid/widget/Button;

.field private static mWidth:I


# instance fields
.field private mForFace:Z

.field private mForFingerprint:Z


# direct methods
.method static synthetic -get0()Landroid/widget/Button;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->mButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic -get1()I
    .locals 1

    sget v0, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->mWidth:I

    return v0
.end method

.method static synthetic -set0(I)I
    .locals 0

    sput p0, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->mWidth:I

    return p0
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private getStatusBarHeight()I
    .locals 6

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string/jumbo v3, "status_bar_height"

    const-string/jumbo v4, "dimen"

    const-string/jumbo v5, "android"

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    :cond_0
    const-string/jumbo v2, "BiometricsLockSetup"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getStatusBarHeight : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method private setButtonSize()V
    .locals 3

    const v2, 0x7f110395

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    sput-object v2, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->mButton:Landroid/widget/Button;

    sget-object v2, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->mButton:Landroid/widget/Button;

    if-nez v2, :cond_0

    return-void

    :cond_0
    const v2, 0x7f110631

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    new-instance v0, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup$1;

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup$1;-><init>(Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;Landroid/view/View;)V

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method private setDescriptionString()V
    .locals 5

    const v4, 0x7f110632

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f110633

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v4, 0x7f110635

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v4, 0x7f110637

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-boolean v4, p0, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->mForFace:Z

    if-eqz v4, :cond_4

    if-eqz v3, :cond_0

    const v4, 0x7f0b0771

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    if-eqz v0, :cond_1

    const v4, 0x7f0b0772

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    :cond_1
    if-eqz v2, :cond_2

    const v4, 0x7f0b0773

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(I)V

    :cond_2
    :goto_0
    if-eqz v1, :cond_3

    const v4, 0x7f0b0784

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    :cond_3
    return-void

    :cond_4
    iget-boolean v4, p0, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->mForFingerprint:Z

    if-eqz v4, :cond_2

    if-eqz v3, :cond_5

    const v4, 0x7f0b06af

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    :cond_5
    if-eqz v0, :cond_6

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v4

    if-eqz v4, :cond_7

    const v4, 0x7f0b06b1

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    :cond_6
    :goto_1
    if-eqz v2, :cond_2

    const v4, 0x7f0b06b2

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_7
    const v4, 0x7f0b06b0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1
.end method

.method private setIndicatorTransparency()V
    .locals 4

    const/16 v0, 0x3400

    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v3, -0x7ffff400

    or-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    return-void
.end method

.method private setMargintToptoLayout()V
    .locals 3

    const v2, 0x7f110631

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->getStatusBarHeight()I

    move-result v2

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 2

    const-string/jumbo v0, "BiometricsLockSetup"

    const-string/jumbo v1, "onBackPressed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->setResult(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->finish()V

    return-void
.end method

.method public onClickContinue(Landroid/view/View;)V
    .locals 2

    const-string/jumbo v0, "BiometricsLockSetup"

    const-string/jumbo v1, "onClickContinue"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->setResult(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->finish()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    const/4 v2, 0x0

    const-string/jumbo v0, "BiometricsLockSetup"

    const-string/jumbo v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "for_face"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->mForFace:Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "for_fingerprint"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->mForFingerprint:Z

    iget-boolean v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->mForFace:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->mForFingerprint:Z

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->isInMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "BiometricsLockSetup"

    const-string/jumbo v1, "onCreate() : isInMultiWindowMode is TRUE."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f0b072b

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->finish()V

    return-void

    :cond_1
    const v0, 0x7f040282

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->setContentView(I)V

    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->setIndicatorTransparency()V

    return-void
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->setButtonSize()V

    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->setMargintToptoLayout()V

    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->setDescriptionString()V

    return-void
.end method
