.class Lcom/tencent/mna/t3$i;
.super Ljava/lang/Object;
.source "TransportManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/mna/t3;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/mna/t3$i;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/tencent/mna/t3$i;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/tencent/mna/t3$i;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/tencent/mna/u1;->d()Lcom/tencent/mna/u1;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mna/t3$i;->a:Ljava/lang/String;

    .line 2
    invoke-static {v1}, Lcom/tencent/mna/t3;->a(Ljava/lang/String;)[I

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mna/t3$i;->b:Ljava/lang/String;

    .line 3
    invoke-static {v2}, Lcom/tencent/mna/t3;->a(Ljava/lang/String;)[I

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/mna/t3$i;->c:Ljava/lang/String;

    invoke-static {v3}, Lcom/tencent/mna/t3;->a(Ljava/lang/String;)[I

    move-result-object v3

    .line 4
    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/mna/u1;->a([I[I[I)I

    return-void
.end method
