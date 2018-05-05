.class public Lcom/android/keyguard/servicebox/utils/SecTransitionOption;
.super Ljava/lang/Object;
.source "SecTransitionOption.java"


# instance fields
.field private mDuration:I

.field private mMovePivot:I

.field private mScalePivot:I

.field private mStartDelay:I

.field private mTransitionType:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/android/keyguard/servicebox/utils/SecTransitionOption;->mDuration:I

    iput v0, p0, Lcom/android/keyguard/servicebox/utils/SecTransitionOption;->mStartDelay:I

    iput v0, p0, Lcom/android/keyguard/servicebox/utils/SecTransitionOption;->mTransitionType:I

    iput v0, p0, Lcom/android/keyguard/servicebox/utils/SecTransitionOption;->mMovePivot:I

    iput v0, p0, Lcom/android/keyguard/servicebox/utils/SecTransitionOption;->mScalePivot:I

    return-void
.end method

.method public constructor <init>(Lcom/android/keyguard/servicebox/utils/SecTransitionOption;)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/android/keyguard/servicebox/utils/SecTransitionOption;->mDuration:I

    iput v0, p0, Lcom/android/keyguard/servicebox/utils/SecTransitionOption;->mStartDelay:I

    iput v0, p0, Lcom/android/keyguard/servicebox/utils/SecTransitionOption;->mTransitionType:I

    iput v0, p0, Lcom/android/keyguard/servicebox/utils/SecTransitionOption;->mMovePivot:I

    iput v0, p0, Lcom/android/keyguard/servicebox/utils/SecTransitionOption;->mScalePivot:I

    invoke-virtual {p0, p1}, Lcom/android/keyguard/servicebox/utils/SecTransitionOption;->copyFrom(Lcom/android/keyguard/servicebox/utils/SecTransitionOption;)V

    return-void
.end method

.method public static final combineOptions(Lcom/android/keyguard/servicebox/utils/SecTransitionOption;Lcom/android/keyguard/servicebox/utils/SecTransitionOption;)Lcom/android/keyguard/servicebox/utils/SecTransitionOption;
    .locals 3

    const/4 v2, -0x1

    new-instance v0, Lcom/android/keyguard/servicebox/utils/SecTransitionOption;

    invoke-direct {v0, p0}, Lcom/android/keyguard/servicebox/utils/SecTransitionOption;-><init>(Lcom/android/keyguard/servicebox/utils/SecTransitionOption;)V

    iget v1, p1, Lcom/android/keyguard/servicebox/utils/SecTransitionOption;->mDuration:I

    if-eq v1, v2, :cond_0

    iget v1, p1, Lcom/android/keyguard/servicebox/utils/SecTransitionOption;->mDuration:I

    iput v1, v0, Lcom/android/keyguard/servicebox/utils/SecTransitionOption;->mDuration:I

    :cond_0
    iget v1, p1, Lcom/android/keyguard/servicebox/utils/SecTransitionOption;->mStartDelay:I

    if-eq v1, v2, :cond_1

    iget v1, p1, Lcom/android/keyguard/servicebox/utils/SecTransitionOption;->mStartDelay:I

    iput v1, v0, Lcom/android/keyguard/servicebox/utils/SecTransitionOption;->mStartDelay:I

    :cond_1
    iget v1, p1, Lcom/android/keyguard/servicebox/utils/SecTransitionOption;->mTransitionType:I

    if-eq v1, v2, :cond_2

    iget v1, p1, Lcom/android/keyguard/servicebox/utils/SecTransitionOption;->mTransitionType:I

    iput v1, v0, Lcom/android/keyguard/servicebox/utils/SecTransitionOption;->mTransitionType:I

    :cond_2
    iget v1, p1, Lcom/android/keyguard/servicebox/utils/SecTransitionOption;->mMovePivot:I

    if-eq v1, v2, :cond_3

    iget v1, p1, Lcom/android/keyguard/servicebox/utils/SecTransitionOption;->mMovePivot:I

    iput v1, v0, Lcom/android/keyguard/servicebox/utils/SecTransitionOption;->mMovePivot:I

    :cond_3
    iget v1, p1, Lcom/android/keyguard/servicebox/utils/SecTransitionOption;->mScalePivot:I

    if-eq v1, v2, :cond_4

    iget v1, p1, Lcom/android/keyguard/servicebox/utils/SecTransitionOption;->mScalePivot:I

    iput v1, v0, Lcom/android/keyguard/servicebox/utils/SecTransitionOption;->mScalePivot:I

    :cond_4
    return-object v0
.end method

.method public static final generateDefaultOption(Z)Lcom/android/keyguard/servicebox/utils/SecTransitionOption;
    .locals 2

    invoke-static {}, Lcom/android/keyguard/servicebox/utils/SecTransitionOption;->generateMoveOption()Lcom/android/keyguard/servicebox/utils/SecTransitionOption;

    move-result-object v0

    if-eqz p0, :cond_0

    const/16 v1, 0x22

    invoke-virtual {v0, v1}, Lcom/android/keyguard/servicebox/utils/SecTransitionOption;->setMovePivot(I)Lcom/android/keyguard/servicebox/utils/SecTransitionOption;

    :cond_0
    return-object v0
.end method

.method private static final generateEmptyOption()Lcom/android/keyguard/servicebox/utils/SecTransitionOption;
    .locals 2

    new-instance v0, Lcom/android/keyguard/servicebox/utils/SecTransitionOption;

    invoke-direct {v0}, Lcom/android/keyguard/servicebox/utils/SecTransitionOption;-><init>()V

    const/16 v1, 0x190

    iput v1, v0, Lcom/android/keyguard/servicebox/utils/SecTransitionOption;->mDuration:I

    const/4 v1, 0x0

    iput v1, v0, Lcom/android/keyguard/servicebox/utils/SecTransitionOption;->mStartDelay:I

    return-object v0
.end method

.method public static final generateMoveOption()Lcom/android/keyguard/servicebox/utils/SecTransitionOption;
    .locals 1

    const/16 v0, 0x9

    invoke-static {v0}, Lcom/android/keyguard/servicebox/utils/SecTransitionOption;->generateMoveOption(I)Lcom/android/keyguard/servicebox/utils/SecTransitionOption;

    move-result-object v0

    return-object v0
.end method

.method public static final generateMoveOption(I)Lcom/android/keyguard/servicebox/utils/SecTransitionOption;
    .locals 2

    invoke-static {}, Lcom/android/keyguard/servicebox/utils/SecTransitionOption;->generateEmptyOption()Lcom/android/keyguard/servicebox/utils/SecTransitionOption;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/servicebox/utils/SecTransitionOption;->setTransitionType(I)Lcom/android/keyguard/servicebox/utils/SecTransitionOption;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/keyguard/servicebox/utils/SecTransitionOption;->setMovePivot(I)Lcom/android/keyguard/servicebox/utils/SecTransitionOption;

    return-object v0
.end method


# virtual methods
.method public copyFrom(Lcom/android/keyguard/servicebox/utils/SecTransitionOption;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget v0, p1, Lcom/android/keyguard/servicebox/utils/SecTransitionOption;->mDuration:I

    iput v0, p0, Lcom/android/keyguard/servicebox/utils/SecTransitionOption;->mDuration:I

    iget v0, p1, Lcom/android/keyguard/servicebox/utils/SecTransitionOption;->mStartDelay:I

    iput v0, p0, Lcom/android/keyguard/servicebox/utils/SecTransitionOption;->mStartDelay:I

    iget v0, p1, Lcom/android/keyguard/servicebox/utils/SecTransitionOption;->mTransitionType:I

    iput v0, p0, Lcom/android/keyguard/servicebox/utils/SecTransitionOption;->mTransitionType:I

    iget v0, p1, Lcom/android/keyguard/servicebox/utils/SecTransitionOption;->mMovePivot:I

    iput v0, p0, Lcom/android/keyguard/servicebox/utils/SecTransitionOption;->mMovePivot:I

    iget v0, p1, Lcom/android/keyguard/servicebox/utils/SecTransitionOption;->mScalePivot:I

    iput v0, p0, Lcom/android/keyguard/servicebox/utils/SecTransitionOption;->mScalePivot:I

    return-void
.end method

.method public getDuration()I
    .locals 1

    iget v0, p0, Lcom/android/keyguard/servicebox/utils/SecTransitionOption;->mDuration:I

    return v0
.end method

.method public getMovePivot()I
    .locals 1

    iget v0, p0, Lcom/android/keyguard/servicebox/utils/SecTransitionOption;->mMovePivot:I

    return v0
.end method

.method public getScalePivot()I
    .locals 1

    iget v0, p0, Lcom/android/keyguard/servicebox/utils/SecTransitionOption;->mScalePivot:I

    return v0
.end method

.method public getStartDelay()I
    .locals 1

    iget v0, p0, Lcom/android/keyguard/servicebox/utils/SecTransitionOption;->mStartDelay:I

    return v0
.end method

.method public getTransitionType()I
    .locals 1

    iget v0, p0, Lcom/android/keyguard/servicebox/utils/SecTransitionOption;->mTransitionType:I

    return v0
.end method

.method public isGlobalAlphaEnabled()Z
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Lcom/android/keyguard/servicebox/utils/SecTransitionOption;->mTransitionType:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isMoveEnabled()Z
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Lcom/android/keyguard/servicebox/utils/SecTransitionOption;->mTransitionType:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isScaleEnabled()Z
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Lcom/android/keyguard/servicebox/utils/SecTransitionOption;->mTransitionType:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public setMovePivot(I)Lcom/android/keyguard/servicebox/utils/SecTransitionOption;
    .locals 0

    iput p1, p0, Lcom/android/keyguard/servicebox/utils/SecTransitionOption;->mMovePivot:I

    return-object p0
.end method

.method public setTransitionType(I)Lcom/android/keyguard/servicebox/utils/SecTransitionOption;
    .locals 0

    iput p1, p0, Lcom/android/keyguard/servicebox/utils/SecTransitionOption;->mTransitionType:I

    return-object p0
.end method
