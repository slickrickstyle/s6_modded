.class Lcom/samsung/android/settings/localepicker/LocaleListEditor$1;
.super Ljava/lang/Object;
.source "LocaleListEditor.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/localepicker/LocaleListEditor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/localepicker/LocaleListEditor;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/localepicker/LocaleListEditor;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor$1;->this$0:Lcom/samsung/android/settings/localepicker/LocaleListEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    const/4 v1, 0x1

    instance-of v0, p2, Lcom/samsung/android/settings/localepicker/LocaleDragCell;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor$1;->this$0:Lcom/samsung/android/settings/localepicker/LocaleListEditor;

    invoke-static {v0}, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->-get6(Lcom/samsung/android/settings/localepicker/LocaleListEditor;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor$1;->this$0:Lcom/samsung/android/settings/localepicker/LocaleListEditor;

    invoke-static {v0, v1}, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->-wrap2(Lcom/samsung/android/settings/localepicker/LocaleListEditor;Z)V

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
