.class Lcom/tencent/mna/h2$c;
.super Ljava/lang/Object;
.source "PingUpload.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/mna/h2;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/tencent/mna/h2;->a()Lcom/tencent/mna/u0;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/tencent/mna/h2;->a()Lcom/tencent/mna/u0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mna/u0;->a()V

    const/4 v0, 0x0

    .line 3
    invoke-static {v0}, Lcom/tencent/mna/h2;->a(Lcom/tencent/mna/u0;)Lcom/tencent/mna/u0;

    const/4 v0, 0x0

    .line 4
    invoke-static {v0}, Lcom/tencent/mna/h2;->b(I)I

    :cond_0
    return-void
.end method
