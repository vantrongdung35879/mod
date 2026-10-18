.class public Lcom/perfsight/apm/b/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/perfsight/apm/b/b;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/perfsight/apm/b/a;->a:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/perfsight/apm/b/a;->b:Z

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Lcom/perfsight/apm/b/c;

    iget-object v1, p0, Lcom/perfsight/apm/b/a;->a:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/perfsight/apm/b/a;->b:Z

    invoke-direct {v0, v1, p1, v2}, Lcom/perfsight/apm/b/c;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {}, Lcom/perfsight/apm/utils/j;->a()Lcom/perfsight/apm/utils/j;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/perfsight/apm/utils/j;->a(Lcom/perfsight/apm/b/c;)V

    return-void
.end method
