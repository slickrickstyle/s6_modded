.class public Lcom/android/systemui/statusbar/notification/HybridGroupManager;
.super Ljava/lang/Object;
.source "HybridGroupManager.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mOverflowNumberColor:I

.field private mParent:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/HybridGroupManager;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/HybridGroupManager;->mParent:Landroid/view/ViewGroup;

    return-void
.end method

.method private inflateHybridView()Lcom/android/systemui/statusbar/notification/HybridNotificationView;
    .locals 5

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/HybridGroupManager;->mContext:Landroid/content/Context;

    const-class v3, Landroid/view/LayoutInflater;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/HybridGroupManager;->mParent:Landroid/view/ViewGroup;

    const v3, 0x7f04004a

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/HybridGroupManager;->mParent:Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-object v0
.end method

.method private inflateOverflowNumber()Landroid/widget/TextView;
    .locals 5

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/HybridGroupManager;->mContext:Landroid/content/Context;

    const-class v3, Landroid/view/LayoutInflater;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/HybridGroupManager;->mParent:Landroid/view/ViewGroup;

    const v3, 0x7f04004b

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/HybridGroupManager;->mParent:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/notification/HybridGroupManager;->updateOverFlowNumberColor(Landroid/widget/TextView;)V

    return-object v1
.end method

.method private resolveText(Landroid/app/Notification;)Ljava/lang/CharSequence;
    .locals 3

    iget-object v1, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v2, "android.text"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v1, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v2, "android.bigText"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private resolveTitle(Landroid/app/Notification;)Ljava/lang/CharSequence;
    .locals 3

    iget-object v1, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v2, "android.title"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v1, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v2, "android.title.big"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private updateOverFlowNumberColor(Landroid/widget/TextView;)V
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/notification/HybridGroupManager;->mOverflowNumberColor:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method


# virtual methods
.method public bindFromNotification(Lcom/android/systemui/statusbar/notification/HybridNotificationView;Landroid/app/Notification;)Lcom/android/systemui/statusbar/notification/HybridNotificationView;
    .locals 2

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/HybridGroupManager;->inflateHybridView()Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    move-result-object p1

    :cond_0
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/notification/HybridGroupManager;->resolveTitle(Landroid/app/Notification;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/notification/HybridGroupManager;->resolveText(Landroid/app/Notification;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/android/systemui/statusbar/notification/HybridNotificationView;->bind(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    return-object p1
.end method

.method public bindOverflowNumber(Landroid/widget/TextView;I)Landroid/widget/TextView;
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/HybridGroupManager;->inflateOverflowNumber()Landroid/widget/TextView;

    move-result-object p1

    :cond_0
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/HybridGroupManager;->mContext:Landroid/content/Context;

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    const v5, 0x7f0f06c0

    invoke-virtual {v3, v5, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/HybridGroupManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f140001

    invoke-virtual {v3, v4, p2}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    return-object p1

    :cond_1
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setOverflowNumberColor(Landroid/widget/TextView;I)V
    .locals 0

    iput p2, p0, Lcom/android/systemui/statusbar/notification/HybridGroupManager;->mOverflowNumberColor:I

    if-eqz p1, :cond_0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/HybridGroupManager;->updateOverFlowNumberColor(Landroid/widget/TextView;)V

    :cond_0
    return-void
.end method
