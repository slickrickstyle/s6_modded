.class Lcom/android/settings/applications/ManageAssist$1;
.super Ljava/lang/Object;
.source "ManageAssist.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/applications/ManageAssist;->postUpdateUi()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/applications/ManageAssist;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/ManageAssist;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/applications/ManageAssist$1;->this$0:Lcom/android/settings/applications/ManageAssist;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/applications/ManageAssist$1;->this$0:Lcom/android/settings/applications/ManageAssist;

    invoke-static {v0}, Lcom/android/settings/applications/ManageAssist;->-wrap1(Lcom/android/settings/applications/ManageAssist;)V

    return-void
.end method
