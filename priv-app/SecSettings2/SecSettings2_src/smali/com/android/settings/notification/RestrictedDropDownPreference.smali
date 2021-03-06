.class public Lcom/android/settings/notification/RestrictedDropDownPreference;
.super Lcom/android/settings/SecDropDownPreference;
.source "RestrictedDropDownPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/notification/RestrictedDropDownPreference$1;,
        Lcom/android/settings/notification/RestrictedDropDownPreference$ReselectionSpinner;,
        Lcom/android/settings/notification/RestrictedDropDownPreference$RestrictedArrayItemAdapter;,
        Lcom/android/settings/notification/RestrictedDropDownPreference$RestrictedItem;
    }
.end annotation


# instance fields
.field private final mHelper:Lcom/samsung/android/settingslib/RestrictedPreferenceHelper;

.field private final mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private mRestrictedItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/notification/RestrictedDropDownPreference$RestrictedItem;",
            ">;"
        }
    .end annotation
.end field

.field private mSpinner:Lcom/android/settings/notification/RestrictedDropDownPreference$ReselectionSpinner;

.field private mUserClicked:Z


# direct methods
.method static synthetic -get0(Lcom/android/settings/notification/RestrictedDropDownPreference;)Lcom/android/settings/notification/RestrictedDropDownPreference$ReselectionSpinner;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/notification/RestrictedDropDownPreference;->mSpinner:Lcom/android/settings/notification/RestrictedDropDownPreference$ReselectionSpinner;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/settings/notification/RestrictedDropDownPreference;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/notification/RestrictedDropDownPreference;->mUserClicked:Z

    return v0
.end method

.method static synthetic -set0(Lcom/android/settings/notification/RestrictedDropDownPreference;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/notification/RestrictedDropDownPreference;->mUserClicked:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/settings/notification/RestrictedDropDownPreference;Ljava/lang/Object;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/settings/notification/RestrictedDropDownPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/settings/notification/RestrictedDropDownPreference;Ljava/lang/CharSequence;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/settings/notification/RestrictedDropDownPreference;->isRestrictedForEntry(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/android/settings/notification/RestrictedDropDownPreference;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/notification/RestrictedDropDownPreference;->isUserClicked()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(Lcom/android/settings/notification/RestrictedDropDownPreference;Ljava/lang/CharSequence;)Lcom/android/settings/notification/RestrictedDropDownPreference$RestrictedItem;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/settings/notification/RestrictedDropDownPreference;->getRestrictedItemForEntryValue(Ljava/lang/CharSequence;)Lcom/android/settings/notification/RestrictedDropDownPreference$RestrictedItem;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap4(Lcom/android/settings/notification/RestrictedDropDownPreference;I)Lcom/android/settings/notification/RestrictedDropDownPreference$RestrictedItem;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/settings/notification/RestrictedDropDownPreference;->getRestrictedItemForPosition(I)Lcom/android/settings/notification/RestrictedDropDownPreference$RestrictedItem;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap5(Lcom/android/settings/notification/RestrictedDropDownPreference;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/notification/RestrictedDropDownPreference;->setUserClicked(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/settings/SecDropDownPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/notification/RestrictedDropDownPreference;->mRestrictedItems:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/notification/RestrictedDropDownPreference;->mUserClicked:Z

    new-instance v0, Lcom/android/settings/notification/RestrictedDropDownPreference$1;

    invoke-direct {v0, p0}, Lcom/android/settings/notification/RestrictedDropDownPreference$1;-><init>(Lcom/android/settings/notification/RestrictedDropDownPreference;)V

    iput-object v0, p0, Lcom/android/settings/notification/RestrictedDropDownPreference;->mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    const v0, 0x7f040249

    invoke-virtual {p0, v0}, Lcom/android/settings/notification/RestrictedDropDownPreference;->setWidgetLayoutResource(I)V

    invoke-virtual {p0}, Lcom/android/settings/notification/RestrictedDropDownPreference;->getSpinner()Landroid/widget/Spinner;

    move-result-object v0

    check-cast v0, Lcom/android/settings/notification/RestrictedDropDownPreference$ReselectionSpinner;

    iput-object v0, p0, Lcom/android/settings/notification/RestrictedDropDownPreference;->mSpinner:Lcom/android/settings/notification/RestrictedDropDownPreference$ReselectionSpinner;

    new-instance v0, Lcom/samsung/android/settingslib/RestrictedPreferenceHelper;

    invoke-direct {v0, p1, p0, p2}, Lcom/samsung/android/settingslib/RestrictedPreferenceHelper;-><init>(Landroid/content/Context;Landroid/preference/Preference;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/android/settings/notification/RestrictedDropDownPreference;->mHelper:Lcom/samsung/android/settingslib/RestrictedPreferenceHelper;

    return-void
.end method

.method private getRestrictedItemForEntryValue(Ljava/lang/CharSequence;)Lcom/android/settings/notification/RestrictedDropDownPreference$RestrictedItem;
    .locals 4

    const/4 v3, 0x0

    if-nez p1, :cond_0

    return-object v3

    :cond_0
    iget-object v2, p0, Lcom/android/settings/notification/RestrictedDropDownPreference;->mRestrictedItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/notification/RestrictedDropDownPreference$RestrictedItem;

    iget-object v2, v0, Lcom/android/settings/notification/RestrictedDropDownPreference$RestrictedItem;->entryValue:Ljava/lang/CharSequence;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v0

    :cond_2
    return-object v3
.end method

.method private getRestrictedItemForPosition(I)Lcom/android/settings/notification/RestrictedDropDownPreference$RestrictedItem;
    .locals 2

    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/notification/RestrictedDropDownPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v1

    array-length v1, v1

    if-lt p1, v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    return-object v1

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/notification/RestrictedDropDownPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v1

    aget-object v0, v1, p1

    invoke-direct {p0, v0}, Lcom/android/settings/notification/RestrictedDropDownPreference;->getRestrictedItemForEntryValue(Ljava/lang/CharSequence;)Lcom/android/settings/notification/RestrictedDropDownPreference$RestrictedItem;

    move-result-object v1

    return-object v1
.end method

.method private isRestrictedForEntry(Ljava/lang/CharSequence;)Z
    .locals 4

    const/4 v3, 0x0

    if-nez p1, :cond_0

    return v3

    :cond_0
    iget-object v2, p0, Lcom/android/settings/notification/RestrictedDropDownPreference;->mRestrictedItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/notification/RestrictedDropDownPreference$RestrictedItem;

    iget-object v2, v0, Lcom/android/settings/notification/RestrictedDropDownPreference$RestrictedItem;->entry:Ljava/lang/CharSequence;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    return v2

    :cond_2
    return v3
.end method

.method private isUserClicked()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/notification/RestrictedDropDownPreference;->mUserClicked:Z

    return v0
.end method

.method private setUserClicked(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/notification/RestrictedDropDownPreference;->mUserClicked:Z

    return-void
.end method


# virtual methods
.method public addRestrictedItem(Lcom/android/settings/notification/RestrictedDropDownPreference$RestrictedItem;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/notification/RestrictedDropDownPreference;->mRestrictedItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public clearRestrictedItems()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/notification/RestrictedDropDownPreference;->mRestrictedItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method protected createAdapter()Landroid/widget/ArrayAdapter;
    .locals 2

    new-instance v0, Lcom/android/settings/notification/RestrictedDropDownPreference$RestrictedArrayItemAdapter;

    invoke-virtual {p0}, Lcom/android/settings/notification/RestrictedDropDownPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/settings/notification/RestrictedDropDownPreference$RestrictedArrayItemAdapter;-><init>(Lcom/android/settings/notification/RestrictedDropDownPreference;Landroid/content/Context;)V

    return-object v0
.end method

.method protected bridge synthetic createSpinner(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/widget/Spinner;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/notification/RestrictedDropDownPreference;->createSpinner(Landroid/content/Context;Landroid/util/AttributeSet;)Lcom/android/settings/notification/RestrictedDropDownPreference$ReselectionSpinner;

    move-result-object v0

    return-object v0
.end method

.method protected createSpinner(Landroid/content/Context;Landroid/util/AttributeSet;)Lcom/android/settings/notification/RestrictedDropDownPreference$ReselectionSpinner;
    .locals 1

    new-instance v0, Lcom/android/settings/notification/RestrictedDropDownPreference$ReselectionSpinner;

    invoke-direct {v0, p1, p2}, Lcom/android/settings/notification/RestrictedDropDownPreference$ReselectionSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public isDisabledByAdmin()Z
    .locals 1

    iget-object v0, p0, Lcom/android/settings/notification/RestrictedDropDownPreference;->mHelper:Lcom/samsung/android/settingslib/RestrictedPreferenceHelper;

    invoke-virtual {v0}, Lcom/samsung/android/settingslib/RestrictedPreferenceHelper;->isDisabledByAdmin()Z

    move-result v0

    return v0
.end method

.method public onBindView(Landroid/view/View;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/android/settings/SecDropDownPreference;->onBindView(Landroid/view/View;)V

    iget-object v2, p0, Lcom/android/settings/notification/RestrictedDropDownPreference;->mHelper:Lcom/samsung/android/settingslib/RestrictedPreferenceHelper;

    invoke-virtual {v2, p1}, Lcom/samsung/android/settingslib/RestrictedPreferenceHelper;->onBindView(Landroid/view/View;)V

    iget-object v2, p0, Lcom/android/settings/notification/RestrictedDropDownPreference;->mSpinner:Lcom/android/settings/notification/RestrictedDropDownPreference$ReselectionSpinner;

    invoke-virtual {v2, p0}, Lcom/android/settings/notification/RestrictedDropDownPreference$ReselectionSpinner;->setPreference(Lcom/android/settings/notification/RestrictedDropDownPreference;)V

    iget-object v2, p0, Lcom/android/settings/notification/RestrictedDropDownPreference;->mSpinner:Lcom/android/settings/notification/RestrictedDropDownPreference$ReselectionSpinner;

    iget-object v3, p0, Lcom/android/settings/notification/RestrictedDropDownPreference;->mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v2, v3}, Lcom/android/settings/notification/RestrictedDropDownPreference$ReselectionSpinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    iget-object v2, p0, Lcom/android/settings/notification/RestrictedDropDownPreference;->mSpinner:Lcom/android/settings/notification/RestrictedDropDownPreference$ReselectionSpinner;

    invoke-virtual {p0}, Lcom/android/settings/notification/RestrictedDropDownPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/settings/notification/RestrictedDropDownPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/settings/notification/RestrictedDropDownPreference$ReselectionSpinner;->setSelection(I)V

    const v2, 0x1020018

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f11046f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/notification/RestrictedDropDownPreference;->isDisabledByAdmin()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void

    :cond_1
    const/16 v2, 0x8

    goto :goto_0
.end method

.method public onClick()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/notification/RestrictedDropDownPreference;->mHelper:Lcom/samsung/android/settingslib/RestrictedPreferenceHelper;

    invoke-virtual {v0}, Lcom/samsung/android/settingslib/RestrictedPreferenceHelper;->performClick()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/notification/RestrictedDropDownPreference;->mUserClicked:Z

    invoke-super {p0}, Lcom/android/settings/SecDropDownPreference;->onClick()V

    :cond_0
    return-void
.end method

.method public setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/notification/RestrictedDropDownPreference;->mHelper:Lcom/samsung/android/settingslib/RestrictedPreferenceHelper;

    invoke-virtual {v0, p1}, Lcom/samsung/android/settingslib/RestrictedPreferenceHelper;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/notification/RestrictedDropDownPreference;->notifyChanged()V

    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/notification/RestrictedDropDownPreference;->isDisabledByAdmin()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/notification/RestrictedDropDownPreference;->mHelper:Lcom/samsung/android/settingslib/RestrictedPreferenceHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/settingslib/RestrictedPreferenceHelper;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)Z

    return-void

    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/SecDropDownPreference;->setEnabled(Z)V

    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/settings/notification/RestrictedDropDownPreference;->getRestrictedItemForEntryValue(Ljava/lang/CharSequence;)Lcom/android/settings/notification/RestrictedDropDownPreference$RestrictedItem;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/SecDropDownPreference;->setValue(Ljava/lang/String;)V

    return-void
.end method
