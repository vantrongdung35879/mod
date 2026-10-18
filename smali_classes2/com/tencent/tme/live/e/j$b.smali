.class public Lcom/tencent/tme/live/e/j$b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/tme/live/k/e$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/tme/live/e/j;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/tencent/tme/live/e/j;


# direct methods
.method public constructor <init>(Lcom/tencent/tme/live/e/j;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/tme/live/e/j$b;->a:Lcom/tencent/tme/live/e/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2

    sget-object p1, Lcom/tencent/tme/live/e/j;->j:Lcom/tencent/tme/live/e/j;

    iget-object p1, p0, Lcom/tencent/tme/live/e/j$b;->a:Lcom/tencent/tme/live/e/j;

    .line 1
    iget-object p1, p1, Lcom/tencent/tme/live/e/j;->d:Lcom/tencent/tme/live/k/g$a;

    .line 2
    iget-object p1, p1, Lcom/tencent/tme/live/k/g$a;->a:Ljava/lang/String;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "exitRoom mRoomId = %s"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "j"

    invoke-static {v0, p1}, Lcom/tencent/tme/live/t1/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public b(I)V
    .locals 2

    sget-object v0, Lcom/tencent/tme/live/e/j;->j:Lcom/tencent/tme/live/e/j;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u9000\u51fa\u623f\u95f4\u5931\u8d25 "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1
    const-string v0, "j"

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/tencent/tme/live/t1/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
