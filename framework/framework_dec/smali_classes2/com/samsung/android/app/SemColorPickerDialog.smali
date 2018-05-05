.class public Lcom/samsung/android/app/SemColorPickerDialog;
.super Landroid/app/AlertDialog;
.source "SemColorPickerDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/SemColorPickerDialog$OnColorSetListener;
    }
.end annotation


# instance fields
.field final TAG:Ljava/lang/String;

.field mColorPicker:Lcom/samsung/android/widget/SemColorPicker;

.field private mOnColorSetListener:Lcom/samsung/android/app/SemColorPickerDialog$OnColorSetListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/app/SemColorPickerDialog$OnColorSetListener;)V
    .locals 5

    const v3, 0x1030132

    invoke-direct {p0, p1, v3}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    const-string/jumbo v3, "SemColorPickerDialog"

    iput-object v3, p0, Lcom/samsung/android/app/SemColorPickerDialog;->TAG:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/app/SemColorPickerDialog;->mOnColorSetListener:Lcom/samsung/android/app/SemColorPickerDialog$OnColorSetListener;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v3, 0x10900fa

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    const v3, 0x10405ac

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, -0x1

    invoke-virtual {p0, v4, v3, p0}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const/high16 v3, 0x1040000

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, -0x2

    invoke-virtual {p0, v4, v3, p0}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    const v3, 0x102049a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/widget/SemColorPicker;

    iput-object v3, p0, Lcom/samsung/android/app/SemColorPickerDialog;->mColorPicker:Lcom/samsung/android/widget/SemColorPicker;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/app/SemColorPickerDialog$OnColorSetListener;I)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/SemColorPickerDialog;-><init>(Landroid/content/Context;Lcom/samsung/android/app/SemColorPickerDialog$OnColorSetListener;)V

    iget-object v0, p0, Lcom/samsung/android/app/SemColorPickerDialog;->mColorPicker:Lcom/samsung/android/widget/SemColorPicker;

    invoke-virtual {v0}, Lcom/samsung/android/widget/SemColorPicker;->getRecentColorInfo()Lcom/samsung/android/widget/SemRecentColorInfo;

    move-result-object v0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/widget/SemRecentColorInfo;->setCurrentColor(Ljava/lang/Integer;)V

    iget-object v0, p0, Lcom/samsung/android/app/SemColorPickerDialog;->mColorPicker:Lcom/samsung/android/widget/SemColorPicker;

    invoke-virtual {v0}, Lcom/samsung/android/widget/SemColorPicker;->updateRecentColorLayout()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/app/SemColorPickerDialog$OnColorSetListener;I[I)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/SemColorPickerDialog;-><init>(Landroid/content/Context;Lcom/samsung/android/app/SemColorPickerDialog$OnColorSetListener;)V

    iget-object v0, p0, Lcom/samsung/android/app/SemColorPickerDialog;->mColorPicker:Lcom/samsung/android/widget/SemColorPicker;

    invoke-virtual {v0}, Lcom/samsung/android/widget/SemColorPicker;->getRecentColorInfo()Lcom/samsung/android/widget/SemRecentColorInfo;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/samsung/android/widget/SemRecentColorInfo;->saveRecentColorInfo([I)V

    iget-object v0, p0, Lcom/samsung/android/app/SemColorPickerDialog;->mColorPicker:Lcom/samsung/android/widget/SemColorPicker;

    invoke-virtual {v0}, Lcom/samsung/android/widget/SemColorPicker;->getRecentColorInfo()Lcom/samsung/android/widget/SemRecentColorInfo;

    move-result-object v0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/widget/SemRecentColorInfo;->setCurrentColor(Ljava/lang/Integer;)V

    iget-object v0, p0, Lcom/samsung/android/app/SemColorPickerDialog;->mColorPicker:Lcom/samsung/android/widget/SemColorPicker;

    invoke-virtual {v0}, Lcom/samsung/android/widget/SemColorPicker;->updateRecentColorLayout()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/app/SemColorPickerDialog$OnColorSetListener;[I)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/SemColorPickerDialog;-><init>(Landroid/content/Context;Lcom/samsung/android/app/SemColorPickerDialog$OnColorSetListener;)V

    iget-object v0, p0, Lcom/samsung/android/app/SemColorPickerDialog;->mColorPicker:Lcom/samsung/android/widget/SemColorPicker;

    invoke-virtual {v0}, Lcom/samsung/android/widget/SemColorPicker;->getRecentColorInfo()Lcom/samsung/android/widget/SemRecentColorInfo;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/samsung/android/widget/SemRecentColorInfo;->saveRecentColorInfo([I)V

    iget-object v0, p0, Lcom/samsung/android/app/SemColorPickerDialog;->mColorPicker:Lcom/samsung/android/widget/SemColorPicker;

    invoke-virtual {v0}, Lcom/samsung/android/widget/SemColorPicker;->updateRecentColorLayout()V

    return-void
.end method


# virtual methods
.method public getColorPicker()Lcom/samsung/android/widget/SemColorPicker;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/SemColorPickerDialog;->mColorPicker:Lcom/samsung/android/widget/SemColorPicker;

    return-object v0
.end method

.method public onAttachedToWindow()V
    .locals 0

    invoke-super {p0}, Landroid/app/AlertDialog;->onAttachedToWindow()V

    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    packed-switch p2, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/app/SemColorPickerDialog;->mColorPicker:Lcom/samsung/android/widget/SemColorPicker;

    invoke-virtual {v0}, Lcom/samsung/android/widget/SemColorPicker;->saveSelectedColor()V

    iget-object v0, p0, Lcom/samsung/android/app/SemColorPickerDialog;->mOnColorSetListener:Lcom/samsung/android/app/SemColorPickerDialog$OnColorSetListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/SemColorPickerDialog;->mOnColorSetListener:Lcom/samsung/android/app/SemColorPickerDialog$OnColorSetListener;

    iget-object v1, p0, Lcom/samsung/android/app/SemColorPickerDialog;->mColorPicker:Lcom/samsung/android/widget/SemColorPicker;

    invoke-virtual {v1}, Lcom/samsung/android/widget/SemColorPicker;->getRecentColorInfo()Lcom/samsung/android/widget/SemRecentColorInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/widget/SemRecentColorInfo;->getSelectedColor()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/samsung/android/app/SemColorPickerDialog$OnColorSetListener;->onColorSet(I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onDetachedFromWindow()V
    .locals 0

    invoke-super {p0}, Landroid/app/AlertDialog;->onDetachedFromWindow()V

    return-void
.end method

.method public setNewColor(I)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/SemColorPickerDialog;->mColorPicker:Lcom/samsung/android/widget/SemColorPicker;

    invoke-virtual {v0}, Lcom/samsung/android/widget/SemColorPicker;->getRecentColorInfo()Lcom/samsung/android/widget/SemRecentColorInfo;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/widget/SemRecentColorInfo;->setNewColor(Ljava/lang/Integer;)V

    iget-object v0, p0, Lcom/samsung/android/app/SemColorPickerDialog;->mColorPicker:Lcom/samsung/android/widget/SemColorPicker;

    invoke-virtual {v0}, Lcom/samsung/android/widget/SemColorPicker;->updateRecentColorLayout()V

    return-void
.end method
