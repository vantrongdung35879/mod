.class public final Lcom/tencent/tme/live/b2/a$b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/tme/live/b2/e$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/tme/live/b2/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation


# instance fields
.field public a:Lcom/tencent/tme/live/b2/a$b;

.field public b:Lcom/tencent/tme/live/b2/a$b;

.field public final c:Ljava/lang/String;

.field public d:Lcom/tencent/tme/live/b2/c;

.field public final e:Lcom/tencent/tme/live/b2/c$a;

.field public final synthetic f:Lcom/tencent/tme/live/b2/a;


# direct methods
.method public constructor <init>(Lcom/tencent/tme/live/b2/a;Lcom/tencent/tme/live/b2/a$b;Lcom/tencent/tme/live/b2/a$b;Ljava/lang/String;Lcom/tencent/tme/live/b2/c;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/tme/live/b2/a$b;->f:Lcom/tencent/tme/live/b2/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p5, :cond_1

    if-eqz p4, :cond_0

    iput-object p2, p0, Lcom/tencent/tme/live/b2/a$b;->a:Lcom/tencent/tme/live/b2/a$b;

    iput-object p3, p0, Lcom/tencent/tme/live/b2/a$b;->b:Lcom/tencent/tme/live/b2/a$b;

    iput-object p4, p0, Lcom/tencent/tme/live/b2/a$b;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/tencent/tme/live/b2/a$b;->d:Lcom/tencent/tme/live/b2/c;

    new-instance p2, Lcom/tencent/tme/live/b2/a$b$a;

    invoke-direct {p2, p0, p1}, Lcom/tencent/tme/live/b2/a$b$a;-><init>(Lcom/tencent/tme/live/b2/a$b;Lcom/tencent/tme/live/b2/a;)V

    iput-object p2, p0, Lcom/tencent/tme/live/b2/a$b;->e:Lcom/tencent/tme/live/b2/c$a;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "name"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "filter"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public synthetic constructor <init>(Lcom/tencent/tme/live/b2/a;Lcom/tencent/tme/live/b2/a$b;Lcom/tencent/tme/live/b2/a$b;Ljava/lang/String;Lcom/tencent/tme/live/b2/c;Lcom/tencent/tme/live/b2/a$a;)V
    .locals 6

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/tencent/tme/live/b2/a$b;-><init>(Lcom/tencent/tme/live/b2/a;Lcom/tencent/tme/live/b2/a$b;Lcom/tencent/tme/live/b2/a$b;Ljava/lang/String;Lcom/tencent/tme/live/b2/c;)V

    return-void
.end method

.method public static synthetic a(Lcom/tencent/tme/live/b2/a$b;Lcom/tencent/tme/live/b2/a$b;)Lcom/tencent/tme/live/b2/a$b;
    .locals 0

    iput-object p1, p0, Lcom/tencent/tme/live/b2/a$b;->b:Lcom/tencent/tme/live/b2/a$b;

    return-object p1
.end method

.method public static a(Lcom/tencent/tme/live/b2/a$b;Lcom/tencent/tme/live/b2/c;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    iput-object p1, p0, Lcom/tencent/tme/live/b2/a$b;->d:Lcom/tencent/tme/live/b2/c;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "filter"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public a()Lcom/tencent/tme/live/b2/c$a;
    .locals 1

    iget-object v0, p0, Lcom/tencent/tme/live/b2/a$b;->e:Lcom/tencent/tme/live/b2/c$a;

    return-object v0
.end method

.method public b()Lcom/tencent/tme/live/b2/c;
    .locals 1

    iget-object v0, p0, Lcom/tencent/tme/live/b2/a$b;->d:Lcom/tencent/tme/live/b2/c;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/tme/live/b2/a$b;->c:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "(\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1
    iget-object v1, p0, Lcom/tencent/tme/live/b2/a$b;->c:Ljava/lang/String;

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', prev: \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/tme/live/b2/a$b;->a:Lcom/tencent/tme/live/b2/a$b;

    const/16 v2, 0x3a

    const-string v3, "null"

    if-eqz v1, :cond_0

    iget-object v1, v1, Lcom/tencent/tme/live/b2/a$b;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/tme/live/b2/a$b;->a:Lcom/tencent/tme/live/b2/a$b;

    .line 3
    iget-object v1, v1, Lcom/tencent/tme/live/b2/a$b;->d:Lcom/tencent/tme/live/b2/c;

    .line 4
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const-string v1, "\', next: \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/tme/live/b2/a$b;->b:Lcom/tencent/tme/live/b2/a$b;

    if-eqz v1, :cond_1

    iget-object v1, v1, Lcom/tencent/tme/live/b2/a$b;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/tme/live/b2/a$b;->b:Lcom/tencent/tme/live/b2/a$b;

    .line 5
    iget-object v1, v1, Lcom/tencent/tme/live/b2/a$b;->d:Lcom/tencent/tme/live/b2/c;

    .line 6
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    const-string v1, "\')"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
