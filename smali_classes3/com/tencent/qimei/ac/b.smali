.class public final Lcom/tencent/qimei/ac/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/qimei/w/a;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lcom/tencent/qimei/ac/c;


# direct methods
.method public constructor <init>(Lcom/tencent/qimei/ac/c;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/qimei/ac/b;->b:Lcom/tencent/qimei/ac/c;

    iput-object p2, p0, Lcom/tencent/qimei/ac/b;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tencent/qimei/ac/b;->b:Lcom/tencent/qimei/ac/c;

    .line 2
    iget-object v1, v0, Lcom/tencent/qimei/ac/c;->c:Ljava/lang/String;

    .line 3
    iget-object v2, p0, Lcom/tencent/qimei/ac/b;->a:Ljava/lang/String;

    .line 4
    iget-object v0, v0, Lcom/tencent/qimei/ac/c;->d:Ljava/lang/String;

    .line 5
    invoke-static {v1, v2, v0}, Lcom/tencent/qimei/ad/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
