.class Lcom/perfsight/apm/e/a;
.super Lcom/perfsight/apm/e/d$a;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfsight/apm/e/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/perfsight/apm/e/c;


# direct methods
.method constructor <init>(Lcom/perfsight/apm/e/c;)V
    .locals 0

    iput-object p1, p0, Lcom/perfsight/apm/e/a;->a:Lcom/perfsight/apm/e/c;

    invoke-direct {p0}, Lcom/perfsight/apm/e/d$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget-object v0, p0, Lcom/perfsight/apm/e/a;->a:Lcom/perfsight/apm/e/c;

    invoke-static {v0}, Lcom/perfsight/apm/e/c;->a(Lcom/perfsight/apm/e/c;)Ljava/util/Random;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    return v0
.end method

.method public a(IJZFDLjava/lang/String;)V
    .locals 0

    return-void
.end method
