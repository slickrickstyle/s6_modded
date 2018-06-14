.class public Lcom/sec/android/app/camera/widget/gl/EasySideQuickSettingItem;
.super Lcom/sec/android/app/camera/widget/gl/Item;
.source "EasySideQuickSettingItem.java"


# static fields
.field private static final ROTATE_ANIMATION_DURATION:I = 0x12c

.field private static final TAG:Ljava/lang/String; = "EasyQuickMenuItem"


# instance fields
.field private mDataButton:Lcom/sec/android/app/camera/widget/gl/ItemDataButton;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/interfaces/CameraContext;FFFFLcom/sec/android/app/camera/resourcedata/MenuResourceBundle;Lcom/sec/android/app/camera/command/MenuCommand;)V
    .locals 2

    invoke-direct/range {p0 .. p7}, Lcom/sec/android/app/camera/widget/gl/Item;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;FFFFLcom/sec/android/app/camera/resourcedata/MenuResourceBundle;Lcom/sec/android/app/camera/command/MenuCommand;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/EasySideQuickSettingItem;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/EasySideQuickSettingItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getTitleId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/EasySideQuickSettingItem;->mTitle:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/EasySideQuickSettingItem;->init()V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/EasySideQuickSettingItem;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0, p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->addButtonToDimController(Lcom/samsung/android/glview/GLView;)V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/EasySideQuickSettingItem;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/EasySideQuickSettingItem;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0, p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->removeButtonFromDimController(Lcom/samsung/android/glview/GLView;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/EasySideQuickSettingItem;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    :cond_0
    invoke-super {p0}, Lcom/sec/android/app/camera/widget/gl/Item;->clear()V

    return-void
.end method

.method protected clearContent()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/EasySideQuickSettingItem;->mDataButton:Lcom/sec/android/app/camera/widget/gl/ItemDataButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/EasySideQuickSettingItem;->mDataButton:Lcom/sec/android/app/camera/widget/gl/ItemDataButton;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/gl/EasySideQuickSettingItem;->removeView(Lcom/samsung/android/glview/GLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/EasySideQuickSettingItem;->mDataButton:Lcom/sec/android/app/camera/widget/gl/ItemDataButton;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/EasySideQuickSettingItem;->mDataButton:Lcom/sec/android/app/camera/widget/gl/ItemDataButton;

    :cond_0
    return-void
.end method

.method protected init()V
    .locals 9

    const/4 v8, 0x0

    const/4 v2, 0x0

    const/4 v7, 0x1

    new-instance v0, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/EasySideQuickSettingItem;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const v3, 0x7f0b01cd

    invoke-static {v3}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    int-to-float v4, v3

    const v3, 0x7f0b01cc

    invoke-static {v3}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    int-to-float v5, v3

    iget-object v3, p0, Lcom/sec/android/app/camera/widget/gl/EasySideQuickSettingItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v6

    move v3, v2

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;FFFFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/EasySideQuickSettingItem;->mDataButton:Lcom/sec/android/app/camera/widget/gl/ItemDataButton;

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/EasySideQuickSettingItem;->mDataButton:Lcom/sec/android/app/camera/widget/gl/ItemDataButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/EasySideQuickSettingItem;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->setTitle(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/EasySideQuickSettingItem;->mDataButton:Lcom/sec/android/app/camera/widget/gl/ItemDataButton;

    invoke-virtual {v0, v8}, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->setTextVisibility(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/EasySideQuickSettingItem;->mDataButton:Lcom/sec/android/app/camera/widget/gl/ItemDataButton;

    invoke-virtual {v0, v8}, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->setHighlightVisibility(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/EasySideQuickSettingItem;->mDataButton:Lcom/sec/android/app/camera/widget/gl/ItemDataButton;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->setFocusListener(Lcom/samsung/android/glview/GLView$FocusListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/EasySideQuickSettingItem;->mDataButton:Lcom/sec/android/app/camera/widget/gl/ItemDataButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/EasySideQuickSettingItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v1

    invoke-static {v1}, Lcom/sec/android/app/camera/command/CmdIdStringMapper;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->setObjectTag(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/sec/android/app/camera/widget/gl/EasySideQuickSettingItem;->mDimmed:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/EasySideQuickSettingItem;->mDataButton:Lcom/sec/android/app/camera/widget/gl/ItemDataButton;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    :cond_0
    invoke-virtual {p0, v7}, Lcom/sec/android/app/camera/widget/gl/EasySideQuickSettingItem;->setRotatable(Z)V

    invoke-virtual {p0, v7}, Lcom/sec/android/app/camera/widget/gl/EasySideQuickSettingItem;->setCenterPivot(Z)V

    const/16 v0, 0x12c

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/gl/EasySideQuickSettingItem;->setRotateAnimationDuration(I)V

    invoke-virtual {p0, v7}, Lcom/sec/android/app/camera/widget/gl/EasySideQuickSettingItem;->setRotateAnimation(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/EasySideQuickSettingItem;->mDataButton:Lcom/sec/android/app/camera/widget/gl/ItemDataButton;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/gl/EasySideQuickSettingItem;->addView(Lcom/samsung/android/glview/GLView;)V

    iget-boolean v0, p0, Lcom/sec/android/app/camera/widget/gl/EasySideQuickSettingItem;->mDimmed:Z

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/gl/EasySideQuickSettingItem;->setDim(Z)V

    return-void
.end method

.method public onClick(Lcom/samsung/android/glview/GLView;)Z
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/EasySideQuickSettingItem;->mCommand:Lcom/sec/android/app/camera/command/MenuCommand;

    if-eqz v0, :cond_0

    const-string v0, "EasyQuickMenuItem"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Execute Menu!!!!, CommandId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/EasySideQuickSettingItem;->getCommandId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/EasySideQuickSettingItem;->mCommand:Lcom/sec/android/app/camera/command/MenuCommand;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/command/MenuCommand;->execute()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public refreshItem()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/EasySideQuickSettingItem;->mDataButton:Lcom/sec/android/app/camera/widget/gl/ItemDataButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/EasySideQuickSettingItem;->mDataButton:Lcom/sec/android/app/camera/widget/gl/ItemDataButton;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->refreshButton()V

    :cond_0
    return-void
.end method

.method public setAlpha(F)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/EasySideQuickSettingItem;->mDataButton:Lcom/sec/android/app/camera/widget/gl/ItemDataButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/EasySideQuickSettingItem;->mDataButton:Lcom/sec/android/app/camera/widget/gl/ItemDataButton;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->setAlpha(F)V

    :cond_0
    return-void
.end method

.method public setDim(Z)V
    .locals 2

    const/4 v1, 0x0

    iput-boolean p1, p0, Lcom/sec/android/app/camera/widget/gl/EasySideQuickSettingItem;->mDimmed:Z

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/EasySideQuickSettingItem;->mDataButton:Lcom/sec/android/app/camera/widget/gl/ItemDataButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/EasySideQuickSettingItem;->mDataButton:Lcom/sec/android/app/camera/widget/gl/ItemDataButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/EasySideQuickSettingItem;->mDataButton:Lcom/sec/android/app/camera/widget/gl/ItemDataButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->setDim(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/EasySideQuickSettingItem;->mDataButton:Lcom/sec/android/app/camera/widget/gl/ItemDataButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/EasySideQuickSettingItem;->mDataButton:Lcom/sec/android/app/camera/widget/gl/ItemDataButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/EasySideQuickSettingItem;->mDataButton:Lcom/sec/android/app/camera/widget/gl/ItemDataButton;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/EasySideQuickSettingItem;->mDataButton:Lcom/sec/android/app/camera/widget/gl/ItemDataButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->setDim(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/EasySideQuickSettingItem;->mDataButton:Lcom/sec/android/app/camera/widget/gl/ItemDataButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->setVisibility(I)V

    goto :goto_0
.end method

.method public setKeyListener(Lcom/samsung/android/glview/GLView$KeyListener;)V
    .locals 2

    iput-object p1, p0, Lcom/sec/android/app/camera/widget/gl/EasySideQuickSettingItem;->mKeyListener:Lcom/samsung/android/glview/GLView$KeyListener;

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/EasySideQuickSettingItem;->mKeyListener:Lcom/samsung/android/glview/GLView$KeyListener;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/EasySideQuickSettingItem;->mDataButton:Lcom/sec/android/app/camera/widget/gl/ItemDataButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/EasySideQuickSettingItem;->mDataButton:Lcom/sec/android/app/camera/widget/gl/ItemDataButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->setKeyListener(Lcom/samsung/android/glview/GLView$KeyListener;)V

    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/sec/android/app/camera/widget/gl/Item;->setKeyListener(Lcom/samsung/android/glview/GLView$KeyListener;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/EasySideQuickSettingItem;->mDataButton:Lcom/sec/android/app/camera/widget/gl/ItemDataButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/EasySideQuickSettingItem;->mDataButton:Lcom/sec/android/app/camera/widget/gl/ItemDataButton;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->setKeyListener(Lcom/samsung/android/glview/GLView$KeyListener;)V

    goto :goto_0
.end method

.method public setMute(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/EasySideQuickSettingItem;->mDataButton:Lcom/sec/android/app/camera/widget/gl/ItemDataButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/EasySideQuickSettingItem;->mDataButton:Lcom/sec/android/app/camera/widget/gl/ItemDataButton;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->setMute(Z)V

    :cond_0
    return-void
.end method

.method public setTouchListener(Lcom/samsung/android/glview/GLView$TouchListener;)V
    .locals 2

    iput-object p1, p0, Lcom/sec/android/app/camera/widget/gl/EasySideQuickSettingItem;->mTouchListener:Lcom/samsung/android/glview/GLView$TouchListener;

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/EasySideQuickSettingItem;->mTouchListener:Lcom/samsung/android/glview/GLView$TouchListener;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/EasySideQuickSettingItem;->mDataButton:Lcom/sec/android/app/camera/widget/gl/ItemDataButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/EasySideQuickSettingItem;->mDataButton:Lcom/sec/android/app/camera/widget/gl/ItemDataButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->setTouchListener(Lcom/samsung/android/glview/GLView$TouchListener;)V

    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/sec/android/app/camera/widget/gl/Item;->setTouchListener(Lcom/samsung/android/glview/GLView$TouchListener;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/EasySideQuickSettingItem;->mDataButton:Lcom/sec/android/app/camera/widget/gl/ItemDataButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/EasySideQuickSettingItem;->mDataButton:Lcom/sec/android/app/camera/widget/gl/ItemDataButton;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->setTouchListener(Lcom/samsung/android/glview/GLView$TouchListener;)V

    goto :goto_0
.end method
