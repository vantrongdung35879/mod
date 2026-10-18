.class public abstract synthetic Lcom/tencent/qimei/r/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/lang/String;Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/Integer;I)Ljava/lang/Integer;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/tencent/qimei/r/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 2
    invoke-virtual {p1, p2, p0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
