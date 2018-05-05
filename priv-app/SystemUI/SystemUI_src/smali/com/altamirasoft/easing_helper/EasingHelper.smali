.class public Lcom/altamirasoft/easing_helper/EasingHelper;
.super Ljava/lang/Object;
.source "EasingHelper.java"


# instance fields
.field currentValue:F

.field easing:F

.field isStarted:Z

.field listeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/altamirasoft/easing_helper/EasingUpdateListener;",
            ">;"
        }
    .end annotation
.end field

.field minDiffer:F

.field targetValue:F

.field updateAnimator:Landroid/animation/ValueAnimator;


# direct methods
.method public constructor <init>()V
    .locals 5

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x3dcccccd    # 0.1f

    iput v0, p0, Lcom/altamirasoft/easing_helper/EasingHelper;->easing:F

    iget v0, p0, Lcom/altamirasoft/easing_helper/EasingHelper;->easing:F

    const/high16 v1, 0x41200000    # 10.0f

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/altamirasoft/easing_helper/EasingHelper;->minDiffer:F

    iput-boolean v2, p0, Lcom/altamirasoft/easing_helper/EasingHelper;->isStarted:Z

    const/4 v0, 0x2

    new-array v0, v0, [F

    aput v4, v0, v2

    const/high16 v1, 0x42c80000    # 100.0f

    aput v1, v0, v3

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/altamirasoft/easing_helper/EasingHelper;->updateAnimator:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/altamirasoft/easing_helper/EasingHelper;->updateAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    iget-object v0, p0, Lcom/altamirasoft/easing_helper/EasingHelper;->updateAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    iget-object v0, p0, Lcom/altamirasoft/easing_helper/EasingHelper;->updateAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/altamirasoft/easing_helper/EasingHelper;->updateAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/altamirasoft/easing_helper/EasingHelper$1;

    invoke-direct {v1, p0}, Lcom/altamirasoft/easing_helper/EasingHelper$1;-><init>(Lcom/altamirasoft/easing_helper/EasingHelper;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iput v4, p0, Lcom/altamirasoft/easing_helper/EasingHelper;->targetValue:F

    iput v4, p0, Lcom/altamirasoft/easing_helper/EasingHelper;->currentValue:F

    return-void
.end method

.method static synthetic access$000(Lcom/altamirasoft/easing_helper/EasingHelper;)V
    .locals 0

    invoke-direct {p0}, Lcom/altamirasoft/easing_helper/EasingHelper;->invalidateData()V

    return-void
.end method

.method private invalidateData()V
    .locals 4

    iget v2, p0, Lcom/altamirasoft/easing_helper/EasingHelper;->targetValue:F

    iget v3, p0, Lcom/altamirasoft/easing_helper/EasingHelper;->currentValue:F

    sub-float v0, v2, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v3, p0, Lcom/altamirasoft/easing_helper/EasingHelper;->minDiffer:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_1

    iget v2, p0, Lcom/altamirasoft/easing_helper/EasingHelper;->targetValue:F

    iput v2, p0, Lcom/altamirasoft/easing_helper/EasingHelper;->currentValue:F

    :goto_0
    iget-object v2, p0, Lcom/altamirasoft/easing_helper/EasingHelper;->listeners:Ljava/util/ArrayList;

    if-nez v2, :cond_2

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget v2, p0, Lcom/altamirasoft/easing_helper/EasingHelper;->currentValue:F

    iget v3, p0, Lcom/altamirasoft/easing_helper/EasingHelper;->easing:F

    mul-float/2addr v3, v0

    add-float/2addr v2, v3

    iput v2, p0, Lcom/altamirasoft/easing_helper/EasingHelper;->currentValue:F

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_2
    iget-object v2, p0, Lcom/altamirasoft/easing_helper/EasingHelper;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v1, v2, :cond_3

    iget v2, p0, Lcom/altamirasoft/easing_helper/EasingHelper;->currentValue:F

    iget v3, p0, Lcom/altamirasoft/easing_helper/EasingHelper;->targetValue:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    const/4 v1, 0x0

    :goto_3
    iget-object v2, p0, Lcom/altamirasoft/easing_helper/EasingHelper;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v1, v2, :cond_4

    invoke-virtual {p0}, Lcom/altamirasoft/easing_helper/EasingHelper;->pause()V

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/altamirasoft/easing_helper/EasingHelper;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/altamirasoft/easing_helper/EasingUpdateListener;

    iget v3, p0, Lcom/altamirasoft/easing_helper/EasingHelper;->currentValue:F

    invoke-interface {v2, v3}, Lcom/altamirasoft/easing_helper/EasingUpdateListener;->onUpdateCurrentValue(F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    iget-object v2, p0, Lcom/altamirasoft/easing_helper/EasingHelper;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/altamirasoft/easing_helper/EasingUpdateListener;

    iget v3, p0, Lcom/altamirasoft/easing_helper/EasingHelper;->currentValue:F

    invoke-interface {v2, v3}, Lcom/altamirasoft/easing_helper/EasingUpdateListener;->onFinishUpdateValue(F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3
.end method


# virtual methods
.method public addUpdateListener(Lcom/altamirasoft/easing_helper/EasingUpdateListener;)Lcom/altamirasoft/easing_helper/EasingHelper;
    .locals 1

    iget-object v0, p0, Lcom/altamirasoft/easing_helper/EasingHelper;->listeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    :goto_0
    iget-object v0, p0, Lcom/altamirasoft/easing_helper/EasingHelper;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_1
    return-object p0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/altamirasoft/easing_helper/EasingHelper;->listeners:Ljava/util/ArrayList;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/altamirasoft/easing_helper/EasingHelper;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public isStarted()Z
    .locals 1

    iget-boolean v0, p0, Lcom/altamirasoft/easing_helper/EasingHelper;->isStarted:Z

    return v0
.end method

.method public pause()V
    .locals 1

    iget-object v0, p0, Lcom/altamirasoft/easing_helper/EasingHelper;->updateAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/altamirasoft/easing_helper/EasingHelper;->updateAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    goto :goto_0
.end method

.method public resume()V
    .locals 1

    iget-boolean v0, p0, Lcom/altamirasoft/easing_helper/EasingHelper;->isStarted:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/altamirasoft/easing_helper/EasingHelper;->updateAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/altamirasoft/easing_helper/EasingHelper;->updateAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0
.end method

.method public setCurrentValue(F)Lcom/altamirasoft/easing_helper/EasingHelper;
    .locals 0

    iput p1, p0, Lcom/altamirasoft/easing_helper/EasingHelper;->currentValue:F

    invoke-virtual {p0}, Lcom/altamirasoft/easing_helper/EasingHelper;->resume()V

    return-object p0
.end method

.method public setEasing(F)Lcom/altamirasoft/easing_helper/EasingHelper;
    .locals 0

    iput p1, p0, Lcom/altamirasoft/easing_helper/EasingHelper;->easing:F

    return-object p0
.end method

.method public setMinDiffer(F)Lcom/altamirasoft/easing_helper/EasingHelper;
    .locals 0

    iput p1, p0, Lcom/altamirasoft/easing_helper/EasingHelper;->minDiffer:F

    return-object p0
.end method

.method public setTargetValue(F)Lcom/altamirasoft/easing_helper/EasingHelper;
    .locals 0

    iput p1, p0, Lcom/altamirasoft/easing_helper/EasingHelper;->targetValue:F

    invoke-virtual {p0}, Lcom/altamirasoft/easing_helper/EasingHelper;->resume()V

    return-object p0
.end method

.method public start()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/altamirasoft/easing_helper/EasingHelper;->isStarted:Z

    iget-object v0, p0, Lcom/altamirasoft/easing_helper/EasingHelper;->updateAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/altamirasoft/easing_helper/EasingHelper;->updateAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0
.end method
