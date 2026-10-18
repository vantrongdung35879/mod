.class public Lcom/tencent/tme/live/e0/e$b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/tme/live/j0/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/tme/live/e0/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public final a:Lcom/tencent/tme/live/j0/b;


# direct methods
.method public constructor <init>(Lcom/tencent/tme/live/j0/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/tme/live/e0/e$b;->a:Lcom/tencent/tme/live/j0/b;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/Object;)Ljava/io/InputStream;
    .locals 2

    invoke-static {p1}, Lcom/tencent/tme/live/j0/b$a;->b(Ljava/lang/String;)Lcom/tencent/tme/live/j0/b$a;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/tencent/tme/live/e0/e$b;->a:Lcom/tencent/tme/live/j0/b;

    invoke-interface {v0, p1, p2}, Lcom/tencent/tme/live/j0/b;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/io/InputStream;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method
