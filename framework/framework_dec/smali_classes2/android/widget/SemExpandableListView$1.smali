.class Landroid/widget/SemExpandableListView$1;
.super Ljava/lang/Object;
.source "SemExpandableListView.java"

# interfaces
.implements Landroid/widget/SemExpandableListConnector$ItemDecorator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/SemExpandableListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field static final WRAPPING_VIEW_ID:I = 0x7ffffc17


# instance fields
.field final synthetic this$0:Landroid/widget/SemExpandableListView;


# direct methods
.method constructor <init>(Landroid/widget/SemExpandableListView;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/SemExpandableListView$1;->this$0:Landroid/widget/SemExpandableListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private adjustDivider(Landroid/widget/SemExpandableListView$DecoratedItemViewHolder;Z)V
    .locals 7

    iget-object v5, p1, Landroid/widget/SemExpandableListView$DecoratedItemViewHolder;->dividerView:Landroid/view/View;

    if-nez v5, :cond_0

    return-void

    :cond_0
    iget-object v5, p1, Landroid/widget/SemExpandableListView$DecoratedItemViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v5, p0, Landroid/widget/SemExpandableListView$1;->this$0:Landroid/widget/SemExpandableListView;

    invoke-static {v5}, Landroid/widget/SemExpandableListView;->-get18(Landroid/widget/SemExpandableListView;)[I

    move-result-object v5

    const/4 v6, 0x0

    aget v1, v5, v6

    if-eqz p2, :cond_2

    const/16 v2, 0x8

    :goto_0
    if-eqz p2, :cond_3

    const/4 v0, 0x0

    :goto_1
    iget-object v5, p1, Landroid/widget/SemExpandableListView$DecoratedItemViewHolder;->dividerView:Landroid/view/View;

    invoke-virtual {v5, v2}, Landroid/view/View;->setVisibility(I)V

    iput v0, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iget-object v5, p1, Landroid/widget/SemExpandableListView$DecoratedItemViewHolder;->indicatorImgView:Landroid/widget/SemExpandableListView$IndicatorImageView;

    if-eqz v5, :cond_1

    iget-object v5, p1, Landroid/widget/SemExpandableListView$DecoratedItemViewHolder;->indicatorImgView:Landroid/widget/SemExpandableListView$IndicatorImageView;

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    div-int/lit8 v5, v0, 0x2

    iput v5, v4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    :cond_1
    return-void

    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method private initIndicatorImageLayoutParams(Landroid/widget/FrameLayout$LayoutParams;)V
    .locals 1

    iget-object v0, p0, Landroid/widget/SemExpandableListView$1;->this$0:Landroid/widget/SemExpandableListView;

    invoke-static {v0}, Landroid/widget/SemExpandableListView;->-get27(Landroid/widget/SemExpandableListView;)I

    move-result v0

    or-int/lit8 v0, v0, 0x10

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v0, p0, Landroid/widget/SemExpandableListView$1;->this$0:Landroid/widget/SemExpandableListView;

    invoke-static {v0}, Landroid/widget/SemExpandableListView;->-get29(Landroid/widget/SemExpandableListView;)I

    move-result v0

    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget-object v0, p0, Landroid/widget/SemExpandableListView$1;->this$0:Landroid/widget/SemExpandableListView;

    invoke-static {v0}, Landroid/widget/SemExpandableListView;->-get30(Landroid/widget/SemExpandableListView;)I

    move-result v0

    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    return-void
.end method


# virtual methods
.method public onItemDecorate(Landroid/view/View;Landroid/view/View;Landroid/widget/SemExpandableListConnector$PositionMetadata;)Landroid/view/View;
    .locals 21

    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/widget/SemExpandableListConnector$PositionMetadata;->position:Landroid/widget/SemExpandableListPosition;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/widget/SemExpandableListPosition;->flatListPos:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$1;->this$0:Landroid/widget/SemExpandableListView;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Landroid/widget/SemExpandableListView;->-get16(Landroid/widget/SemExpandableListView;)Landroid/widget/SemExpandableListConnector;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/widget/SemExpandableListConnector;->getCount()I

    move-result v20

    add-int/lit8 v20, v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_2

    const/4 v12, 0x1

    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$1;->this$0:Landroid/widget/SemExpandableListView;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/widget/SemExpandableListView;->-get18(Landroid/widget/SemExpandableListView;)[I

    move-result-object v19

    const/16 v20, 0x0

    aget v4, v19, v20

    if-eqz p1, :cond_8

    move-object/from16 v19, p1

    check-cast v19, Landroid/view/ViewGroup;

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    if-ne v0, v1, :cond_8

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v19

    const v20, 0x7ffffc17

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_3

    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/widget/FrameLayout;

    move/from16 v19, v0

    if-eqz v19, :cond_3

    const v19, 0x7a0a1eff

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/widget/SemExpandableListView$DecoratedItemViewHolder;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$1;->this$0:Landroid/widget/SemExpandableListView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Landroid/widget/SemExpandableListView;->-wrap4(Landroid/widget/SemExpandableListView;Landroid/widget/SemExpandableListConnector$PositionMetadata;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    if-eqz v7, :cond_1

    iget-object v0, v7, Landroid/widget/SemExpandableListView$DecoratedItemViewHolder;->indicatorImgView:Landroid/widget/SemExpandableListView$IndicatorImageView;

    move-object/from16 v19, v0

    if-eqz v19, :cond_6

    iget-object v0, v7, Landroid/widget/SemExpandableListView$DecoratedItemViewHolder;->indicatorImgView:Landroid/widget/SemExpandableListView$IndicatorImageView;

    move-object/from16 v19, v0

    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/widget/SemExpandableListConnector$PositionMetadata;->position:Landroid/widget/SemExpandableListPosition;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/SemExpandableListView$IndicatorImageView;->setIndicatorPos(Landroid/widget/SemExpandableListPosition;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$1;->this$0:Landroid/widget/SemExpandableListView;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/widget/SemExpandableListView;->-get10(Landroid/widget/SemExpandableListView;)Landroid/graphics/drawable/Drawable;

    move-result-object v19

    if-nez v19, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$1;->this$0:Landroid/widget/SemExpandableListView;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/widget/SemExpandableListView;->-get25(Landroid/widget/SemExpandableListView;)Landroid/graphics/drawable/Drawable;

    move-result-object v19

    if-nez v19, :cond_4

    iget-object v0, v7, Landroid/widget/SemExpandableListView$DecoratedItemViewHolder;->indicatorImgView:Landroid/widget/SemExpandableListView$IndicatorImageView;

    move-object/from16 v19, v0

    const/16 v20, 0x8

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    iget-object v0, v7, Landroid/widget/SemExpandableListView$DecoratedItemViewHolder;->indicatorImgView:Landroid/widget/SemExpandableListView$IndicatorImageView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->refreshDrawableState()V

    iget-object v0, v7, Landroid/widget/SemExpandableListView$DecoratedItemViewHolder;->indicatorImgView:Landroid/widget/SemExpandableListView$IndicatorImageView;

    move-object/from16 v20, v0

    invoke-virtual/range {p3 .. p3}, Landroid/widget/SemExpandableListConnector$PositionMetadata;->isExpanded()Z

    move-result v19

    if-eqz v19, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$1;->this$0:Landroid/widget/SemExpandableListView;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/widget/SemExpandableListView;->-get0(Landroid/widget/SemExpandableListView;)Ljava/lang/String;

    move-result-object v19

    :goto_2
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, v7, Landroid/widget/SemExpandableListView$DecoratedItemViewHolder;->indicatorImgView:Landroid/widget/SemExpandableListView$IndicatorImageView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Landroid/widget/FrameLayout$LayoutParams;

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Landroid/widget/SemExpandableListView$1;->initIndicatorImageLayoutParams(Landroid/widget/FrameLayout$LayoutParams;)V

    :cond_0
    :goto_3
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v12}, Landroid/widget/SemExpandableListView$1;->adjustDivider(Landroid/widget/SemExpandableListView$DecoratedItemViewHolder;Z)V

    :cond_1
    return-object p1

    :cond_2
    const/4 v12, 0x0

    goto/16 :goto_0

    :cond_3
    new-instance v19, Ljava/lang/IllegalStateException;

    const-string/jumbo v20, "convertView is neither null nor the wrapping FrameLayout"

    invoke-direct/range {v19 .. v20}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v19

    :cond_4
    iget-object v0, v7, Landroid/widget/SemExpandableListView$DecoratedItemViewHolder;->indicatorImgView:Landroid/widget/SemExpandableListView$IndicatorImageView;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$1;->this$0:Landroid/widget/SemExpandableListView;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/widget/SemExpandableListView;->-get3(Landroid/widget/SemExpandableListView;)Ljava/lang/String;

    move-result-object v19

    goto :goto_2

    :cond_6
    if-eqz v8, :cond_0

    const/4 v9, 0x0

    new-instance v9, Landroid/widget/SemExpandableListView$IndicatorImageView;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$1;->this$0:Landroid/widget/SemExpandableListView;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$1;->this$0:Landroid/widget/SemExpandableListView;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Landroid/widget/SemExpandableListView;->-get17(Landroid/widget/SemExpandableListView;)Landroid/content/Context;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v9, v0, v1}, Landroid/widget/SemExpandableListView$IndicatorImageView;-><init>(Landroid/widget/SemExpandableListView;Landroid/content/Context;)V

    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/widget/SemExpandableListConnector$PositionMetadata;->position:Landroid/widget/SemExpandableListPosition;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Landroid/widget/SemExpandableListView$IndicatorImageView;->setIndicatorPos(Landroid/widget/SemExpandableListPosition;)V

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v9}, Landroid/view/View;->refreshDrawableState()V

    new-instance v14, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v19, -0x2

    const/16 v20, -0x2

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-direct {v14, v0, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Landroid/widget/SemExpandableListView$1;->initIndicatorImageLayoutParams(Landroid/widget/FrameLayout$LayoutParams;)V

    invoke-virtual {v9, v14}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v19, p1

    check-cast v19, Landroid/widget/FrameLayout;

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iput-object v9, v7, Landroid/widget/SemExpandableListView$DecoratedItemViewHolder;->indicatorImgView:Landroid/widget/SemExpandableListView$IndicatorImageView;

    iget-object v0, v7, Landroid/widget/SemExpandableListView$DecoratedItemViewHolder;->indicatorImgView:Landroid/widget/SemExpandableListView$IndicatorImageView;

    move-object/from16 v20, v0

    invoke-virtual/range {p3 .. p3}, Landroid/widget/SemExpandableListConnector$PositionMetadata;->isExpanded()Z

    move-result v19

    if-eqz v19, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$1;->this$0:Landroid/widget/SemExpandableListView;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/widget/SemExpandableListView;->-get0(Landroid/widget/SemExpandableListView;)Ljava/lang/String;

    move-result-object v19

    :goto_4
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$1;->this$0:Landroid/widget/SemExpandableListView;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/widget/SemExpandableListView;->-get3(Landroid/widget/SemExpandableListView;)Ljava/lang/String;

    move-result-object v19

    goto :goto_4

    :cond_8
    new-instance v6, Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$1;->this$0:Landroid/widget/SemExpandableListView;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/widget/SemExpandableListView;->-get17(Landroid/widget/SemExpandableListView;)Landroid/content/Context;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v6, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v7, Landroid/widget/SemExpandableListView$DecoratedItemViewHolder;

    const/16 v19, 0x0

    move-object/from16 v0, v19

    invoke-direct {v7, v0}, Landroid/widget/SemExpandableListView$DecoratedItemViewHolder;-><init>(Landroid/widget/SemExpandableListView$DecoratedItemViewHolder;)V

    const v19, 0x7a0a1eff

    move/from16 v0, v19

    invoke-virtual {v6, v0, v7}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    const v19, 0x7ffffc17

    move/from16 v0, v19

    invoke-virtual {v6, v0}, Landroid/view/View;->setId(I)V

    move-object/from16 v0, p2

    invoke-virtual {v6, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    move-object/from16 v0, p2

    iput-object v0, v7, Landroid/widget/SemExpandableListView$DecoratedItemViewHolder;->itemView:Landroid/view/View;

    const/4 v9, 0x0

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTop()I

    move-result v16

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getBottom()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$1;->this$0:Landroid/widget/SemExpandableListView;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/widget/SemExpandableListView;->-get9(Landroid/widget/SemExpandableListView;)I

    move-result v15

    const/4 v10, 0x0

    const/4 v11, 0x0

    if-ltz v2, :cond_9

    move/from16 v0, v16

    if-le v0, v15, :cond_a

    :cond_9
    return-object v6

    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$1;->this$0:Landroid/widget/SemExpandableListView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->isLayoutRtl()Z

    move-result v13

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$1;->this$0:Landroid/widget/SemExpandableListView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getWidth()I

    move-result v18

    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/widget/SemExpandableListConnector$PositionMetadata;->position:Landroid/widget/SemExpandableListPosition;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/widget/SemExpandableListPosition;->type:I

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$1;->this$0:Landroid/widget/SemExpandableListView;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/widget/SemExpandableListView;->-get11(Landroid/widget/SemExpandableListView;)I

    move-result v19

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$1;->this$0:Landroid/widget/SemExpandableListView;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/widget/SemExpandableListView;->-get28(Landroid/widget/SemExpandableListView;)I

    move-result v10

    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$1;->this$0:Landroid/widget/SemExpandableListView;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/widget/SemExpandableListView;->-get12(Landroid/widget/SemExpandableListView;)I

    move-result v19

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$1;->this$0:Landroid/widget/SemExpandableListView;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/widget/SemExpandableListView;->-get31(Landroid/widget/SemExpandableListView;)I

    move-result v11

    :goto_6
    if-eqz v13, :cond_10

    move/from16 v17, v10

    sub-int v10, v18, v11

    sub-int v11, v18, v17

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$1;->this$0:Landroid/widget/SemExpandableListView;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/widget/SemExpandableListView;->-get35(Landroid/widget/SemExpandableListView;)I

    move-result v19

    sub-int v10, v10, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$1;->this$0:Landroid/widget/SemExpandableListView;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/widget/SemExpandableListView;->-get35(Landroid/widget/SemExpandableListView;)I

    move-result v19

    sub-int v11, v11, v19

    :goto_7
    if-eq v10, v11, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$1;->this$0:Landroid/widget/SemExpandableListView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Landroid/widget/SemExpandableListView;->-wrap4(Landroid/widget/SemExpandableListView;Landroid/widget/SemExpandableListConnector$PositionMetadata;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    if-eqz v8, :cond_b

    new-instance v9, Landroid/widget/SemExpandableListView$IndicatorImageView;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$1;->this$0:Landroid/widget/SemExpandableListView;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$1;->this$0:Landroid/widget/SemExpandableListView;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Landroid/widget/SemExpandableListView;->-get17(Landroid/widget/SemExpandableListView;)Landroid/content/Context;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v9, v0, v1}, Landroid/widget/SemExpandableListView$IndicatorImageView;-><init>(Landroid/widget/SemExpandableListView;Landroid/content/Context;)V

    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/widget/SemExpandableListConnector$PositionMetadata;->position:Landroid/widget/SemExpandableListPosition;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Landroid/widget/SemExpandableListView$IndicatorImageView;->setIndicatorPos(Landroid/widget/SemExpandableListPosition;)V

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v9}, Landroid/view/View;->refreshDrawableState()V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$1;->this$0:Landroid/widget/SemExpandableListView;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/widget/SemExpandableListView;->-get26(Landroid/widget/SemExpandableListView;)I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_11

    new-instance v14, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v19, -0x2

    const/16 v20, -0x2

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-direct {v14, v0, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    :goto_8
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Landroid/widget/SemExpandableListView$1;->initIndicatorImageLayoutParams(Landroid/widget/FrameLayout$LayoutParams;)V

    invoke-virtual {v9, v14}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v6, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iput-object v9, v7, Landroid/widget/SemExpandableListView$DecoratedItemViewHolder;->indicatorImgView:Landroid/widget/SemExpandableListView$IndicatorImageView;

    iget-object v0, v7, Landroid/widget/SemExpandableListView$DecoratedItemViewHolder;->indicatorImgView:Landroid/widget/SemExpandableListView$IndicatorImageView;

    move-object/from16 v20, v0

    invoke-virtual/range {p3 .. p3}, Landroid/widget/SemExpandableListConnector$PositionMetadata;->isExpanded()Z

    move-result v19

    if-eqz v19, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$1;->this$0:Landroid/widget/SemExpandableListView;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/widget/SemExpandableListView;->-get0(Landroid/widget/SemExpandableListView;)Ljava/lang/String;

    move-result-object v19

    :goto_9
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_b
    if-lez v4, :cond_c

    new-instance v5, Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$1;->this$0:Landroid/widget/SemExpandableListView;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/widget/SemExpandableListView;->-get17(Landroid/widget/SemExpandableListView;)Landroid/content/Context;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v5, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/view/View;->setFocusable(Z)V

    new-instance v14, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v19, -0x1

    move/from16 v0, v19

    invoke-direct {v14, v0, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v19, 0x50

    move/from16 v0, v19

    iput v0, v14, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {v5, v14}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$1;->this$0:Landroid/widget/SemExpandableListView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Landroid/widget/SemExpandableListView;->-wrap3(Landroid/widget/SemExpandableListView;Landroid/widget/SemExpandableListConnector$PositionMetadata;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v5, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v6, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iput-object v5, v7, Landroid/widget/SemExpandableListView$DecoratedItemViewHolder;->dividerView:Landroid/view/View;

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v12}, Landroid/widget/SemExpandableListView$1;->adjustDivider(Landroid/widget/SemExpandableListView$DecoratedItemViewHolder;Z)V

    :cond_c
    return-object v6

    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$1;->this$0:Landroid/widget/SemExpandableListView;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/widget/SemExpandableListView;->-get11(Landroid/widget/SemExpandableListView;)I

    move-result v10

    goto/16 :goto_5

    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$1;->this$0:Landroid/widget/SemExpandableListView;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/widget/SemExpandableListView;->-get12(Landroid/widget/SemExpandableListView;)I

    move-result v11

    goto/16 :goto_6

    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$1;->this$0:Landroid/widget/SemExpandableListView;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/widget/SemExpandableListView;->-get28(Landroid/widget/SemExpandableListView;)I

    move-result v10

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$1;->this$0:Landroid/widget/SemExpandableListView;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/widget/SemExpandableListView;->-get31(Landroid/widget/SemExpandableListView;)I

    move-result v11

    goto/16 :goto_6

    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$1;->this$0:Landroid/widget/SemExpandableListView;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/widget/SemExpandableListView;->-get34(Landroid/widget/SemExpandableListView;)I

    move-result v19

    add-int v10, v10, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$1;->this$0:Landroid/widget/SemExpandableListView;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/widget/SemExpandableListView;->-get34(Landroid/widget/SemExpandableListView;)I

    move-result v19

    add-int v11, v11, v19

    goto/16 :goto_7

    :cond_11
    new-instance v14, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v19, 0x32

    const/16 v20, 0x32

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-direct {v14, v0, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    goto/16 :goto_8

    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$1;->this$0:Landroid/widget/SemExpandableListView;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/widget/SemExpandableListView;->-get3(Landroid/widget/SemExpandableListView;)Ljava/lang/String;

    move-result-object v19

    goto/16 :goto_9
.end method

.method public unfoldDecoratedView(Landroid/view/View;)Landroid/view/View;
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7ffffc17

    if-ne v0, v1, :cond_1

    instance-of v0, p1, Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1

    nop

    nop

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0

    :cond_1
    return-object p1
.end method
