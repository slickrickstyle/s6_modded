.class Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter$2;
.super Ljava/lang/Object;
.source "BlueLightFilterTile.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter;->createDetailView(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter$2;->this$1:Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter$2;->this$1:Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter;

    iget-object v0, v0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/BlueLightFilterTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->-get1(Lcom/android/systemui/qs/tiles/BlueLightFilterTile;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/keyguard/KnoxStateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KnoxStateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KnoxStateMonitor;->isBlueLightFilterTileBlocked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
