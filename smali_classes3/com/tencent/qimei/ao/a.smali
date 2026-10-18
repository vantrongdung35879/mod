.class public final Lcom/tencent/qimei/ao/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/qimei/w/a;


# instance fields
.field public final synthetic a:Lcom/tencent/qimei/sdk/S/DataFormatter;

.field public final synthetic b:Lcom/tencent/qimei/sdk/S/DataFormatter;

.field public final synthetic c:Lcom/tencent/qimei/ao/c;


# direct methods
.method public constructor <init>(Lcom/tencent/qimei/ao/c;Lcom/tencent/qimei/sdk/S/DataFormatter;Lcom/tencent/qimei/sdk/S/DataFormatter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/qimei/ao/a;->c:Lcom/tencent/qimei/ao/c;

    iput-object p2, p0, Lcom/tencent/qimei/ao/a;->a:Lcom/tencent/qimei/sdk/S/DataFormatter;

    iput-object p3, p0, Lcom/tencent/qimei/ao/a;->b:Lcom/tencent/qimei/sdk/S/DataFormatter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tencent/qimei/ao/a;->a:Lcom/tencent/qimei/sdk/S/DataFormatter;

    invoke-virtual {v0}, Lcom/tencent/qimei/sdk/S/DataFormatter;->a()Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/qimei/ao/a;->b:Lcom/tencent/qimei/sdk/S/DataFormatter;

    invoke-virtual {v1}, Lcom/tencent/qimei/sdk/S/DataFormatter;->a()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 2
    iget-object v0, p0, Lcom/tencent/qimei/ao/a;->c:Lcom/tencent/qimei/ao/c;

    iget-object v1, p0, Lcom/tencent/qimei/ao/a;->a:Lcom/tencent/qimei/sdk/S/DataFormatter;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "qAucMjh7lsNepLGw"

    invoke-static {v1, v0}, Lcom/tencent/qimei/ao/c;->a(Lcom/tencent/qimei/sdk/S/DataFormatter;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4
    invoke-static {}, Lcom/tencent/qimei/v/a;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, "spread_data"

    invoke-static {v1, v0, v2}, Lcom/tencent/qimei/ad/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
