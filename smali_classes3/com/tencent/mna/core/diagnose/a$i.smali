.class Lcom/tencent/mna/core/diagnose/a$i;
.super Ljava/lang/Object;
.source "DiagnoseManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/mna/core/diagnose/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "i"
.end annotation


# instance fields
.field a:Z

.field b:Lcom/tencent/mna/c2$b;

.field c:Lcom/tencent/mna/c2$b;

.field d:Lcom/tencent/mna/c2$b;


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Lcom/tencent/mna/c0;->c()I

    move-result v0

    sget-object v1, Lcom/tencent/mna/core/diagnose/c$a;->NIC:Lcom/tencent/mna/core/diagnose/c$a;

    invoke-static {v0, v1}, Lcom/tencent/mna/core/diagnose/c;->a(ILcom/tencent/mna/core/diagnose/c$a;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    const-string v1, "diagnose, NIC switch off"

    invoke-static {v1}, Lcom/tencent/mna/v1;->a(Ljava/lang/String;)V

    :cond_0
    const/4 v1, 0x4

    if-ne p1, v1, :cond_1

    if-eqz v0, :cond_1

    .line 7
    const-string p1, "diagnose, enable collect net data"

    invoke-static {p1}, Lcom/tencent/mna/v1;->a(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 8
    iput-boolean p1, p0, Lcom/tencent/mna/core/diagnose/a$i;->a:Z

    :cond_1
    return-void
.end method


# virtual methods
.method a()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/tencent/mna/core/diagnose/a$i;->a:Z

    if-eqz v0, :cond_0

    .line 2
    const-string v0, "diagnose, collectPostNetData"

    invoke-static {v0}, Lcom/tencent/mna/v1;->a(Ljava/lang/String;)V

    .line 3
    invoke-static {}, Lcom/tencent/mna/c2;->a()Lcom/tencent/mna/c2$b;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mna/core/diagnose/a$i;->c:Lcom/tencent/mna/c2$b;

    :cond_0
    return-void
.end method

.method b()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/tencent/mna/core/diagnose/a$i;->a:Z

    if-eqz v0, :cond_0

    .line 2
    const-string v0, "diagnose, collectPreNetData"

    invoke-static {v0}, Lcom/tencent/mna/v1;->a(Ljava/lang/String;)V

    .line 3
    invoke-static {}, Lcom/tencent/mna/c2;->a()Lcom/tencent/mna/c2$b;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mna/core/diagnose/a$i;->b:Lcom/tencent/mna/c2$b;

    :cond_0
    return-void
.end method

.method c()Lcom/tencent/mna/c2$b;
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/tencent/mna/core/diagnose/a$i;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mna/core/diagnose/a$i;->d:Lcom/tencent/mna/c2$b;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mna/core/diagnose/a$i;->b:Lcom/tencent/mna/c2$b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mna/core/diagnose/a$i;->c:Lcom/tencent/mna/c2$b;

    if-eqz v0, :cond_0

    .line 2
    const-string v0, "diagnose, getDifNetData"

    invoke-static {v0}, Lcom/tencent/mna/v1;->a(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/tencent/mna/core/diagnose/a$i;->b:Lcom/tencent/mna/c2$b;

    iget-object v1, p0, Lcom/tencent/mna/core/diagnose/a$i;->c:Lcom/tencent/mna/c2$b;

    invoke-static {v0, v1}, Lcom/tencent/mna/c2;->a(Lcom/tencent/mna/c2$b;Lcom/tencent/mna/c2$b;)Lcom/tencent/mna/c2$b;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mna/core/diagnose/a$i;->d:Lcom/tencent/mna/c2$b;

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/tencent/mna/core/diagnose/a$i;->d:Lcom/tencent/mna/c2$b;

    return-object v0
.end method
