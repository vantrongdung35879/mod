.class public Lcom/ihoc/mgpa/gradish/t0$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ihoc/mgpa/gradish/t0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/ihoc/mgpa/gradish/t0$a;->a:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/ihoc/mgpa/gradish/t0$a;->b:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/ihoc/mgpa/gradish/t0$a;->c:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Lcom/ihoc/mgpa/gradish/t0$a;->d:Ljava/lang/String;

    .line 6
    iput-object p5, p0, Lcom/ihoc/mgpa/gradish/t0$a;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ihoc/mgpa/gradish/t0$a;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/ihoc/mgpa/toolkit/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ihoc/mgpa/gradish/t0$a;->c:Ljava/lang/String;

    .line 2
    invoke-static {v0}, Lcom/ihoc/mgpa/toolkit/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ihoc/mgpa/gradish/t0$a;->d:Ljava/lang/String;

    .line 3
    invoke-static {v0}, Lcom/ihoc/mgpa/toolkit/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ihoc/mgpa/gradish/t0$a;->e:Ljava/lang/String;

    .line 4
    invoke-static {v0}, Lcom/ihoc/mgpa/toolkit/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ihoc/mgpa/gradish/t0$a;->a:Ljava/lang/String;

    .line 5
    invoke-static {v0}, Lcom/ihoc/mgpa/toolkit/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 4
    :cond_1
    check-cast p1, Lcom/ihoc/mgpa/gradish/t0$a;

    .line 5
    iget-object v2, p0, Lcom/ihoc/mgpa/gradish/t0$a;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/ihoc/mgpa/gradish/t0$a;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/ihoc/mgpa/gradish/t0$a;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/ihoc/mgpa/gradish/t0$a;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/ihoc/mgpa/gradish/t0$a;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/ihoc/mgpa/gradish/t0$a;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/ihoc/mgpa/gradish/t0$a;->d:Ljava/lang/String;

    iget-object v3, p1, Lcom/ihoc/mgpa/gradish/t0$a;->d:Ljava/lang/String;

    .line 7
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/ihoc/mgpa/gradish/t0$a;->e:Ljava/lang/String;

    iget-object p1, p1, Lcom/ihoc/mgpa/gradish/t0$a;->e:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/ihoc/mgpa/gradish/t0$a;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/ihoc/mgpa/gradish/t0$a;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/ihoc/mgpa/gradish/t0$a;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/ihoc/mgpa/gradish/t0$a;->d:Ljava/lang/String;

    iget-object v4, p0, Lcom/ihoc/mgpa/gradish/t0$a;->e:Ljava/lang/String;

    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    const/4 v0, 0x1

    aput-object v1, v5, v0

    const/4 v0, 0x2

    aput-object v2, v5, v0

    const/4 v0, 0x3

    aput-object v3, v5, v0

    const/4 v0, 0x4

    aput-object v4, v5, v0

    invoke-static {v5}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
