.class public final Lcom/tencent/qimei/ak/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:Lcom/tencent/qimei/ak/e;

.field public final c:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>(Lcom/tencent/qimei/ak/e;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/tencent/qimei/ak/f;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, 0x3

    .line 10
    iput v0, p0, Lcom/tencent/qimei/ak/f;->a:I

    .line 11
    iput-object p1, p0, Lcom/tencent/qimei/ak/f;->b:Lcom/tencent/qimei/ak/e;

    return-void
.end method
