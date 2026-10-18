.class public final Lcom/tencent/qimei/ap/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/qimei/w/a;


# instance fields
.field public final synthetic a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/qimei/ap/c;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 6

    .line 1
    sget-object v0, Lcom/tencent/qimei/an/a;->a:Lcom/tencent/qimei/an/b;

    iget-object v1, p0, Lcom/tencent/qimei/ap/c;->a:Ljava/lang/String;

    .line 2
    iget-boolean v0, v0, Lcom/tencent/qimei/an/b;->a:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    const-string v0, ""

    invoke-static {v1, v0}, Lcom/tencent/qimei/uin/U;->a(Ljava/lang/String;Ljava/lang/String;)B

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    invoke-static {}, Lcom/tencent/qimei/ai/h;->a()Lcom/tencent/qimei/ai/h;

    move-result-object v2

    .line 7
    invoke-static {v2}, Lcom/tencent/qimei/q/b;->a(Lcom/tencent/qimei/ai/h;)Lcom/tencent/qimei/ai/e;

    move-result-object v3

    .line 9
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 10
    iget-object v4, v3, Lcom/tencent/qimei/ai/e;->a:Ljava/util/HashMap;

    const-string v5, "6"

    invoke-virtual {v4, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    const-string/jumbo v0, "v6"

    invoke-virtual {v2, v3, v0, v1}, Lcom/tencent/qimei/ai/h;->a(Lcom/tencent/qimei/ai/e;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
