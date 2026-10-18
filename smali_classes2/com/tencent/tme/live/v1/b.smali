.class public Lcom/tencent/tme/live/v1/b;
.super Lcom/tencent/tme/live/v1/a;


# instance fields
.field public b:Ljava/lang/StringBuffer;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/tencent/tme/live/v1/a;-><init>()V

    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    iput-object v0, p0, Lcom/tencent/tme/live/v1/b;->b:Ljava/lang/StringBuffer;

    return-void
.end method


# virtual methods
.method public a(Lcom/tencent/tme/live/t1/d;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/tencent/tme/live/v1/b;->b:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    iget-object v0, p0, Lcom/tencent/tme/live/v1/b;->b:Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Lcom/tencent/tme/live/t1/d;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p1, p0, Lcom/tencent/tme/live/v1/b;->b:Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
