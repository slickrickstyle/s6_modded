.class Lcom/android/systemui/egg/MLand$Params;
.super Ljava/lang/Object;
.source "MLand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/egg/MLand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Params"
.end annotation


# instance fields
.field public BOOST_DV:I

.field public BUILDING_HEIGHT_MIN:I

.field public BUILDING_WIDTH_MAX:I

.field public BUILDING_WIDTH_MIN:I

.field public CLOUD_SIZE_MAX:I

.field public CLOUD_SIZE_MIN:I

.field public G:I

.field public HUD_Z:F

.field public MAX_V:I

.field public OBSTACLE_GAP:I

.field public OBSTACLE_MIN:I

.field public OBSTACLE_PERIOD:I

.field public OBSTACLE_SPACING:I

.field public OBSTACLE_STEM_WIDTH:I

.field public OBSTACLE_WIDTH:I

.field public OBSTACLE_Z:F

.field public PLAYER_HIT_SIZE:I

.field public PLAYER_SIZE:I

.field public PLAYER_Z:F

.field public PLAYER_Z_BOOST:F

.field public SCENERY_Z:F

.field public STAR_SIZE_MAX:I

.field public STAR_SIZE_MIN:I

.field public TRANSLATION_PER_SEC:F


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7f0d046e

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/android/systemui/egg/MLand$Params;->TRANSLATION_PER_SEC:F

    const v0, 0x7f0d046d

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/egg/MLand$Params;->OBSTACLE_SPACING:I

    iget v0, p0, Lcom/android/systemui/egg/MLand$Params;->OBSTACLE_SPACING:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/systemui/egg/MLand$Params;->TRANSLATION_PER_SEC:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/systemui/egg/MLand$Params;->OBSTACLE_PERIOD:I

    const v0, 0x7f0d046f

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/egg/MLand$Params;->BOOST_DV:I

    const v0, 0x7f0d0470

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/egg/MLand$Params;->PLAYER_HIT_SIZE:I

    const v0, 0x7f0d0471

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/egg/MLand$Params;->PLAYER_SIZE:I

    const v0, 0x7f0d0472

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/egg/MLand$Params;->OBSTACLE_WIDTH:I

    const v0, 0x7f0d0473

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/egg/MLand$Params;->OBSTACLE_STEM_WIDTH:I

    const v0, 0x7f0d0474

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/egg/MLand$Params;->OBSTACLE_GAP:I

    const v0, 0x7f0d0475

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/egg/MLand$Params;->OBSTACLE_MIN:I

    const v0, 0x7f0d0478

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/egg/MLand$Params;->BUILDING_HEIGHT_MIN:I

    const v0, 0x7f0d0476

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/egg/MLand$Params;->BUILDING_WIDTH_MIN:I

    const v0, 0x7f0d0477

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/egg/MLand$Params;->BUILDING_WIDTH_MAX:I

    const v0, 0x7f0d0479

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/egg/MLand$Params;->CLOUD_SIZE_MIN:I

    const v0, 0x7f0d047a

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/egg/MLand$Params;->CLOUD_SIZE_MAX:I

    const v0, 0x7f0d047d

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/egg/MLand$Params;->STAR_SIZE_MIN:I

    const v0, 0x7f0d047e

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/egg/MLand$Params;->STAR_SIZE_MAX:I

    const v0, 0x7f0d047f

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/egg/MLand$Params;->G:I

    const v0, 0x7f0d0480

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/egg/MLand$Params;->MAX_V:I

    const v0, 0x7f0d0481

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/systemui/egg/MLand$Params;->SCENERY_Z:F

    const v0, 0x7f0d0482

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/systemui/egg/MLand$Params;->OBSTACLE_Z:F

    const v0, 0x7f0d0483

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/systemui/egg/MLand$Params;->PLAYER_Z:F

    const v0, 0x7f0d0484

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/systemui/egg/MLand$Params;->PLAYER_Z_BOOST:F

    const v0, 0x7f0d0485

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/systemui/egg/MLand$Params;->HUD_Z:F

    iget v0, p0, Lcom/android/systemui/egg/MLand$Params;->OBSTACLE_MIN:I

    iget v1, p0, Lcom/android/systemui/egg/MLand$Params;->OBSTACLE_WIDTH:I

    div-int/lit8 v1, v1, 0x2

    if-gt v0, v1, :cond_0

    const-string/jumbo v0, "error: obstacles might be too short, adjusting"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/systemui/egg/MLand;->L(Ljava/lang/String;[Ljava/lang/Object;)V

    iget v0, p0, Lcom/android/systemui/egg/MLand$Params;->OBSTACLE_WIDTH:I

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/systemui/egg/MLand$Params;->OBSTACLE_MIN:I

    :cond_0
    return-void
.end method
