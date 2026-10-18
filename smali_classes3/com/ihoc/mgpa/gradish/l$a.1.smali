.class Lcom/ihoc/mgpa/gradish/l$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ihoc/mgpa/toolkit/util/AsyncHttpUtil$HttpCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ihoc/mgpa/gradish/l;->a(Lcom/ihoc/mgpa/gradish/A;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ihoc/mgpa/gradish/A;

.field final synthetic b:Lcom/ihoc/mgpa/gradish/l;


# direct methods
.method constructor <init>(Lcom/ihoc/mgpa/gradish/l;Lcom/ihoc/mgpa/gradish/A;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ihoc/mgpa/gradish/l$a;->b:Lcom/ihoc/mgpa/gradish/l;

    iput-object p2, p0, Lcom/ihoc/mgpa/gradish/l$a;->a:Lcom/ihoc/mgpa/gradish/A;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ihoc/mgpa/gradish/l$a;->b:Lcom/ihoc/mgpa/gradish/l;

    invoke-static {v0}, Lcom/ihoc/mgpa/gradish/l;->a(Lcom/ihoc/mgpa/gradish/l;)Lcom/ihoc/mgpa/gradish/l$c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ihoc/mgpa/gradish/l$c;->b()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const-string v0, "%s async download config failed."

    invoke-static {v0, v1}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onResponse(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ihoc/mgpa/gradish/l$a;->b:Lcom/ihoc/mgpa/gradish/l;

    iget-object v1, p0, Lcom/ihoc/mgpa/gradish/l$a;->a:Lcom/ihoc/mgpa/gradish/A;

    invoke-static {v0, p1, v1}, Lcom/ihoc/mgpa/gradish/l;->a(Lcom/ihoc/mgpa/gradish/l;Ljava/lang/String;Lcom/ihoc/mgpa/gradish/A;)V

    return-void
.end method
