.class Lcom/tencent/qmsp/sdk/c/k$d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/qmsp/sdk/c/k;->i()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/qmsp/sdk/c/k;


# direct methods
.method constructor <init>(Lcom/tencent/qmsp/sdk/c/k;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qmsp/sdk/c/k$d;->a:Lcom/tencent/qmsp/sdk/c/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/tencent/qmsp/sdk/c/k$d;->a:Lcom/tencent/qmsp/sdk/c/k;

    invoke-static {v0}, Lcom/tencent/qmsp/sdk/c/k;->d(Lcom/tencent/qmsp/sdk/c/k;)V

    return-void
.end method
