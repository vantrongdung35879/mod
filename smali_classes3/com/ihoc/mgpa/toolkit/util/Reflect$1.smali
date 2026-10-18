.class Lcom/ihoc/mgpa/toolkit/util/Reflect$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ihoc/mgpa/toolkit/util/Reflect;->as(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ihoc/mgpa/toolkit/util/Reflect;

.field final synthetic val$isMap:Z


# direct methods
.method constructor <init>(Lcom/ihoc/mgpa/toolkit/util/Reflect;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/ihoc/mgpa/toolkit/util/Reflect$1;->this$0:Lcom/ihoc/mgpa/toolkit/util/Reflect;

    iput-boolean p2, p0, Lcom/ihoc/mgpa/toolkit/util/Reflect$1;->val$isMap:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p1

    .line 5
    :try_start_0
    iget-object p2, p0, Lcom/ihoc/mgpa/toolkit/util/Reflect$1;->this$0:Lcom/ihoc/mgpa/toolkit/util/Reflect;

    invoke-static {p2}, Lcom/ihoc/mgpa/toolkit/util/Reflect;->access$000(Lcom/ihoc/mgpa/toolkit/util/Reflect;)Ljava/lang/Class;

    move-result-object p2

    iget-object v0, p0, Lcom/ihoc/mgpa/toolkit/util/Reflect$1;->this$0:Lcom/ihoc/mgpa/toolkit/util/Reflect;

    invoke-static {v0}, Lcom/ihoc/mgpa/toolkit/util/Reflect;->access$100(Lcom/ihoc/mgpa/toolkit/util/Reflect;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/ihoc/mgpa/toolkit/util/Reflect;->access$200(Ljava/lang/Class;Ljava/lang/Object;)Lcom/ihoc/mgpa/toolkit/util/Reflect;

    move-result-object p2

    invoke-virtual {p2, p1, p3}, Lcom/ihoc/mgpa/toolkit/util/Reflect;->call(Ljava/lang/String;[Ljava/lang/Object;)Lcom/ihoc/mgpa/toolkit/util/Reflect;

    move-result-object p2

    invoke-virtual {p2}, Lcom/ihoc/mgpa/toolkit/util/Reflect;->get()Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Lcom/ihoc/mgpa/toolkit/util/Reflect$ReflectException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p2

    .line 10
    iget-boolean v0, p0, Lcom/ihoc/mgpa/toolkit/util/Reflect$1;->val$isMap:Z

    if-eqz v0, :cond_3

    .line 11
    iget-object v0, p0, Lcom/ihoc/mgpa/toolkit/util/Reflect$1;->this$0:Lcom/ihoc/mgpa/toolkit/util/Reflect;

    invoke-static {v0}, Lcom/ihoc/mgpa/toolkit/util/Reflect;->access$100(Lcom/ihoc/mgpa/toolkit/util/Reflect;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const/4 v1, 0x0

    if-nez p3, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    .line 12
    :cond_0
    array-length v2, p3

    :goto_0
    const/4 v3, 0x3

    if-nez v2, :cond_1

    .line 14
    const-string v4, "get"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 15
    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/ihoc/mgpa/toolkit/util/Reflect;->access$300(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1
    if-nez v2, :cond_2

    .line 17
    const-string v4, "is"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 p2, 0x2

    .line 18
    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/ihoc/mgpa/toolkit/util/Reflect;->access$300(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_2
    const/4 v4, 0x1

    if-ne v2, v4, :cond_3

    .line 20
    const-string v2, "set"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 21
    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/ihoc/mgpa/toolkit/util/Reflect;->access$300(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    aget-object p2, p3, v1

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    return-object p1

    .line 25
    :cond_3
    throw p2
.end method
