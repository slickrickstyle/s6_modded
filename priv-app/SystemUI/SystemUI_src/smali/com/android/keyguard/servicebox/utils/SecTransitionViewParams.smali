.class public Lcom/android/keyguard/servicebox/utils/SecTransitionViewParams;
.super Ljava/lang/Object;
.source "SecTransitionViewParams.java"


# instance fields
.field public h:F

.field public locationOnScreenX:F

.field public locationOnScreenY:F

.field public w:F

.field public x:F

.field public y:F


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v1

    iput v1, p0, Lcom/android/keyguard/servicebox/utils/SecTransitionViewParams;->x:F

    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v1

    iput v1, p0, Lcom/android/keyguard/servicebox/utils/SecTransitionViewParams;->y:F

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/android/keyguard/servicebox/utils/SecTransitionViewParams;->w:F

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/android/keyguard/servicebox/utils/SecTransitionViewParams;->h:F

    const/4 v1, 0x2

    new-array v0, v1, [I

    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v1, 0x0

    aget v1, v0, v1

    int-to-float v1, v1

    iput v1, p0, Lcom/android/keyguard/servicebox/utils/SecTransitionViewParams;->locationOnScreenX:F

    const/4 v1, 0x1

    aget v1, v0, v1

    int-to-float v1, v1

    iput v1, p0, Lcom/android/keyguard/servicebox/utils/SecTransitionViewParams;->locationOnScreenY:F

    return-void
.end method
