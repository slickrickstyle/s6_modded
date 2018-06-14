.class public Lcom/sec/android/app/camera/widget/gl/EffectListItem;
.super Lcom/sec/android/app/camera/widget/gl/Item;
.source "EffectListItem.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "EffectListItem"


# instance fields
.field private final EFFECT_SELECTED_IMAGE_WIDTH:I

.field private final EFFECT_TYPE_BUTTON_HEIGHT:I

.field private final EFFECT_TYPE_BUTTON_WIDTH:I

.field private final EFFECT_TYPE_TEXT_BOTTOM_MARGIN:I

.field private final EFFECT_TYPE_TEXT_HEIGHT:I

.field private final EFFECT_TYPE_TEXT_PADDING:I

.field private final EFFECT_TYPE_TEXT_SIZE:I

.field private final EFFECT_TYPE_TEXT_WIDTH:I

.field private final EFFECT_TYPE_TEXT_Y:I

.field private final SELECT_BG_COLOR:I

.field private final SELECT_BG_THICKNESS:I

.field private mSelectBG:Lcom/samsung/android/glview/GLImage;

.field private mSelectRectBG:Lcom/samsung/android/glview/GLRectangle;

.field private mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ItemEffectListButton;

.field private mThumbnailText:Lcom/sec/android/app/camera/widget/gl/ItemThumbnailText;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/interfaces/CameraContext;FFFFLcom/sec/android/app/camera/resourcedata/MenuResourceBundle;Lcom/sec/android/app/camera/command/MenuCommand;)V
    .locals 2

    invoke-direct/range {p0 .. p7}, Lcom/sec/android/app/camera/widget/gl/Item;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;FFFFLcom/sec/android/app/camera/resourcedata/MenuResourceBundle;Lcom/sec/android/app/camera/command/MenuCommand;)V

    const v0, 0x7f0b02e5

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/EffectListItem;->EFFECT_TYPE_BUTTON_WIDTH:I

    const v0, 0x7f0b02e4

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/EffectListItem;->EFFECT_TYPE_BUTTON_HEIGHT:I

    const v0, 0x7f0b030b

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/EffectListItem;->EFFECT_TYPE_TEXT_Y:I

    const v0, 0x7f0b030a

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/EffectListItem;->EFFECT_TYPE_TEXT_WIDTH:I

    const v0, 0x7f0b0305

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/EffectListItem;->EFFECT_TYPE_TEXT_HEIGHT:I

    const v0, 0x7f0b0307

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/EffectListItem;->EFFECT_TYPE_TEXT_PADDING:I

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->isSWALanguage()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0b0309

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    :goto_0
    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/EffectListItem;->EFFECT_TYPE_TEXT_SIZE:I

    const v0, 0x7f0b0304

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/EffectListItem;->EFFECT_TYPE_TEXT_BOTTOM_MARGIN:I

    const v0, 0x7f0b0302

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/EffectListItem;->EFFECT_SELECTED_IMAGE_WIDTH:I

    const v0, 0x7f0d0010

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/EffectListItem;->SELECT_BG_COLOR:I

    const v0, 0x7f0b0303

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/EffectListItem;->SELECT_BG_THICKNESS:I

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/EffectListItem;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/EffectListItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getTitleId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/EffectListItem;->mTitle:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/EffectListItem;->init()V

    return-void

    :cond_0
    const v0, 0x7f0b0308

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    goto :goto_0
.end method


# virtual methods
.method protected clearContent()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/EffectListItem;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ItemEffectListButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/EffectListItem;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ItemEffectListButton;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/gl/EffectListItem;->removeView(Lcom/samsung/android/glview/GLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/EffectListItem;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ItemEffectListButton;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/ItemEffectListButton;->clear()V

    iput-object v1, p0, Lcom/sec/android/app/camera/widget/gl/EffectListItem;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ItemEffectListButton;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/EffectListItem;->mThumbnailText:Lcom/sec/android/app/camera/widget/gl/ItemThumbnailText;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/EffectListItem;->mThumbnailText:Lcom/sec/android/app/camera/widget/gl/ItemThumbnailText;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/gl/EffectListItem;->removeView(Lcom/samsung/android/glview/GLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/EffectListItem;->mThumbnailText:Lcom/sec/android/app/camera/widget/gl/ItemThumbnailText;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailText;->clear()V

    iput-object v1, p0, Lcom/sec/android/app/camera/widget/gl/EffectListItem;->mThumbnailText:Lcom/sec/android/app/camera/widget/gl/ItemThumbnailText;

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/EffectListItem;->mSelectBG:Lcom/samsung/android/glview/GLImage;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/EffectListItem;->mSelectBG:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/gl/EffectListItem;->removeView(Lcom/samsung/android/glview/GLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/EffectListItem;->mSelectBG:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->clear()V

    iput-object v1, p0, Lcom/sec/android/app/camera/widget/gl/EffectListItem;->mSelectBG:Lcom/samsung/android/glview/GLImage;

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/EffectListItem;->mSelectRectBG:Lcom/samsung/android/glview/GLRectangle;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/EffectListItem;->mSelectRectBG:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/gl/EffectListItem;->removeView(Lcom/samsung/android/glview/GLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/EffectListItem;->mSelectRectBG:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLRectangle;->clear()V

    iput-object v1, p0, Lcom/sec/android/app/camera/widget/gl/EffectListItem;->mSelectRectBG:Lcom/samsung/android/glview/GLRectangle;

    :cond_3
    return-void
.end method

.method public getSelected()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/EffectListItem;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ItemEffectListButton;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/ItemEffectListButton;->getSelected()Z

    move-result v0

    return v0
.end method

.method protected init()V
    .locals 13

    new-instance v0, Lcom/sec/android/app/camera/widget/gl/ItemEffectListButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/EffectListItem;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/EffectListItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/app/camera/widget/gl/ItemEffectListButton;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/EffectListItem;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ItemEffectListButton;

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/EffectListItem;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ItemEffectListButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/EffectListItem;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/ItemEffectListButton;->setTitle(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/EffectListItem;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ItemEffectListButton;

    iget v1, p0, Lcom/sec/android/app/camera/widget/gl/EffectListItem;->EFFECT_TYPE_BUTTON_WIDTH:I

    int-to-float v1, v1

    iget v2, p0, Lcom/sec/android/app/camera/widget/gl/EffectListItem;->EFFECT_TYPE_BUTTON_HEIGHT:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/widget/gl/ItemEffectListButton;->setSize(FF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/EffectListItem;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ItemEffectListButton;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/widget/gl/ItemEffectListButton;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/EffectListItem;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ItemEffectListButton;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/widget/gl/ItemEffectListButton;->setFocusListener(Lcom/samsung/android/glview/GLView$FocusListener;)V

    const/16 v0, 0x3e8

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/EffectListItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/EffectListItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v0

    invoke-static {v0}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->isExternalEffect(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/EffectListItem;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-static {v0}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->instance(Lcom/sec/android/app/camera/interfaces/CameraContext;)Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/EffectListItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->getExternalFilterFullName(I)Ljava/lang/String;

    move-result-object v12

    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/EffectListItem;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ItemEffectListButton;

    invoke-virtual {v0, v12}, Lcom/sec/android/app/camera/widget/gl/ItemEffectListButton;->setObjectTag(Ljava/lang/String;)V

    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/EffectListItem;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ItemEffectListButton;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/gl/EffectListItem;->addView(Lcom/samsung/android/glview/GLView;)V

    new-instance v0, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailText;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/EffectListItem;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, p0, Lcom/sec/android/app/camera/widget/gl/EffectListItem;->EFFECT_TYPE_TEXT_WIDTH:I

    int-to-float v4, v4

    iget v5, p0, Lcom/sec/android/app/camera/widget/gl/EffectListItem;->EFFECT_TYPE_TEXT_HEIGHT:I

    int-to-float v5, v5

    iget v6, p0, Lcom/sec/android/app/camera/widget/gl/EffectListItem;->EFFECT_TYPE_TEXT_PADDING:I

    int-to-float v6, v6

    iget v7, p0, Lcom/sec/android/app/camera/widget/gl/EffectListItem;->EFFECT_TYPE_TEXT_PADDING:I

    int-to-float v7, v7

    iget v8, p0, Lcom/sec/android/app/camera/widget/gl/EffectListItem;->EFFECT_TYPE_TEXT_WIDTH:I

    int-to-float v8, v8

    iget v9, p0, Lcom/sec/android/app/camera/widget/gl/EffectListItem;->EFFECT_TYPE_TEXT_HEIGHT:I

    iget v10, p0, Lcom/sec/android/app/camera/widget/gl/EffectListItem;->EFFECT_TYPE_TEXT_PADDING:I

    sub-int/2addr v9, v10

    int-to-float v9, v9

    iget v10, p0, Lcom/sec/android/app/camera/widget/gl/EffectListItem;->EFFECT_TYPE_TEXT_SIZE:I

    int-to-float v10, v10

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/EffectListItem;->getCommandId()I

    move-result v11

    invoke-direct/range {v0 .. v11}, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailText;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;FFFFFFFFFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/EffectListItem;->mThumbnailText:Lcom/sec/android/app/camera/widget/gl/ItemThumbnailText;

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/EffectListItem;->mThumbnailText:Lcom/sec/android/app/camera/widget/gl/ItemThumbnailText;

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getRobotoRegular()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailText;->setTextFont(Landroid/graphics/Typeface;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/EffectListItem;->mThumbnailText:Lcom/sec/android/app/camera/widget/gl/ItemThumbnailText;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/EffectListItem;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0d0016

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailText;->setTextColor(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/EffectListItem;->mThumbnailText:Lcom/sec/android/app/camera/widget/gl/ItemThumbnailText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailText;->setRotatable(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/EffectListItem;->mThumbnailText:Lcom/sec/android/app/camera/widget/gl/ItemThumbnailText;

    const/4 v1, 0x1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailText;->setAlign(II)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/EffectListItem;->mThumbnailText:Lcom/sec/android/app/camera/widget/gl/ItemThumbnailText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailText;->setBypassTouch(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/EffectListItem;->mThumbnailText:Lcom/sec/android/app/camera/widget/gl/ItemThumbnailText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailText;->setTextShadow(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/EffectListItem;->mThumbnailText:Lcom/sec/android/app/camera/widget/gl/ItemThumbnailText;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailText;->resetScale()V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/EffectListItem;->mThumbnailText:Lcom/sec/android/app/camera/widget/gl/ItemThumbnailText;

    const/4 v1, 0x1

    iget v2, p0, Lcom/sec/android/app/camera/widget/gl/EffectListItem;->EFFECT_TYPE_BUTTON_HEIGHT:I

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailText;->setLeftTop(IFF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/EffectListItem;->mThumbnailText:Lcom/sec/android/app/camera/widget/gl/ItemThumbnailText;

    const/4 v1, 0x2

    iget v2, p0, Lcom/sec/android/app/camera/widget/gl/EffectListItem;->EFFECT_TYPE_BUTTON_WIDTH:I

    int-to-float v2, v2

    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/EffectListItem;->EFFECT_TYPE_BUTTON_HEIGHT:I

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailText;->setLeftTop(IFF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/EffectListItem;->mThumbnailText:Lcom/sec/android/app/camera/widget/gl/ItemThumbnailText;

    const/4 v1, 0x3

    const/4 v2, 0x0

    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/EffectListItem;->EFFECT_TYPE_BUTTON_HEIGHT:I

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailText;->setLeftTop(IFF)V

    new-instance v0, Lcom/samsung/android/glview/GLRectangle;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/EffectListItem;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, p0, Lcom/sec/android/app/camera/widget/gl/EffectListItem;->EFFECT_TYPE_BUTTON_WIDTH:I

    int-to-float v4, v4

    iget v5, p0, Lcom/sec/android/app/camera/widget/gl/EffectListItem;->EFFECT_TYPE_BUTTON_HEIGHT:I

    int-to-float v5, v5

    iget v6, p0, Lcom/sec/android/app/camera/widget/gl/EffectListItem;->SELECT_BG_COLOR:I

    iget v7, p0, Lcom/sec/android/app/camera/widget/gl/EffectListItem;->SELECT_BG_THICKNESS:I

    int-to-float v7, v7

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/glview/GLRectangle;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/EffectListItem;->mSelectRectBG:Lcom/samsung/android/glview/GLRectangle;

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/EffectListItem;->mSelectRectBG:Lcom/samsung/android/glview/GLRectangle;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLRectangle;->setBypassTouch(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/EffectListItem;->mSelectRectBG:Lcom/samsung/android/glview/GLRectangle;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLRectangle;->setRotatable(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/EffectListItem;->mSelectRectBG:Lcom/samsung/android/glview/GLRectangle;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLRectangle;->setRotateAnimation(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/EffectListItem;->mSelectRectBG:Lcom/samsung/android/glview/GLRectangle;

    const/4 v1, 0x1

    iget v2, p0, Lcom/sec/android/app/camera/widget/gl/EffectListItem;->EFFECT_TYPE_BUTTON_WIDTH:I

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/glview/GLRectangle;->setLeftTop(IFF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/EffectListItem;->mSelectRectBG:Lcom/samsung/android/glview/GLRectangle;

    const/4 v1, 0x2

    iget v2, p0, Lcom/sec/android/app/camera/widget/gl/EffectListItem;->EFFECT_TYPE_BUTTON_WIDTH:I

    int-to-float v2, v2

    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/EffectListItem;->EFFECT_TYPE_BUTTON_HEIGHT:I

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/glview/GLRectangle;->setLeftTop(IFF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/EffectListItem;->mSelectRectBG:Lcom/samsung/android/glview/GLRectangle;

    const/4 v1, 0x3

    const/4 v2, 0x0

    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/EffectListItem;->EFFECT_TYPE_BUTTON_HEIGHT:I

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/glview/GLRectangle;->setLeftTop(IFF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/EffectListItem;->mSelectRectBG:Lcom/samsung/android/glview/GLRectangle;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLRectangle;->setClickable(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/EffectListItem;->mSelectRectBG:Lcom/samsung/android/glview/GLRectangle;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/EffectListItem;->mTitle:Ljava/lang/String;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/EffectListItem;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0a0120

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/widget/gl/EffectListItem;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0a025b

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLRectangle;->setTitle(Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/glview/GLImage;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/EffectListItem;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/widget/gl/EffectListItem;->EFFECT_TYPE_BUTTON_WIDTH:I

    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/EffectListItem;->EFFECT_SELECTED_IMAGE_WIDTH:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/EffectListItem;->EFFECT_TYPE_BUTTON_HEIGHT:I

    iget v4, p0, Lcom/sec/android/app/camera/widget/gl/EffectListItem;->EFFECT_SELECTED_IMAGE_WIDTH:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    const v4, 0x7f0200a7

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/EffectListItem;->mSelectBG:Lcom/samsung/android/glview/GLImage;

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/EffectListItem;->mSelectBG:Lcom/samsung/android/glview/GLImage;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setBypassTouch(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/EffectListItem;->mSelectBG:Lcom/samsung/android/glview/GLImage;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setRotatable(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/EffectListItem;->mSelectBG:Lcom/samsung/android/glview/GLImage;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setRotateAnimation(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/EffectListItem;->mSelectBG:Lcom/samsung/android/glview/GLImage;

    const/4 v1, 0x1

    iget v2, p0, Lcom/sec/android/app/camera/widget/gl/EffectListItem;->EFFECT_TYPE_BUTTON_HEIGHT:I

    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/EffectListItem;->EFFECT_SELECTED_IMAGE_WIDTH:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/EffectListItem;->EFFECT_TYPE_BUTTON_WIDTH:I

    iget v4, p0, Lcom/sec/android/app/camera/widget/gl/EffectListItem;->EFFECT_SELECTED_IMAGE_WIDTH:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/glview/GLImage;->setLeftTop(IFF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/EffectListItem;->mSelectBG:Lcom/samsung/android/glview/GLImage;

    const/4 v1, 0x2

    iget v2, p0, Lcom/sec/android/app/camera/widget/gl/EffectListItem;->EFFECT_TYPE_BUTTON_WIDTH:I

    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/EffectListItem;->EFFECT_SELECTED_IMAGE_WIDTH:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/EffectListItem;->EFFECT_TYPE_BUTTON_HEIGHT:I

    iget v4, p0, Lcom/sec/android/app/camera/widget/gl/EffectListItem;->EFFECT_SELECTED_IMAGE_WIDTH:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/glview/GLImage;->setLeftTop(IFF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/EffectListItem;->mSelectBG:Lcom/samsung/android/glview/GLImage;

    const/4 v1, 0x3

    iget v2, p0, Lcom/sec/android/app/camera/widget/gl/EffectListItem;->EFFECT_TYPE_BUTTON_HEIGHT:I

    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/EffectListItem;->EFFECT_SELECTED_IMAGE_WIDTH:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/EffectListItem;->EFFECT_TYPE_BUTTON_WIDTH:I

    iget v4, p0, Lcom/sec/android/app/camera/widget/gl/EffectListItem;->EFFECT_SELECTED_IMAGE_WIDTH:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/glview/GLImage;->setLeftTop(IFF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/EffectListItem;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ItemEffectListButton;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/ItemEffectListButton;->getSelected()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/EffectListItem;->mSelectRectBG:Lcom/samsung/android/glview/GLRectangle;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLRectangle;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/EffectListItem;->mSelectBG:Lcom/samsung/android/glview/GLImage;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    :goto_2
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/EffectListItem;->mThumbnailText:Lcom/sec/android/app/camera/widget/gl/ItemThumbnailText;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/gl/EffectListItem;->addView(Lcom/samsung/android/glview/GLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/EffectListItem;->mSelectRectBG:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/gl/EffectListItem;->addView(Lcom/samsung/android/glview/GLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/EffectListItem;->mSelectBG:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/gl/EffectListItem;->addView(Lcom/samsung/android/glview/GLView;)V

    return-void

    :cond_0
    iget-object v12, p0, Lcom/sec/android/app/camera/widget/gl/EffectListItem;->mTitle:Ljava/lang/String;

    goto/16 :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/EffectListItem;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ItemEffectListButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/EffectListItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v1

    invoke-static {v1}, Lcom/sec/android/app/camera/command/CmdIdStringMapper;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/ItemEffectListButton;->setObjectTag(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/EffectListItem;->mSelectRectBG:Lcom/samsung/android/glview/GLRectangle;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLRectangle;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/EffectListItem;->mSelectBG:Lcom/samsung/android/glview/GLImage;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    goto :goto_2
.end method

.method public setKeyListener(Lcom/samsung/android/glview/GLView$KeyListener;)V
    .locals 2

    iput-object p1, p0, Lcom/sec/android/app/camera/widget/gl/EffectListItem;->mKeyListener:Lcom/samsung/android/glview/GLView$KeyListener;

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/EffectListItem;->mKeyListener:Lcom/samsung/android/glview/GLView$KeyListener;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/EffectListItem;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ItemEffectListButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/EffectListItem;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ItemEffectListButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/ItemEffectListButton;->setKeyListener(Lcom/samsung/android/glview/GLView$KeyListener;)V

    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/sec/android/app/camera/widget/gl/Item;->setKeyListener(Lcom/samsung/android/glview/GLView$KeyListener;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/EffectListItem;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ItemEffectListButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/EffectListItem;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ItemEffectListButton;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/widget/gl/ItemEffectListButton;->setKeyListener(Lcom/samsung/android/glview/GLView$KeyListener;)V

    goto :goto_0
.end method

.method public setMute(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/EffectListItem;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ItemEffectListButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/EffectListItem;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ItemEffectListButton;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/widget/gl/ItemEffectListButton;->setMute(Z)V

    :cond_0
    return-void
.end method

.method public setNextFocusUpView(Lcom/samsung/android/glview/GLView;)Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/EffectListItem;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ItemEffectListButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/EffectListItem;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ItemEffectListButton;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/ItemEffectListButton;->getButton()Lcom/samsung/android/glview/GLSelectButton;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/glview/GLView;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLSelectButton;->setNextFocusUpId(I)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setSelectBGVisibility(I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/EffectListItem;->mSelectBG:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/EffectListItem;->mSelectRectBG:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLRectangle;->setVisibility(I)V

    return-void
.end method

.method public setTouchListener(Lcom/samsung/android/glview/GLView$TouchListener;)V
    .locals 2

    iput-object p1, p0, Lcom/sec/android/app/camera/widget/gl/EffectListItem;->mTouchListener:Lcom/samsung/android/glview/GLView$TouchListener;

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/EffectListItem;->mTouchListener:Lcom/samsung/android/glview/GLView$TouchListener;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/EffectListItem;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ItemEffectListButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/EffectListItem;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ItemEffectListButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/ItemEffectListButton;->setTouchListener(Lcom/samsung/android/glview/GLView$TouchListener;)V

    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/sec/android/app/camera/widget/gl/Item;->setTouchListener(Lcom/samsung/android/glview/GLView$TouchListener;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/EffectListItem;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ItemEffectListButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/EffectListItem;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ItemEffectListButton;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/widget/gl/ItemEffectListButton;->setTouchListener(Lcom/samsung/android/glview/GLView$TouchListener;)V

    goto :goto_0
.end method
