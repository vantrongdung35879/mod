.class public Lcom/tencent/tme/live/w0/h;
.super Ljava/lang/Object;


# instance fields
.field public a:I

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:I

.field public e:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/tme/live/w0/h;->a:I

    return-void
.end method

.method public static a(Lcom/tencent/protocol/tme/broadcastMsg/OperationMsg;)Lcom/tencent/tme/live/w0/h;
    .locals 3

    new-instance v0, Lcom/tencent/tme/live/w0/h;

    invoke-direct {v0}, Lcom/tencent/tme/live/w0/h;-><init>()V

    iget-object v1, p0, Lcom/tencent/protocol/tme/broadcastMsg/OperationMsg;->msg_content:Lcom/tencent/protocol/tme/commonschema/MultiLang;

    invoke-static {v1}, Lcom/tencent/tme/live/b1/j;->a(Lcom/tencent/protocol/tme/commonschema/MultiLang;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    if-nez v1, :cond_0

    move-object v1, v2

    .line 2
    :cond_0
    iput-object v1, v0, Lcom/tencent/tme/live/w0/h;->e:Ljava/lang/String;

    iget-object v1, p0, Lcom/tencent/protocol/tme/broadcastMsg/OperationMsg;->msgid:Ljava/lang/String;

    if-nez v1, :cond_1

    move-object v1, v2

    .line 4
    :cond_1
    iput-object v1, v0, Lcom/tencent/tme/live/w0/h;->c:Ljava/lang/String;

    iget-object v1, p0, Lcom/tencent/protocol/tme/broadcastMsg/OperationMsg;->msg_type:Ljava/lang/Integer;

    invoke-static {v1}, Lcom/tencent/tme/live/b1/j;->a(Ljava/lang/Integer;)I

    move-result v1

    iput v1, v0, Lcom/tencent/tme/live/w0/h;->d:I

    iget-object v1, p0, Lcom/tencent/protocol/tme/broadcastMsg/OperationMsg;->duration:Ljava/lang/Integer;

    invoke-static {v1}, Lcom/tencent/tme/live/b1/j;->a(Ljava/lang/Integer;)I

    move-result v1

    iput v1, v0, Lcom/tencent/tme/live/w0/h;->a:I

    iget-object p0, p0, Lcom/tencent/protocol/tme/broadcastMsg/OperationMsg;->roomid:Ljava/lang/String;

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    move-object v2, p0

    .line 6
    :goto_0
    iput-object v2, v0, Lcom/tencent/tme/live/w0/h;->b:Ljava/lang/String;

    return-object v0
.end method
