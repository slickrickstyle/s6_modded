.class Lcom/samsung/android/widget/SemColorPicker$2;
.super Ljava/lang/Object;
.source "SemColorPicker.java"

# interfaces
.implements Lcom/samsung/android/widget/SemGradientColorWheel$OnWheelColorChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/widget/SemColorPicker;->initGradientColorWheel()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/widget/SemColorPicker;


# direct methods
.method constructor <init>(Lcom/samsung/android/widget/SemColorPicker;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/widget/SemColorPicker$2;->this$0:Lcom/samsung/android/widget/SemColorPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onColorChanged(FF)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemColorPicker$2;->this$0:Lcom/samsung/android/widget/SemColorPicker;

    invoke-static {v0}, Lcom/samsung/android/widget/SemColorPicker;->-get2(Lcom/samsung/android/widget/SemColorPicker;)Lcom/samsung/android/widget/SemColorPicker$PickedColor;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/widget/SemColorPicker$PickedColor;->setHS(FF)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemColorPicker$2;->this$0:Lcom/samsung/android/widget/SemColorPicker;

    invoke-static {v0}, Lcom/samsung/android/widget/SemColorPicker;->-wrap1(Lcom/samsung/android/widget/SemColorPicker;)V

    return-void
.end method
