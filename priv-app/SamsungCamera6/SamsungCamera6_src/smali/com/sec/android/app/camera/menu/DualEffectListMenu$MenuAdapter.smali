.class Lcom/sec/android/app/camera/menu/DualEffectListMenu$MenuAdapter;
.super Ljava/lang/Object;
.source "DualEffectListMenu.java"

# interfaces
.implements Lcom/samsung/android/glview/GLAbsList$Adapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/menu/DualEffectListMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MenuAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/menu/DualEffectListMenu;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/camera/menu/DualEffectListMenu;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/menu/DualEffectListMenu$MenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/DualEffectListMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/camera/menu/DualEffectListMenu;Lcom/sec/android/app/camera/menu/DualEffectListMenu$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/menu/DualEffectListMenu$MenuAdapter;-><init>(Lcom/sec/android/app/camera/menu/DualEffectListMenu;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/DualEffectListMenu$MenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/DualEffectListMenu;

    invoke-static {v0}, Lcom/sec/android/app/camera/menu/DualEffectListMenu;->access$100(Lcom/sec/android/app/camera/menu/DualEffectListMenu;)Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getNumberOfItems()I

    move-result v0

    return v0
.end method

.method public getView(ILcom/samsung/android/glview/GLView;)Lcom/samsung/android/glview/GLView;
    .locals 12

    const/4 v2, 0x0

    if-nez p2, :cond_4

    new-instance v0, Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/DualEffectListMenu$MenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/DualEffectListMenu;

    iget-object v1, v1, Lcom/sec/android/app/camera/menu/DualEffectListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    iget-object v4, p0, Lcom/sec/android/app/camera/menu/DualEffectListMenu$MenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/DualEffectListMenu;

    invoke-static {v4}, Lcom/sec/android/app/camera/menu/DualEffectListMenu;->access$200(Lcom/sec/android/app/camera/menu/DualEffectListMenu;)I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/sec/android/app/camera/menu/DualEffectListMenu$MenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/DualEffectListMenu;

    invoke-static {v5}, Lcom/sec/android/app/camera/menu/DualEffectListMenu;->access$300(Lcom/sec/android/app/camera/menu/DualEffectListMenu;)I

    move-result v5

    int-to-float v5, v5

    move v3, v2

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/DualEffectListMenu$MenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/DualEffectListMenu;

    invoke-static {v1}, Lcom/sec/android/app/camera/menu/DualEffectListMenu;->access$100(Lcom/sec/android/app/camera/menu/DualEffectListMenu;)Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getItem(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    move-result-object v9

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/DualEffectListMenu$MenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/DualEffectListMenu;

    invoke-static {v1}, Lcom/sec/android/app/camera/menu/DualEffectListMenu;->access$400(Lcom/sec/android/app/camera/menu/DualEffectListMenu;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v9}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/camera/widget/gl/DualEffectItem;

    if-nez v3, :cond_0

    invoke-virtual {v9}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v1

    iget-object v4, p0, Lcom/sec/android/app/camera/menu/DualEffectListMenu$MenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/DualEffectListMenu;

    iget-object v4, v4, Lcom/sec/android/app/camera/menu/DualEffectListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCommandReceiver()Lcom/sec/android/app/camera/interfaces/CommandInterface;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/sec/android/app/camera/command/CommandBuilder;->buildCommand(ILcom/sec/android/app/camera/interfaces/CommandInterface;)Lcom/sec/android/app/camera/command/MenuCommand;

    move-result-object v10

    if-eqz v10, :cond_3

    new-instance v3, Lcom/sec/android/app/camera/widget/gl/DualEffectItem;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/DualEffectListMenu$MenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/DualEffectListMenu;

    iget-object v4, v1, Lcom/sec/android/app/camera/menu/DualEffectListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/DualEffectListMenu$MenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/DualEffectListMenu;

    invoke-static {v1}, Lcom/sec/android/app/camera/menu/DualEffectListMenu;->access$200(Lcom/sec/android/app/camera/menu/DualEffectListMenu;)I

    move-result v1

    int-to-float v7, v1

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/DualEffectListMenu$MenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/DualEffectListMenu;

    invoke-static {v1}, Lcom/sec/android/app/camera/menu/DualEffectListMenu;->access$300(Lcom/sec/android/app/camera/menu/DualEffectListMenu;)I

    move-result v1

    int-to-float v8, v1

    move v5, v2

    move v6, v2

    invoke-direct/range {v3 .. v10}, Lcom/sec/android/app/camera/widget/gl/DualEffectItem;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;FFFFLcom/sec/android/app/camera/resourcedata/MenuResourceBundle;Lcom/sec/android/app/camera/command/MenuCommand;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/DualEffectListMenu$MenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/DualEffectListMenu;

    invoke-static {v1}, Lcom/sec/android/app/camera/menu/DualEffectListMenu;->access$500(Lcom/sec/android/app/camera/menu/DualEffectListMenu;)Z

    move-result v1

    invoke-virtual {v3, v1}, Lcom/sec/android/app/camera/widget/gl/DualEffectItem;->setMute(Z)V

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/DualEffectListMenu$MenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/DualEffectListMenu;

    invoke-static {v1}, Lcom/sec/android/app/camera/menu/DualEffectListMenu;->access$600(Lcom/sec/android/app/camera/menu/DualEffectListMenu;)Lcom/samsung/android/glview/GLGridList;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/sec/android/app/camera/widget/gl/DualEffectItem;->setTouchListener(Lcom/samsung/android/glview/GLView$TouchListener;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/DualEffectListMenu$MenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/DualEffectListMenu;

    invoke-virtual {v3, v1}, Lcom/sec/android/app/camera/widget/gl/DualEffectItem;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    sget-boolean v1, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_GPU_EFFECT:Z

    if-eqz v1, :cond_2

    const/16 v1, 0x7f

    :goto_0
    invoke-virtual {v3, v1}, Lcom/sec/android/app/camera/widget/gl/DualEffectItem;->setTag(I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/DualEffectListMenu$MenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/DualEffectListMenu;

    invoke-static {v1}, Lcom/sec/android/app/camera/menu/DualEffectListMenu;->access$400(Lcom/sec/android/app/camera/menu/DualEffectListMenu;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v9}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v2

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    move-object v11, v0

    :cond_1
    :goto_1
    return-object v11

    :cond_2
    const/16 v1, 0x8

    goto :goto_0

    :cond_3
    const/4 v11, 0x0

    new-instance v11, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/DualEffectListMenu$MenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/DualEffectListMenu;

    iget-object v1, v1, Lcom/sec/android/app/camera/menu/DualEffectListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-virtual {v9}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v4

    invoke-direct {v11, v1, v2, v2, v4}, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;FFI)V

    if-eqz v11, :cond_1

    const/4 v1, 0x1

    invoke-virtual {v11, v1}, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;->setMute(Z)V

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/DualEffectListMenu$MenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/DualEffectListMenu;

    invoke-static {v1}, Lcom/sec/android/app/camera/menu/DualEffectListMenu;->access$600(Lcom/sec/android/app/camera/menu/DualEffectListMenu;)Lcom/samsung/android/glview/GLGridList;

    move-result-object v1

    invoke-virtual {v11, v1}, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;->setTouchListener(Lcom/samsung/android/glview/GLView$TouchListener;)V

    goto :goto_1

    :cond_4
    move-object v11, p2

    goto :goto_1
.end method

.method public reset()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/DualEffectListMenu$MenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/DualEffectListMenu;

    invoke-static {v0}, Lcom/sec/android/app/camera/menu/DualEffectListMenu;->access$400(Lcom/sec/android/app/camera/menu/DualEffectListMenu;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    return-void
.end method
