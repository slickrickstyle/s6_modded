.class Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage$3;
.super Ljava/lang/Object;
.source "ClearCoverServiceBoxPage.java"

# interfaces
.implements Lcom/android/internal/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mScrollState:I

.field final synthetic this$0:Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;


# direct methods
.method constructor <init>(Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage$3;->this$0:Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage$3;->mScrollState:I

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 4

    const/4 v3, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage$3;->mScrollState:I

    if-ne v0, v1, :cond_2

    cmpl-float v0, p2, v3

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage$3;->this$0:Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;

    invoke-static {v0}, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->-get3(Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;)Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageAdapter;->getCount()I

    move-result v0

    if-le v0, v1, :cond_2

    if-nez p1, :cond_1

    iput v2, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage$3;->mScrollState:I

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage$3;->this$0:Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;

    invoke-static {v0}, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->-get4(Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;)Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxViewPager;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage$3;->this$0:Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;

    invoke-static {v1}, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->-get3(Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;)Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageAdapter;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxViewPager;->setCurrentItem(IZ)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage$3;->this$0:Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;

    invoke-static {v0}, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->-get3(Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;)Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageAdapter;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_0

    iput v2, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage$3;->mScrollState:I

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage$3;->this$0:Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;

    invoke-static {v0}, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->-get4(Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;)Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxViewPager;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxViewPager;->setCurrentItem(IZ)V

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage$3;->mScrollState:I

    if-nez v0, :cond_0

    cmpl-float v0, p2, v3

    if-eqz v0, :cond_0

    iput v1, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage$3;->mScrollState:I

    goto :goto_0
.end method

.method public onPageSelected(I)V
    .locals 4

    iget-object v1, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage$3;->this$0:Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;

    invoke-static {v1}, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->-wrap0(Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage$3;->this$0:Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;

    invoke-static {v1}, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->-get2(Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "lockscreen_aod_servicebox_page"

    invoke-static {v1, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage$3;->this$0:Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;

    invoke-static {v1}, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->-get2(Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "lockscreen_aod_servicebox_page"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_0
    invoke-static {}, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->-get1()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onPageSelected() pageKey = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
