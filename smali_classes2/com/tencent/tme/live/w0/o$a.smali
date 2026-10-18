.class public Lcom/tencent/tme/live/w0/o$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/tme/live/w0/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:I

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:I

.field public f:I

.field public g:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/tme/live/w0/o$a;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/tme/live/w0/o$a;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/tme/live/w0/o$a;->d:Ljava/lang/String;

    const/4 v1, 0x0

    iput v1, p0, Lcom/tencent/tme/live/w0/o$a;->e:I

    iput v1, p0, Lcom/tencent/tme/live/w0/o$a;->f:I

    iput-object v0, p0, Lcom/tencent/tme/live/w0/o$a;->g:Ljava/lang/String;

    return-void
.end method

.method public static a(Lcom/tencent/protocol/tme/broadcastMsg/RoomInfoUpdateNotify;)Lcom/tencent/tme/live/w0/o$a;
    .locals 3

    new-instance v0, Lcom/tencent/tme/live/w0/o$a;

    invoke-direct {v0}, Lcom/tencent/tme/live/w0/o$a;-><init>()V

    iget-object v1, p0, Lcom/tencent/protocol/tme/broadcastMsg/RoomInfoUpdateNotify;->roomid:Ljava/lang/String;

    const-string v2, ""

    if-nez v1, :cond_0

    move-object v1, v2

    .line 2
    :cond_0
    iput-object v1, v0, Lcom/tencent/tme/live/w0/o$a;->d:Ljava/lang/String;

    iget-object v1, p0, Lcom/tencent/protocol/tme/broadcastMsg/RoomInfoUpdateNotify;->priority:Ljava/lang/Integer;

    invoke-static {v1}, Lcom/tencent/tme/live/b1/j;->a(Ljava/lang/Integer;)I

    iget-object v1, p0, Lcom/tencent/protocol/tme/broadcastMsg/RoomInfoUpdateNotify;->room_title:Lcom/tencent/protocol/tme/commonschema/MultiLang;

    invoke-static {v1}, Lcom/tencent/tme/live/b1/j;->a(Lcom/tencent/protocol/tme/commonschema/MultiLang;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    move-object v1, v2

    .line 4
    :cond_1
    iput-object v1, v0, Lcom/tencent/tme/live/w0/o$a;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/tencent/protocol/tme/broadcastMsg/RoomInfoUpdateNotify;->room_type:Ljava/lang/Integer;

    invoke-static {v1}, Lcom/tencent/tme/live/b1/j;->a(Ljava/lang/Integer;)I

    move-result v1

    iput v1, v0, Lcom/tencent/tme/live/w0/o$a;->b:I

    iget-object v1, p0, Lcom/tencent/protocol/tme/broadcastMsg/RoomInfoUpdateNotify;->vid:Ljava/lang/String;

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    move-object v2, v1

    .line 6
    :goto_0
    iput-object v2, v0, Lcom/tencent/tme/live/w0/o$a;->c:Ljava/lang/String;

    iget-object v1, p0, Lcom/tencent/protocol/tme/broadcastMsg/RoomInfoUpdateNotify;->image_url:Lcom/tencent/protocol/tme/commonschema/MultiLang;

    invoke-static {v1}, Lcom/tencent/tme/live/b1/j;->a(Lcom/tencent/protocol/tme/commonschema/MultiLang;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/tme/live/w0/o$a;->g:Ljava/lang/String;

    iget-object v1, p0, Lcom/tencent/protocol/tme/broadcastMsg/RoomInfoUpdateNotify;->show_type:Ljava/lang/Integer;

    invoke-static {v1}, Lcom/tencent/tme/live/b1/j;->a(Ljava/lang/Integer;)I

    move-result v1

    iput v1, v0, Lcom/tencent/tme/live/w0/o$a;->f:I

    iget-object p0, p0, Lcom/tencent/protocol/tme/broadcastMsg/RoomInfoUpdateNotify;->online_num:Ljava/lang/Integer;

    invoke-static {p0}, Lcom/tencent/tme/live/b1/j;->a(Ljava/lang/Integer;)I

    move-result p0

    iput p0, v0, Lcom/tencent/tme/live/w0/o$a;->e:I

    return-object v0
.end method
