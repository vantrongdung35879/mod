.class Lcom/ihoc/mgpa/gradish/u0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ihoc/mgpa/gradish/A;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ihoc/mgpa/gradish/u0;->d()Lcom/ihoc/mgpa/gradish/C;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ihoc/mgpa/gradish/u0;


# direct methods
.method constructor <init>(Lcom/ihoc/mgpa/gradish/u0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ihoc/mgpa/gradish/u0$a;->a:Lcom/ihoc/mgpa/gradish/u0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/ihoc/mgpa/gradish/C;Ljava/lang/String;)Z
    .locals 3

    .line 1
    sget-object v0, Lcom/ihoc/mgpa/gradish/C;->e:Lcom/ihoc/mgpa/gradish/C;

    const/4 v1, 0x0

    if-eq p1, v0, :cond_0

    .line 2
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v2, "predownload download config failed, result: "

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/ihoc/mgpa/gradish/C;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p2, v2}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    iget-object p2, p0, Lcom/ihoc/mgpa/gradish/u0$a;->a:Lcom/ihoc/mgpa/gradish/u0;

    invoke-static {p2, p1}, Lcom/ihoc/mgpa/gradish/u0;->a(Lcom/ihoc/mgpa/gradish/u0;Lcom/ihoc/mgpa/gradish/C;)Lcom/ihoc/mgpa/gradish/C;

    goto :goto_0

    :cond_0
    if-nez p2, :cond_1

    .line 5
    new-array p1, v1, [Ljava/lang/Object;

    const-string p2, "predownload download config failed, data is null."

    invoke-static {p2, p1}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 6
    iget-object p1, p0, Lcom/ihoc/mgpa/gradish/u0$a;->a:Lcom/ihoc/mgpa/gradish/u0;

    sget-object p2, Lcom/ihoc/mgpa/gradish/C;->F:Lcom/ihoc/mgpa/gradish/C;

    invoke-static {p1, p2}, Lcom/ihoc/mgpa/gradish/u0;->a(Lcom/ihoc/mgpa/gradish/u0;Lcom/ihoc/mgpa/gradish/C;)Lcom/ihoc/mgpa/gradish/C;

    goto :goto_0

    .line 8
    :cond_1
    iget-object p1, p0, Lcom/ihoc/mgpa/gradish/u0$a;->a:Lcom/ihoc/mgpa/gradish/u0;

    invoke-static {p1, p2}, Lcom/ihoc/mgpa/gradish/u0;->a(Lcom/ihoc/mgpa/gradish/u0;Ljava/lang/String;)Lcom/ihoc/mgpa/gradish/C;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/ihoc/mgpa/gradish/u0;->a(Lcom/ihoc/mgpa/gradish/u0;Lcom/ihoc/mgpa/gradish/C;)Lcom/ihoc/mgpa/gradish/C;

    .line 10
    :goto_0
    iget-object p1, p0, Lcom/ihoc/mgpa/gradish/u0$a;->a:Lcom/ihoc/mgpa/gradish/u0;

    invoke-static {p1}, Lcom/ihoc/mgpa/gradish/u0;->a(Lcom/ihoc/mgpa/gradish/u0;)Lcom/ihoc/mgpa/gradish/C;

    move-result-object p1

    if-ne p1, v0, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    return v1
.end method
