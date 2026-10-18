.class Lcom/tencent/mna/t3$g;
.super Ljava/lang/Object;
.source "TransportManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/mna/t3;->a(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/tencent/mna/t3$g;->a:I

    iput-object p2, p0, Lcom/tencent/mna/t3$g;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/tencent/mna/u1;->d()Lcom/tencent/mna/u1;

    move-result-object v0

    iget v1, p0, Lcom/tencent/mna/t3$g;->a:I

    iget-object v2, p0, Lcom/tencent/mna/t3$g;->b:Ljava/lang/String;

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/tencent/mna/u1;->b(ILjava/lang/String;)I

    return-void
.end method
