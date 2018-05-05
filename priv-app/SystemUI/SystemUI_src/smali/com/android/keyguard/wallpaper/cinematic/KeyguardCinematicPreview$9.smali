.class Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview$9;
.super Ljava/lang/Object;
.source "KeyguardCinematicPreview.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;->plusAnimation(Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;FJJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;

.field final synthetic val$targetView:Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;


# direct methods
.method constructor <init>(Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview$9;->this$0:Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;

    iput-object p2, p0, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview$9;->val$targetView:Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget-object v1, p0, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview$9;->this$0:Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;

    invoke-static {v1, v0}, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;->-set0(Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;F)F

    iget-object v1, p0, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview$9;->val$targetView:Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;

    invoke-virtual {v1, v0}, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;->changePlusValue(F)V

    return-void
.end method
