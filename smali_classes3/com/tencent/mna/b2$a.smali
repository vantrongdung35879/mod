.class Lcom/tencent/mna/b2$a;
.super Ljava/lang/Object;
.source "MnaSystem.java"

# interfaces
.implements Lcom/tencent/mna/l$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/mna/b2;->a(Z)V
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
.method public a(II)V
    .locals 1

    .line 1
    new-instance v0, Lcom/tencent/mna/b2$a$a;

    invoke-direct {v0, p0, p1, p2}, Lcom/tencent/mna/b2$a$a;-><init>(Lcom/tencent/mna/b2$a;II)V

    invoke-static {v0}, Lcom/tencent/mna/a2;->b(Ljava/lang/Runnable;)V

    return-void
.end method
