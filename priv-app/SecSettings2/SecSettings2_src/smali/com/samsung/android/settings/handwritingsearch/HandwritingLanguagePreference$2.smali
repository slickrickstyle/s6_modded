.class Lcom/samsung/android/settings/handwritingsearch/HandwritingLanguagePreference$2;
.super Ljava/lang/Object;
.source "HandwritingLanguagePreference.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/handwritingsearch/HandwritingLanguagePreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/handwritingsearch/HandwritingLanguagePreference;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/handwritingsearch/HandwritingLanguagePreference;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/handwritingsearch/HandwritingLanguagePreference$2;->this$0:Lcom/samsung/android/settings/handwritingsearch/HandwritingLanguagePreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/settings/handwritingsearch/HandwritingLanguagePreference$2;->this$0:Lcom/samsung/android/settings/handwritingsearch/HandwritingLanguagePreference;

    invoke-static {v0}, Lcom/samsung/android/settings/handwritingsearch/HandwritingLanguagePreference;->-get1(Lcom/samsung/android/settings/handwritingsearch/HandwritingLanguagePreference;)Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p3, v1}, Landroid/widget/ListView;->setItemChecked(IZ)V

    iget-object v0, p0, Lcom/samsung/android/settings/handwritingsearch/HandwritingLanguagePreference$2;->this$0:Lcom/samsung/android/settings/handwritingsearch/HandwritingLanguagePreference;

    invoke-static {v0}, Lcom/samsung/android/settings/handwritingsearch/HandwritingLanguagePreference;->-get2(Lcom/samsung/android/settings/handwritingsearch/HandwritingLanguagePreference;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/handwritingsearch/HandwritingLanguagePreference$2;->this$0:Lcom/samsung/android/settings/handwritingsearch/HandwritingLanguagePreference;

    invoke-static {v1}, Lcom/samsung/android/settings/handwritingsearch/HandwritingLanguagePreference;->-wrap0(Lcom/samsung/android/settings/handwritingsearch/HandwritingLanguagePreference;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
