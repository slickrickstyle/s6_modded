.class Lcom/sec/android/app/camera/Camera$28;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/Camera;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/Camera;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/Camera;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/Camera$28;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$28;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-static {v0}, Lcom/sec/android/app/camera/Camera;->access$4100(Lcom/sec/android/app/camera/Camera;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$28;->this$0:Lcom/sec/android/app/camera/Camera;

    const/16 v1, 0x7d0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/Camera;->acquireDVFSMax(I)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$28;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-static {v0}, Lcom/sec/android/app/camera/Camera;->access$4200(Lcom/sec/android/app/camera/Camera;)Lcom/samsung/android/os/SemDvfsManager;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$28;->this$0:Lcom/sec/android/app/camera/Camera;

    iget-object v1, p0, Lcom/sec/android/app/camera/Camera$28;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0x12

    invoke-static {v1, v2}, Lcom/samsung/android/os/SemDvfsManager;->createInstance(Landroid/content/Context;I)Lcom/samsung/android/os/SemDvfsManager;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/Camera;->access$4202(Lcom/sec/android/app/camera/Camera;Lcom/samsung/android/os/SemDvfsManager;)Lcom/samsung/android/os/SemDvfsManager;

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$28;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-static {v0}, Lcom/sec/android/app/camera/Camera;->access$4200(Lcom/sec/android/app/camera/Camera;)Lcom/samsung/android/os/SemDvfsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/os/SemDvfsManager;->acquire()V

    return-void
.end method
