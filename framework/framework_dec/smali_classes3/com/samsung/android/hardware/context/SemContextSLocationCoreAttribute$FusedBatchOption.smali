.class Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute$FusedBatchOption;
.super Ljava/lang/Object;
.source "SemContextSLocationCoreAttribute.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FusedBatchOption"
.end annotation


# instance fields
.field distance_thrs:F

.field flags:I

.field max_power:D

.field period:J

.field final synthetic this$0:Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;

.field user_info:I


# direct methods
.method constructor <init>(Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;JIIDF)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute$FusedBatchOption;->this$0:Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p2, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute$FusedBatchOption;->period:J

    iput p4, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute$FusedBatchOption;->user_info:I

    iput p5, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute$FusedBatchOption;->flags:I

    iput-wide p6, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute$FusedBatchOption;->max_power:D

    iput p8, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute$FusedBatchOption;->distance_thrs:F

    return-void
.end method


# virtual methods
.method isValid()Z
    .locals 5

    const/4 v4, 0x0

    iget-wide v0, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute$FusedBatchOption;->period:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const-string/jumbo v0, "SemContextSLocationCoreAttribute"

    const-string/jumbo v1, "FusedBatchOption.period is wrong."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_0
    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute$FusedBatchOption;->user_info:I

    if-gez v0, :cond_1

    const-string/jumbo v0, "SemContextSLocationCoreAttribute"

    const-string/jumbo v1, "FusedBatchOption.user_info is wrong."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_1
    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute$FusedBatchOption;->flags:I

    if-gez v0, :cond_2

    const-string/jumbo v0, "SemContextSLocationCoreAttribute"

    const-string/jumbo v1, "FusedBatchOption.flags is wrong."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_2
    iget-wide v0, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute$FusedBatchOption;->max_power:D

    const-wide/16 v2, 0x0

    cmpg-double v0, v0, v2

    if-gez v0, :cond_3

    const-string/jumbo v0, "SemContextSLocationCoreAttribute"

    const-string/jumbo v1, "FusedBatchOption.max_power is wrong."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_3
    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute$FusedBatchOption;->distance_thrs:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_4

    const-string/jumbo v0, "SemContextSLocationCoreAttribute"

    const-string/jumbo v1, "FusedBatchOption.distance_thrs is wrong."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_4
    const/4 v0, 0x1

    return v0
.end method
