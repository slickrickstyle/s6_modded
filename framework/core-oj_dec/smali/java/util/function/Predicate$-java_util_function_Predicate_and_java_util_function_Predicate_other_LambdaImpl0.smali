.class final synthetic Ljava/util/function/Predicate$-java_util_function_Predicate_and_java_util_function_Predicate_other_LambdaImpl0;
.super Ljava/lang/Object;
.source "Predicate.java"

# interfaces
.implements Ljava/util/function/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/function/Predicate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1010
    name = "-java_util_function_Predicate_and_java_util_function_Predicate_other_LambdaImpl0"
.end annotation


# instance fields
.field private synthetic val$other:Ljava/util/function/Predicate;

.field private synthetic val$this:Ljava/util/function/Predicate;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/Predicate;Ljava/util/function/Predicate;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/util/function/Predicate$-java_util_function_Predicate_and_java_util_function_Predicate_other_LambdaImpl0;->val$this:Ljava/util/function/Predicate;

    iput-object p2, p0, Ljava/util/function/Predicate$-java_util_function_Predicate_and_java_util_function_Predicate_other_LambdaImpl0;->val$other:Ljava/util/function/Predicate;

    return-void
.end method


# virtual methods
.method public test(Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Ljava/util/function/Predicate$-java_util_function_Predicate_and_java_util_function_Predicate_other_LambdaImpl0;->val$this:Ljava/util/function/Predicate;

    iget-object v1, p0, Ljava/util/function/Predicate$-java_util_function_Predicate_and_java_util_function_Predicate_other_LambdaImpl0;->val$other:Ljava/util/function/Predicate;

    invoke-interface {v0, v1, p1}, Ljava/util/function/Predicate;->-java_util_function_Predicate_lambda$1(Ljava/util/function/Predicate;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
