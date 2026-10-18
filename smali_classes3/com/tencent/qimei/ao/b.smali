.class public final Lcom/tencent/qimei/ao/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/qimei/w/a;


# instance fields
.field public final synthetic a:[Lcom/tencent/qimei/sdk/S/DataFormatter;

.field public final synthetic b:Lcom/tencent/qimei/ao/c;


# direct methods
.method public constructor <init>(Lcom/tencent/qimei/ao/c;[Lcom/tencent/qimei/sdk/S/DataFormatter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/qimei/ao/b;->b:Lcom/tencent/qimei/ao/c;

    iput-object p2, p0, Lcom/tencent/qimei/ao/b;->a:[Lcom/tencent/qimei/sdk/S/DataFormatter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/tencent/qimei/v/a;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "spread_data"

    invoke-static {v0, v1}, Lcom/tencent/qimei/ad/d;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/tencent/qimei/ao/b;->a:[Lcom/tencent/qimei/sdk/S/DataFormatter;

    iget-object v2, p0, Lcom/tencent/qimei/ao/b;->b:Lcom/tencent/qimei/ao/c;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "qAucMjh7lsNepLGw"

    invoke-static {v0, v2}, Lcom/tencent/qimei/ao/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/qimei/sdk/S/DataFormatter;

    move-result-object v0

    const/4 v2, 0x0

    aput-object v0, v1, v2

    return-void
.end method
