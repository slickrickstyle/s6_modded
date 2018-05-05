.class Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;
.super Landroid/widget/BaseAdapter;
.source "LocaleDragAndDropAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter$CustomViewHolder;,
        Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter$OnCheckChangeListener;
    }
.end annotation


# instance fields
.field private mBooster:Lcom/samsung/android/settings/utils/Booster;

.field private final mContext:Landroid/content/Context;

.field private mDragEnabled:Z

.field private final mFeedItemList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/app/LocaleStore$LocaleInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mListener:Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter$OnCheckChangeListener;

.field private mLocalesSetLast:Landroid/os/LocaleList;

.field private mLocalesToSetNext:Landroid/os/LocaleList;

.field private mNumberFormatter:Ljava/text/NumberFormat;

.field private mRemoveMode:Z


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;->mFeedItemList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;)Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter$OnCheckChangeListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;->mListener:Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter$OnCheckChangeListener;

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/app/LocaleStore$LocaleInfo;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;->mLocalesToSetNext:Landroid/os/LocaleList;

    iput-object v0, p0, Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;->mLocalesSetLast:Landroid/os/LocaleList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;->mRemoveMode:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;->mDragEnabled:Z

    invoke-static {}, Ljava/text/NumberFormat;->getNumberInstance()Ljava/text/NumberFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;->mNumberFormatter:Ljava/text/NumberFormat;

    iput-object p2, p0, Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;->mFeedItemList:Ljava/util/List;

    iput-object p1, p0, Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/samsung/android/settings/utils/Booster;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/utils/Booster;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;->mBooster:Lcom/samsung/android/settings/utils/Booster;

    iget-object v0, p0, Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;->mFeedItemList:Ljava/util/List;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "LocaleDragAndDropAdapter"

    const-string/jumbo v1, "init localeList"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;->mFeedItemList:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;->getLocaleList(Ljava/util/List;)Landroid/os/LocaleList;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;->mLocalesToSetNext:Landroid/os/LocaleList;

    :cond_0
    return-void
.end method

.method private getLocaleList(Ljava/util/List;)Landroid/os/LocaleList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/app/LocaleStore$LocaleInfo;",
            ">;)",
            "Landroid/os/LocaleList;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v3, v0, [Ljava/util/Locale;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    invoke-virtual {v2}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v4

    aput-object v4, v3, v1

    const-string/jumbo v4, "LocaleDragAndDropAdapter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "lang["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "]="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v6}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getFullNameNative(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v4, Landroid/os/LocaleList;

    invoke-direct {v4, v3}, Landroid/os/LocaleList;-><init>([Ljava/util/Locale;)V

    return-object v4
.end method


# virtual methods
.method addLocale(Lcom/android/internal/app/LocaleStore$LocaleInfo;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;->mFeedItemList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;->notifyDataSetChanged()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;->doTheUpdate()V

    return-void
.end method

.method public doTheUpdate()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;->mBooster:Lcom/samsung/android/settings/utils/Booster;

    const/16 v1, 0x7d0

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/utils/Booster;->start(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;->mFeedItemList:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;->getLocaleList(Ljava/util/List;)Landroid/os/LocaleList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;->updateLocales(Landroid/os/LocaleList;)V

    return-void
.end method

.method getCheckedCount()I
    .locals 4

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;->mFeedItemList:Ljava/util/List;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    invoke-virtual {v0}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getChecked()Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public getCount()I
    .locals 2

    iget-object v1, p0, Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;->mFeedItemList:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;->mFeedItemList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDragEnabled()Z
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;->getCount()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    iget-boolean v1, p0, Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;->mRemoveMode:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;->mDragEnabled:Z

    :goto_0
    iget-boolean v1, p0, Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;->mDragEnabled:Z

    return v1

    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;->mDragEnabled:Z

    goto :goto_0
.end method

.method getIndexByTitle(Ljava/lang/String;)I
    .locals 5

    const/4 v3, -0x1

    iget-object v4, p0, Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;->mFeedItemList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    iget-object v4, p0, Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;->mFeedItemList:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    iget-object v4, p0, Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v4}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getFullNameNative(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v3, v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v3
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;->mFeedItemList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;->mFeedItemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;->mFeedItemList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    invoke-virtual {v0}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->hashCode()I

    move-result v0

    int-to-long v0, v0

    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10

    const/4 v6, 0x0

    if-nez p2, :cond_1

    iget-object v5, p0, Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    const v7, 0x7f04026c

    invoke-virtual {v5, v7, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    new-instance v3, Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter$CustomViewHolder;

    invoke-direct {v3, p0, p2}, Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter$CustomViewHolder;-><init>(Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;Landroid/view/View;)V

    invoke-virtual {p2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_0
    iget-object v5, p0, Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;->mFeedItemList:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    invoke-virtual {v3}, Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter$CustomViewHolder;->getLocaleDragCell()Lcom/samsung/android/settings/localepicker/LocaleDragCell;

    move-result-object v1

    iget-object v5, p0, Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v5}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getFullNameNative(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getFullNameInUiLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v4, v0}, Lcom/samsung/android/settings/localepicker/LocaleDragCell;->setLabelAndDescription(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->isTranslated()Z

    move-result v5

    invoke-virtual {v1, v5}, Lcom/samsung/android/settings/localepicker/LocaleDragCell;->setLocalized(Z)V

    iget-object v5, p0, Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;->mNumberFormatter:Ljava/text/NumberFormat;

    add-int/lit8 v7, p1, 0x1

    int-to-long v8, v7

    invoke-virtual {v5, v8, v9}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/samsung/android/settings/localepicker/LocaleDragCell;->setMiniLabel(Ljava/lang/String;)V

    iget-boolean v5, p0, Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;->mRemoveMode:Z

    invoke-virtual {v1, v5}, Lcom/samsung/android/settings/localepicker/LocaleDragCell;->setShowCheckbox(Z)V

    iget-boolean v5, p0, Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;->mRemoveMode:Z

    if-eqz v5, :cond_2

    move v5, v6

    :goto_1
    invoke-virtual {v1, v5}, Lcom/samsung/android/settings/localepicker/LocaleDragCell;->setShowMiniLabel(Z)V

    iget-boolean v5, p0, Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;->mRemoveMode:Z

    if-eqz v5, :cond_0

    invoke-virtual {v2}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getChecked()Z

    move-result v6

    :cond_0
    invoke-virtual {v1, v6}, Lcom/samsung/android/settings/localepicker/LocaleDragCell;->setChecked(Z)V

    invoke-virtual {v1}, Lcom/samsung/android/settings/localepicker/LocaleDragCell;->getCheckbox()Landroid/widget/CheckBox;

    move-result-object v5

    new-instance v6, Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter$1;

    invoke-direct {v6, p0, v1}, Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter$1;-><init>(Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;Lcom/samsung/android/settings/localepicker/LocaleDragCell;)V

    invoke-virtual {v5, v6}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;->getDragEnabled()Z

    move-result v5

    invoke-virtual {v1, v5}, Lcom/samsung/android/settings/localepicker/LocaleDragCell;->setDragHandlerPadding(Z)V

    return-object p2

    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter$CustomViewHolder;

    goto :goto_0

    :cond_2
    const/4 v5, 0x1

    goto :goto_1
.end method

.method public hasStableIds()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method moveItem(II)V
    .locals 7

    const/4 v6, 0x0

    if-ltz p1, :cond_0

    if-ltz p2, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;->mFeedItemList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    iget-object v1, p0, Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;->mFeedItemList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object v1, p0, Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;->mFeedItemList:Ljava/util/List;

    invoke-interface {v1, p2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;->notifyDataSetChanged()V

    return-void

    :cond_0
    const-string/jumbo v1, "LocaleDragAndDropAdapter"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v3, "Negative position in moveItem %d -> %d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method removeChecked()V
    .locals 3

    iget-object v2, p0, Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;->mFeedItemList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v2, p0, Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;->mFeedItemList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    invoke-virtual {v2}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;->mFeedItemList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public restoreState(Landroid/os/Bundle;)V
    .locals 4

    if-eqz p1, :cond_3

    iget-boolean v3, p0, Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;->mRemoveMode:Z

    if-eqz v3, :cond_3

    const-string/jumbo v3, "selectedLocales"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;->mFeedItemList:Ljava/util/List;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    invoke-virtual {v0}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->setChecked(Z)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;->notifyDataSetChanged()V

    :cond_3
    return-void
.end method

.method public saveState(Landroid/os/Bundle;)V
    .locals 4

    if-eqz p1, :cond_2

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;->mFeedItemList:Ljava/util/List;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    invoke-virtual {v0}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getChecked()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const-string/jumbo v3, "selectedLocales"

    invoke-virtual {p1, v3, v2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_2
    return-void
.end method

.method public setChecked(IZ)V
    .locals 2

    iget-object v1, p0, Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;->mFeedItemList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    invoke-virtual {v0, p2}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->setChecked(Z)V

    return-void
.end method

.method public setOnCheckedChangeListener(Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter$OnCheckChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;->mListener:Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter$OnCheckChangeListener;

    return-void
.end method

.method setRemoveMode(Z)V
    .locals 4

    iput-boolean p1, p0, Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;->mRemoveMode:Z

    iget-object v2, p0, Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;->mFeedItemList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;->mFeedItemList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->setChecked(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public updateLocales(Landroid/os/LocaleList;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;->mLocalesToSetNext:Landroid/os/LocaleList;

    invoke-virtual {p1, v0}, Landroid/os/LocaleList;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "LocaleDragAndDropAdapter"

    const-string/jumbo v1, "New lang list have not changed."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {p1}, Landroid/os/LocaleList;->setDefault(Landroid/os/LocaleList;)V

    iput-object p1, p0, Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;->mLocalesToSetNext:Landroid/os/LocaleList;

    iget-object v0, p0, Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;->mLocalesToSetNext:Landroid/os/LocaleList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;->mLocalesToSetNext:Landroid/os/LocaleList;

    iget-object v1, p0, Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;->mLocalesSetLast:Landroid/os/LocaleList;

    invoke-virtual {v0, v1}, Landroid/os/LocaleList;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;->mLocalesToSetNext:Landroid/os/LocaleList;

    invoke-static {v0}, Lcom/android/internal/app/LocalePicker;->updateLocales(Landroid/os/LocaleList;)V

    iget-object v0, p0, Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;->mLocalesToSetNext:Landroid/os/LocaleList;

    iput-object v0, p0, Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;->mLocalesSetLast:Landroid/os/LocaleList;

    iput-object v2, p0, Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;->mLocalesToSetNext:Landroid/os/LocaleList;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Ljava/text/NumberFormat;->getNumberInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;->mNumberFormatter:Ljava/text/NumberFormat;

    return-void
.end method
