.class Lcom/samsung/android/desktopmode/VirtualDeviceManager$VirtualDeviceScreen;
.super Landroid/app/InternalPresentation;
.source "VirtualDeviceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/desktopmode/VirtualDeviceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VirtualDeviceScreen"
.end annotation


# instance fields
.field final mConnectedDock:Z

.field final mContext:Landroid/content/Context;

.field final mLayoutId:I

.field private mTouchpadLayout:Landroid/widget/FrameLayout;

.field final mWindow:Landroid/view/Window;

.field final mWindowType:I

.field final synthetic this$0:Lcom/samsung/android/desktopmode/VirtualDeviceManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/desktopmode/VirtualDeviceManager;Landroid/content/Context;IIZ)V
    .locals 1

    iput-object p1, p0, Lcom/samsung/android/desktopmode/VirtualDeviceManager$VirtualDeviceScreen;->this$0:Lcom/samsung/android/desktopmode/VirtualDeviceManager;

    iget-object v0, p1, Lcom/samsung/android/desktopmode/VirtualDeviceManager;->mDefaultDisplay:Landroid/view/Display;

    invoke-direct {p0, p2, v0}, Landroid/app/InternalPresentation;-><init>(Landroid/content/Context;Landroid/view/Display;)V

    iput-object p2, p0, Lcom/samsung/android/desktopmode/VirtualDeviceManager$VirtualDeviceScreen;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/desktopmode/VirtualDeviceManager$VirtualDeviceScreen;->mWindow:Landroid/view/Window;

    iput p3, p0, Lcom/samsung/android/desktopmode/VirtualDeviceManager$VirtualDeviceScreen;->mWindowType:I

    iput p4, p0, Lcom/samsung/android/desktopmode/VirtualDeviceManager$VirtualDeviceScreen;->mLayoutId:I

    iput-boolean p5, p0, Lcom/samsung/android/desktopmode/VirtualDeviceManager$VirtualDeviceScreen;->mConnectedDock:Z

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/samsung/android/desktopmode/VirtualDeviceManager$VirtualDeviceScreen;->mWindow:Landroid/view/Window;

    iget v2, p0, Lcom/samsung/android/desktopmode/VirtualDeviceManager$VirtualDeviceScreen;->mWindowType:I

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    iget-object v1, p0, Lcom/samsung/android/desktopmode/VirtualDeviceManager$VirtualDeviceScreen;->mWindow:Landroid/view/Window;

    const v2, 0x20518

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    iget-object v1, p0, Lcom/samsung/android/desktopmode/VirtualDeviceManager$VirtualDeviceScreen;->mWindow:Landroid/view/Window;

    const/high16 v2, 0x10000

    invoke-virtual {v1, v2}, Landroid/view/Window;->clearFlags(I)V

    invoke-virtual {p0, v3}, Landroid/app/Dialog;->setCancelable(Z)V

    iget v1, p0, Lcom/samsung/android/desktopmode/VirtualDeviceManager$VirtualDeviceScreen;->mLayoutId:I

    invoke-virtual {p0, v1}, Landroid/app/Dialog;->setContentView(I)V

    iget-boolean v1, p0, Lcom/samsung/android/desktopmode/VirtualDeviceManager$VirtualDeviceScreen;->mConnectedDock:Z

    if-eqz v1, :cond_0

    sget v1, Lcom/samsung/android/framework/res/R$id;->touchpad_portrait:I

    invoke-virtual {p0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/samsung/android/desktopmode/VirtualDeviceManager$VirtualDeviceScreen;->mTouchpadLayout:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/samsung/android/desktopmode/VirtualDeviceManager$VirtualDeviceScreen;->mTouchpadLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/samsung/android/desktopmode/VirtualDeviceManager$VirtualDeviceScreen;->mWindow:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/high16 v1, -0x80000000

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    iget-object v1, p0, Lcom/samsung/android/desktopmode/VirtualDeviceManager$VirtualDeviceScreen;->mWindow:Landroid/view/Window;

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Landroid/app/InternalPresentation;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " WindowType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/desktopmode/VirtualDeviceManager$VirtualDeviceScreen;->mWindowType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " LayoutId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/desktopmode/VirtualDeviceManager$VirtualDeviceScreen;->mLayoutId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " isShowing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
