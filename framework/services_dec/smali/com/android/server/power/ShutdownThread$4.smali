.class final Lcom/android/server/power/ShutdownThread$4;
.super Landroid/app/Dialog;
.source "ShutdownThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/power/ShutdownThread;->createMConfirmDialog(Landroid/content/Context;II)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$ctx:Landroid/content/Context;

.field final synthetic val$description:I

.field final synthetic val$titleText:I


# direct methods
.method constructor <init>(Landroid/content/Context;ILandroid/content/Context;II)V
    .locals 0

    iput-object p3, p0, Lcom/android/server/power/ShutdownThread$4;->val$ctx:Landroid/content/Context;

    iput p4, p0, Lcom/android/server/power/ShutdownThread$4;->val$titleText:I

    iput p5, p0, Lcom/android/server/power/ShutdownThread$4;->val$description:I

    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    const/4 v1, 0x1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Dialog;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0

    :pswitch_0
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-wrap2()V

    return v1

    :pswitch_1
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-wrap2()V

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public init()Landroid/app/Dialog;
    .locals 3

    invoke-virtual {p0}, Lcom/android/server/power/ShutdownThread$4;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v2, 0x80180

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    const/16 v1, 0x7d9

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-virtual {p0}, Lcom/android/server/power/ShutdownThread$4;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    invoke-virtual {p0}, Lcom/android/server/power/ShutdownThread$4;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/Window;->setWindowAnimations(I)V

    return-object p0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 34

    invoke-super/range {p0 .. p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/ShutdownThread$4;->val$ctx:Landroid/content/Context;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const/16 v24, 0x0

    const v27, 0x112006a

    move-object/from16 v0, v22

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v25

    if-eqz v25, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/ShutdownThread$4;->val$ctx:Landroid/content/Context;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/server/power/ShutdownThread;->-wrap0(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v18

    invoke-virtual/range {v22 .. v22}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v27

    move-object/from16 v0, v27

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    move/from16 v27, v0

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_2

    new-instance v26, Landroid/graphics/Rect;

    invoke-virtual/range {v22 .. v22}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v27

    move-object/from16 v0, v27

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v27, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v28

    move-object/from16 v0, v28

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v28, v0

    const/16 v29, 0x0

    const/16 v30, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v29

    move/from16 v2, v30

    move/from16 v3, v27

    move/from16 v4, v28

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    :goto_0
    const/16 v27, 0x3

    move/from16 v0, v27

    new-array v0, v0, [F

    move-object/from16 v17, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Lcom/android/server/power/ShutdownThread$ExtractColor;->getColorHSV(Landroid/graphics/Bitmap;Landroid/graphics/Rect;)[F

    move-result-object v17

    if-nez v17, :cond_3

    const/16 v24, 0x0

    :cond_0
    :goto_1
    new-instance v27, Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/ShutdownThread$4;->val$ctx:Landroid/content/Context;

    move-object/from16 v28, v0

    invoke-direct/range {v27 .. v28}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    invoke-static/range {v27 .. v27}, Lcom/android/server/power/ShutdownThread;->-set3(Landroid/widget/RelativeLayout;)Landroid/widget/RelativeLayout;

    new-instance v23, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v27, -0x1

    const/16 v28, -0x1

    move-object/from16 v0, v23

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-get18()Landroid/widget/RelativeLayout;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v6, Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/ShutdownThread$4;->val$ctx:Landroid/content/Context;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-direct {v6, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance v7, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v27, -0x1

    const/16 v28, -0x1

    move/from16 v0, v27

    move/from16 v1, v28

    invoke-direct {v7, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    if-nez v24, :cond_5

    const/high16 v27, -0x1000000

    move/from16 v0, v27

    invoke-virtual {v6, v0}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    :goto_2
    const/16 v27, 0x0

    move/from16 v0, v27

    invoke-virtual {v6, v0}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    invoke-virtual {v6}, Landroid/widget/RelativeLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v27

    const v28, 0x3f333333    # 0.7f

    invoke-virtual/range {v27 .. v28}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v27

    const-wide/16 v28, 0x12c

    invoke-virtual/range {v27 .. v29}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/view/ViewPropertyAnimator;->start()V

    const/4 v11, 0x2

    new-instance v9, Lcom/samsung/android/cover/CoverManager;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/ShutdownThread$4;->val$ctx:Landroid/content/Context;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-direct {v9, v0}, Lcom/samsung/android/cover/CoverManager;-><init>(Landroid/content/Context;)V

    if-eqz v9, :cond_1

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-get9()Lcom/samsung/android/cover/CoverManager$StateListener;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v9, v0}, Lcom/samsung/android/cover/CoverManager;->registerListener(Lcom/samsung/android/cover/CoverManager$StateListener;)V

    invoke-virtual {v9}, Lcom/samsung/android/cover/CoverManager;->getCoverState()Lcom/samsung/android/cover/CoverState;

    move-result-object v10

    invoke-static {v10}, Lcom/android/server/power/ShutdownThread;->-wrap1(Lcom/samsung/android/cover/CoverState;)Z

    move-result v27

    invoke-static/range {v27 .. v27}, Lcom/android/server/power/ShutdownThread;->-set1(Z)Z

    if-eqz v10, :cond_1

    invoke-virtual {v10}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v11

    :cond_1
    new-instance v27, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/ShutdownThread$4;->val$ctx:Landroid/content/Context;

    move-object/from16 v28, v0

    invoke-direct/range {v27 .. v28}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-static/range {v27 .. v27}, Lcom/android/server/power/ShutdownThread;->-set0(Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;

    new-instance v8, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v27, -0x2

    const/16 v28, -0x2

    move/from16 v0, v27

    move/from16 v1, v28

    invoke-direct {v8, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v27, 0xd

    const/16 v28, -0x1

    move/from16 v0, v27

    move/from16 v1, v28

    invoke-virtual {v8, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-get3()Landroid/widget/LinearLayout;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-get3()Landroid/widget/LinearLayout;

    move-result-object v27

    const/16 v28, 0x1

    invoke-virtual/range {v27 .. v28}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-get3()Landroid/widget/LinearLayout;

    move-result-object v27

    const/16 v28, 0x11

    invoke-virtual/range {v27 .. v28}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v15, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/ShutdownThread$4;->val$ctx:Landroid/content/Context;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-direct {v15, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-get11()Z

    move-result v27

    if-eqz v27, :cond_7

    if-nez v25, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/ShutdownThread$4;->val$ctx:Landroid/content/Context;

    move-object/from16 v27, v0

    const v28, 0x1080a38

    invoke-virtual/range {v27 .. v28}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    :goto_3
    invoke-virtual {v15, v12}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v27, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v28

    move/from16 v0, v28

    int-to-double v0, v0

    move-wide/from16 v28, v0

    const-wide v30, 0x3ff4cccccccccccdL    # 1.3

    mul-double v28, v28, v30

    move-wide/from16 v0, v28

    double-to-int v0, v0

    move/from16 v28, v0

    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v29

    move/from16 v0, v29

    int-to-double v0, v0

    move-wide/from16 v30, v0

    const-wide v32, 0x3ff4cccccccccccdL    # 1.3

    mul-double v30, v30, v32

    move-wide/from16 v0, v30

    double-to-int v0, v0

    move/from16 v29, v0

    invoke-direct/range {v27 .. v29}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, v27

    invoke-virtual {v15, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-get3()Landroid/widget/LinearLayout;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v15}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v20, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/ShutdownThread$4;->val$ctx:Landroid/content/Context;

    move-object/from16 v27, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v27, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v28, -0x2

    const/16 v29, -0x2

    invoke-direct/range {v27 .. v29}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, v20

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/ShutdownThread$4;->val$ctx:Landroid/content/Context;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/ShutdownThread$4;->val$titleText:I

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v20

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v27, 0x2

    const v28, 0x418f5c29    # 17.92f

    move-object/from16 v0, v20

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    if-eqz v25, :cond_9

    if-eqz v24, :cond_9

    const v27, 0x1060150

    move-object/from16 v0, v22

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v27

    move-object/from16 v0, v20

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_4
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-get3()Landroid/widget/LinearLayout;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v13, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/ShutdownThread$4;->val$ctx:Landroid/content/Context;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-direct {v13, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual/range {v22 .. v22}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v21

    const/high16 v27, 0x439b0000    # 310.0f

    const/16 v28, 0x1

    move/from16 v0, v28

    move/from16 v1, v27

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v19

    new-instance v27, Landroid/widget/LinearLayout$LayoutParams;

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v28, v0

    const/16 v29, -0x2

    invoke-direct/range {v27 .. v29}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, v27

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/ShutdownThread$4;->val$ctx:Landroid/content/Context;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/ShutdownThread$4;->val$description:I

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v27, 0x41600000    # 14.0f

    const/16 v28, 0x2

    move/from16 v0, v28

    move/from16 v1, v27

    invoke-virtual {v13, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    const/16 v27, 0x0

    move/from16 v0, v27

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setSingleLine(Z)V

    const/16 v27, 0x3

    move/from16 v0, v27

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setMaxLines(I)V

    const/16 v27, 0x11

    move/from16 v0, v27

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setGravity(I)V

    if-eqz v25, :cond_a

    if-eqz v24, :cond_a

    const v27, 0x1060151

    move-object/from16 v0, v22

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v27

    move/from16 v0, v27

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_5
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-get3()Landroid/widget/LinearLayout;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v27, Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/ShutdownThread$4;->val$ctx:Landroid/content/Context;

    move-object/from16 v28, v0

    invoke-direct/range {v27 .. v28}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    invoke-static/range {v27 .. v27}, Lcom/android/server/power/ShutdownThread;->-set2(Landroid/widget/RelativeLayout;)Landroid/widget/RelativeLayout;

    new-instance v14, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v27, -0x1

    const/16 v28, -0x1

    move/from16 v0, v27

    move/from16 v1, v28

    invoke-direct {v14, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-get7()Landroid/widget/RelativeLayout;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v14}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-get7()Landroid/widget/RelativeLayout;

    move-result-object v27

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    if-eqz v25, :cond_b

    if-eqz v24, :cond_b

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-get7()Landroid/widget/RelativeLayout;

    move-result-object v27

    const/16 v28, -0x1

    invoke-virtual/range {v27 .. v28}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    :goto_6
    new-instance v16, Lcom/android/server/power/ShutdownThread$4$1;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/ShutdownThread$4;->val$ctx:Landroid/content/Context;

    move-object/from16 v27, v0

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-object/from16 v2, v27

    invoke-direct {v0, v1, v2}, Lcom/android/server/power/ShutdownThread$4$1;-><init>(Lcom/android/server/power/ShutdownThread$4;Landroid/content/Context;)V

    invoke-virtual/range {v15 .. v16}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-get18()Landroid/widget/RelativeLayout;

    move-result-object v27

    new-instance v28, Lcom/android/server/power/ShutdownThread$4$2;

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/server/power/ShutdownThread$4$2;-><init>(Lcom/android/server/power/ShutdownThread$4;)V

    invoke-virtual/range {v27 .. v28}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-get18()Landroid/widget/RelativeLayout;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-get18()Landroid/widget/RelativeLayout;

    move-result-object v27

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-get3()Landroid/widget/LinearLayout;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-get18()Landroid/widget/RelativeLayout;

    move-result-object v27

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-get7()Landroid/widget/RelativeLayout;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-get18()Landroid/widget/RelativeLayout;

    move-result-object v27

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/server/power/ShutdownThread$4;->setContentView(Landroid/view/View;)V

    return-void

    :cond_2
    new-instance v26, Landroid/graphics/Rect;

    invoke-virtual/range {v22 .. v22}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v27

    move-object/from16 v0, v27

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v27, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v28

    move-object/from16 v0, v28

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v28, v0

    const/16 v29, 0x0

    const/16 v30, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v29

    move/from16 v2, v30

    move/from16 v3, v27

    move/from16 v4, v28

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    goto/16 :goto_0

    :cond_3
    const-string/jumbo v27, "ShutdownThread"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "Whole Area Hue="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const/16 v29, 0x0

    aget v29, v17, v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string/jumbo v29, ", Saturation="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const/16 v29, 0x1

    aget v29, v17, v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string/jumbo v29, ", Brightness="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const/16 v29, 0x2

    aget v29, v17, v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v27, 0x1

    aget v27, v17, v27

    const v28, 0x3e99999a    # 0.3f

    cmpg-float v27, v27, v28

    if-gez v27, :cond_4

    const/16 v27, 0x2

    aget v27, v17, v27

    const v28, 0x3f6147ae    # 0.88f

    cmpl-float v27, v27, v28

    if-ltz v27, :cond_4

    const/16 v24, 0x1

    goto/16 :goto_1

    :cond_4
    const/16 v24, 0x0

    goto/16 :goto_1

    :cond_5
    const/16 v27, -0x1

    move/from16 v0, v27

    invoke-virtual {v6, v0}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    goto/16 :goto_2

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/ShutdownThread$4;->val$ctx:Landroid/content/Context;

    move-object/from16 v27, v0

    const v28, 0x1080a39

    invoke-virtual/range {v27 .. v28}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    goto/16 :goto_3

    :cond_7
    if-nez v25, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/ShutdownThread$4;->val$ctx:Landroid/content/Context;

    move-object/from16 v27, v0

    const v28, 0x1080a34

    invoke-virtual/range {v27 .. v28}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    goto/16 :goto_3

    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/ShutdownThread$4;->val$ctx:Landroid/content/Context;

    move-object/from16 v27, v0

    const v28, 0x1080a35

    invoke-virtual/range {v27 .. v28}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    goto/16 :goto_3

    :cond_9
    const v27, 0x1060145

    move-object/from16 v0, v22

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v27

    move-object/from16 v0, v20

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_4

    :cond_a
    const v27, 0x1060146

    move-object/from16 v0, v22

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v27

    move/from16 v0, v27

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_5

    :cond_b
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-get7()Landroid/widget/RelativeLayout;

    move-result-object v27

    const/high16 v28, -0x1000000

    invoke-virtual/range {v27 .. v28}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    goto/16 :goto_6
.end method

.method public onStart()V
    .locals 4

    const/4 v3, -0x1

    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    const-string/jumbo v1, "ShutdownThread"

    const-string/jumbo v2, "onStart"

    invoke-static {v1, v2}, Lcom/android/server/power/ShutdownThread$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/power/ShutdownThread$4;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/power/ShutdownThread$4;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v3, v3}, Landroid/view/Window;->setLayout(II)V

    const/high16 v1, 0x3f000000    # 0.5f

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x20000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x1000000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    or-int/lit8 v1, v1, 0x40

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    invoke-virtual {p0}, Lcom/android/server/power/ShutdownThread$4;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/Window;->setWindowAnimations(I)V

    invoke-virtual {p0}, Lcom/android/server/power/ShutdownThread$4;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method
